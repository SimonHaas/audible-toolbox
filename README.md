# audible-toolbox

A collection of scripts packaged as a docker image to help you backup your audible books.

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
