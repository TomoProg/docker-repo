# 使い方

```
# worldデータベースがインポートされたMariaDBのイメージを作成する
docker build world/ -t world_db

# dockerコンテナ起動
docker run --name world_db -e MARIADB_ROOT_PASSWORD=12345678 world_db

# DBに接続する
docker exec -it world_db mariadb -h localhost -u root -p12345678
```

