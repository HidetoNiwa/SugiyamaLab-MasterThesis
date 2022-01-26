FROM ubuntu:latest

# 参考：https://northshorequantum.com/archives/dockerbuild_tz_hang.html
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
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
    ghostscript \
  && rm -rf /var/lib/apt/lists/*

RUN mktexlsr && mkdir -p /app
WORKDIR /app

ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
