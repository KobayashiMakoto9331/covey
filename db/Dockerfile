FROM mysql:5.7

COPY /test_databases/*.sql /test_databases/

# テストデータベース作成用のスクリプトをコンテナへコピー
COPY /test_databases/init_db.sh /docker-entrypoint-initdb.d/

# このフォルダにファイルをコピーして実行権限を付与しておけばmysql起動時に自動実行してくれる
RUN chmod +x /docker-entrypoint-initdb.d/init_db.sh

CMD ["mysqld", "--default-time-zone=Asia/Tokyo"]
