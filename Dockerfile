FROM alpine:edge
LABEL maintainer="@singe at SensePost <research@sensepost.com>"
ENTRYPOINT [ "nsenter", "-t", "1", "-m", "-u", "-n", "-i", "--", "sh", "-c" ]
