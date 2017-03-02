#!/usr/bin/env bash -x

URL="http://a0.awsstatic.com/pricing/1/ec2/ri-v2/linux-unix-shared.min.js"

(echo 'function callback(data) { console.log(JSON.stringify(data)); }'; curl -s "$URL") |\
  node |\
  jq -r '.config.regions[] |
      select(.region == "us-east-1") |
      .instanceTypes[] |
      [
        .type,
        ( .terms[] | select(.term == "yrTerm1") | .onDemandHourly[].prices.USD ),
        (
          .terms[] | select(.term == "yrTerm1") | .purchaseOptions |
          map(.valueColumns[] | select(.name == "effectiveHourly") | .prices.USD)[]
        ),
        (
          .terms[] | select(.term == "yrTerm3") | .purchaseOptions |
          map(.valueColumns[] | select(.name == "effectiveHourly") | .prices.USD)[]
        )
      ] |
      join("\t")
      '
