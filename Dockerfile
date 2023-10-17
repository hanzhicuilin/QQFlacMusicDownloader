FROM registry.cn-hangzhou.aliyuncs.com/music_downloader/qq_flac_music_downloader:latest

LABEL name="QQFlacMusicDownloader"


WORKDIR /workspace

COPY ./ .

RUN pip3 install --no-cache-dir --upgrade pip -i https://mirrors.bfsu.edu.cn/pypi/web/simple && \
    pip3 install --no-cache-dir -r requirements.txt -i https://mirrors.bfsu.edu.cn/pypi/web/simple

EXPOSE 8899

CMD ["python3", "MainServer.py"]
