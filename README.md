[![Netlify Status](https://api.netlify.com/api/v1/badges/38b7806e-2069-44f0-a377-07a660e6841c/deploy-status)](https://app.netlify.com/sites/roatil/deploys)
![](https://img.shields.io/badge/github/pipenv/locked/python-version/:v3.7/:hoge)
![](https://img.shields.io/badge/python-3.7-blue.svg)
![](https://img.shields.io/badge/sphinx-4.5.0-blue.svg)

[https://roatil.netlify.app](https://roatil.netlify.app)

# roaTIL
以前のTILリポジトリが管理しづらかったため、新たにroaTILとしてリニューアル<br>
roaTILはsphinxで静的サイトとして生成し、それをNetlifyでデプロイ

## 編集方法
編集は、基本的にsourceディレクトリの内のファイルのみ<br>
sourceディレクトリ内にコンテンツ用ディレクトリを作成<br>

### 環境構築
#### リポジトリのクローン
```
git clone https://github.com/sudo-roa/TIL_sphinx.git
```

#### venv環境
pipでインストールしたパッケージ
- sphinx
- myst-parser
- sphinxcontrib-mermaid
- sphinx-press-theme

```
$ python3 -m venv venv
$ source venv/bin/activate
(venv)$ pip install -U pip
(venv)$ pip install -r requirements.txt
```

### build方法
```
(venv)$ sphinx-build docs/source build
```

### Learned tree の生成方法
```
$ ./LeanedTree.sh
```

## 参考
- [Sphinx](https://www.sphinx-doc.org/en/master/)
- [Netlify Docs](https://docs.netlify.com/)

## Author
- [sudo-roa](https://github.com/sudo-roa)
