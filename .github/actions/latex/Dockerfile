FROM ubuntu:20.04

RUN apt-get update \
  && apt-get install -y tzdata \
  && apt-get install -y --no-install-recommends \
    curl \
    python3 \
    latexmk \
    lmodern \
    texlive \
    texlive-latex-extra \
    texlive-lang-japanese \
    texlive-lang-cjk \
    xdvik-ja \
    evince \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-science \
    ghostscript \
  && rm -rf /var/lib/apt/lists/*

RUN mktexlsr && mkdir -p /app
WORKDIR /app

ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
