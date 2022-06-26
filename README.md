# TIL_sphinx

TILをsphinxを使ってWebサイト化

## raspberry pi での編集方法

編集するのは、sourceディレクトリの中のみ<br>
sourceディレクトリ内にコンテンツ用ディレクトリを作成<br>

## 編集方法
リポジトリのクローン

```
git clone https://github.com/sudo-roa/TIL_sphinx.git
```

venv環境の作成
```
$ python -m venv venv
$ source venv/bin/activate
(venv)$ pip install sphinx
(venv)$ pip install myst-parser
(venv)$ pip install sphinxcontrib-mermaid
```

