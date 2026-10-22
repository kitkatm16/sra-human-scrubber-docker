FROM ncbi/sra-human-scrubber:2.2.1

USER root

RUN apt-get update \
    && apt-get install -y apt-utils procps \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/usr/bin:/opt/scrubber/bin:/opt/scrubber/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/sbin:/bin"

ENTRYPOINT []
CMD ["bash"]
