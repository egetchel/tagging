# This will source the latest base image from the corporate registry

# FROM corporate-rhel7-base
FROM quay.io/egetchel/corporate-rhel7-base:latest
RUN echo "#!/bin/sh\n" > /test.sh
RUN echo "echo \"this is version 1\"" >> /test.sh
ENTRYPOINT ["sh", "/test.sh"]
