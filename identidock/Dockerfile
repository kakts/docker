FROM python:3.4


# uswgiというグループ・ユーザを作成
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

# Flask uWSGI pip install
RUN pip install Flask==0.10.1 uWSGI==2.0.8

# コマンド実行時の作業ディレクトリ指定
WORKDIR /app

# ./appをコンテナ内にあるファイルシステムの/appにコピーする
COPY app /app

# 解放するポートを明示的に指定
EXPOSE 9090 9191
# これ以降のすべての行の実行ユーザをuwsgiに設定する
USER uwsgi

# uWSGIを実行する新たなコマンドを生成する
# uWSGIに対して、9090ポートで待ち受けるhttpサーバを起動させる。 /app/identidock.pyからappというアプリを実行させる
# 9191でstatsサーバも起動する
CMD ["uwsgi", "--http", "0.0.0.0:9090", "--wsgi-file", "/app/identidock.py", "--callable", "app", "--stats", "0.0.0.0:9191"]
