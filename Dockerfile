FROM ubuntu

LABEL org.opencontainers.image.authors="me@simonhaas.eu"

RUN apt-get update && apt-get install -y \
    ffmpeg \
    x264 \
    x265 \
    bc \
    mediainfo\
 && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 -r aaxtomp3 && useradd --no-log-init -r -g 1000 -u 1000 aaxtomp3

COPY ./AAXtoMP3/AAXtoMP3 /AAXtoMP3
COPY ./AAXtoMP3/interactiveAAXtoMP3 /interactiveAAXtoMP3
COPY ./tables /tables
COPY ./activationCodeGetter /activationCodeGetter

RUN chmod +x /AAXtoMP3
RUN chmod +x /interactiveAAXtoMP3
RUN chmod +x /activationCodeGetter
RUN touch /output.txt

RUN chown aaxtomp3:aaxtomp3 /AAXtoMP3
RUN chown aaxtomp3:aaxtomp3 /interactiveAAXtoMP3
RUN chown -R aaxtomp3:aaxtomp3 /tables
RUN chown aaxtomp3:aaxtomp3 /activationCodeGetter
RUN chown aaxtomp3:aaxtomp3 /output.txt

USER aaxtomp3

CMD ["/AAXtoMP3", "--help"]