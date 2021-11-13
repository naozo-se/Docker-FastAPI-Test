# 3.6以降なら大丈夫みたい
FROM python:3.9-slim-buster

# pipのupgrade (Warning出るけど、お気になさらずに...)
RUN pip install -U pip

# fastapiとuvicornのインストール
RUN pip install fastapi uvicorn

# ポートはデフォルトの8000で利用
EXPOSE 8000

# デフォルトのディレクトリ設定
WORKDIR /app

# サーバー起動
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
