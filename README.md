# audible-toolbox

A collection of scripts packaged as a docker image to help you convert and backup your audible books.

linux/arm64 image does not work yet, use `--platform linux/amd64` on apple silicon.

## usage

place aax file in audiobook-folder

to get your activation-code

```
docker run --rm -it -v ${PWD}/audiobook:/audiobook ghcr.io/simonhaas/audible-toolbox /activationCodeGetter /audiobook/<YOUR-BOOK>.aax
```

use your activation-code to convert audiobook

```
docker run --rm -it -v ${PWD}/audiobook:/audiobook ghcr.io/simonhaas/audible-toolbox /AAXtoMP3 -A <ACTIVATION-CODE> /audiobook/<YOUR-BOOK>.aax
```
