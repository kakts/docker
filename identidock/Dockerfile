FROM python:3.4


# uswgiというグループ・ユーザを作成
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

# Flask uWSGI pip install
RUN pip install Flask==0.10.1 uWSGI==2.0.8

# コマンド実行時の作業ディレクトリ指定
WORKDIR /app

# ./appをコンテナ内にあるファイルシステムの/appにコピーする
COPY app /app
COPY cmd.sh /

# 解放するポートを明示的に指定
EXPOSE 9090 9191
# これ以降のすべての行の実行ユーザをuwsgiに設定する
USER uwsgi

CMD ["/cmd.sh"]
