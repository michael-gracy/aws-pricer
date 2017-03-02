# aws-pricer.sh
Simple bash script that produces a table of the latest prices from AWS EC2 for a specific region. Currently hard-coded for US-EAST-1.
This may run on Windows if you have some kind of unix type tools installed like [Cygwin](http://www.cygwin.com/)


## Requirements:
+ Unix like environment: Linux, OSX, Cygwin(untested), Windows 10 Linux Support(untested).
++ For OSX use [Brew](https://brew.sh/) to get needed tools.
+++ **Understand that last I checked, Brew still may have issues working on OSX 10.12 Sierra...YMMV. Check the website and forums first.**
+ You will need [jq](https://stedolan.github.io/jq/), this only runs in 64-bit environments.
++ This is available in Brew on OSX.
+ You will need [Node.js](https://nodejs.org/en/download/), again, 64-bit only.
++ Node is available via Brew for OSX.
++ Windows 7/8/10 x64 users download [Node.js here](https://nodejs.org/en/download/)
++ Linux users check your repo as you may have it there


## Setup:
1. Download or git clone the repo.
1. Install the required tools making sure that they are available in your `$PATH` somewhere.
  1. If you don't know how to add something to your `$PATH`, Google something like `Add to my $PATH in` and put your operating system at the end of the search query.
1. Make the file executable with `chmod u+x awspricer.sh` or `chmod 0755 awspricer.sh`
1. **No, there is no windows batch file version**,but there is a powershell version some where here on GitHub.
