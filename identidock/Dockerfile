FROM python:3.4

RUN pip install Flask==0.10.1

# コマンド実行時の作業ディレクトリ指定
WORKDIR /app

# ./appをコンテナ内にあるファイルシステムの/appにコピーする
COPY app /app

CMD ["python", "identidock.py"]
