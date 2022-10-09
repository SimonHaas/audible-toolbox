# audible-toolbox

A collection of scripts packaged as a docker image to help you backup your audible books.

## usage

```
git clone --recurse-submodule https://github.com/SimonHaas/audible-toolbox.git
cd audible-toolbox
docker build . -t aaxtomp3
```
place aax file in audiobook-folder

to get your activation-code

```
docker run --rm -it -v ${PWD}/audiobook:/audiobook aaxtomp3 /activationCodeGetter /audiobook/<YOUR-BOOK>.aax
```

use your activation-code to convert audiobook

```
docker run --rm -it -v ${PWD}/audiobook:/audiobook aaxtomp3 /AAXtoMP3 -A <ACTIVATION-CODE> /audiobook/<YOUR-BOOK>.aax
```
