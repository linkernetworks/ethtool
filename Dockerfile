FROM alpine:3.7
RUN apk update && apk add --no-cache ethtool bash
COPY ethtool.sh ./
RUN chmod +x ./ethtool.sh


