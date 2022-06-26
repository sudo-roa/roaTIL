# 記述ルール

Learned Stackの記述ルール

## ファイルの命名規則

Learned Stackにおける各ファイルの命名及びディレクトリ配置について

### マークダウンファイル
7月に入ったら月毎にディレクトリを作ることを考える<br>
特に特別なことがない限り<br>
./YYYYMMDD.md とする<br>

### 画像ファイル
画像には利用するマークダウンファイルと同じ年月日とnumberをつける<br>
./image/YYYYMMDD-{n}.拡張子<br>
拡張子は基本的にpng<br>

markdownで書かないと_imageディレクトリが作成されない<br>
`![alt](./image/20220605-1.png)`<br>
これだと_imageディレクトリにアクセスでき、幅を360にできる<br>
`<img src="../_images/20220605-1.png" width="360">`<br>
だったらmarkdownタグで画像を入れて、imgタグ全体のサイズを360に変えるとか？<br>

venv/lib/sphinx_press_themne/static/sphinx_press_theme.cssに<br>
img{width:360px;}を追加した。

## 順序
#. DailyStack内にその日の年月日のmarkdownファイルを作成する
#. DailyStack/index.rst内に目次を作成する
#. 基本的にフォーマットに沿って文書を作成する
    #. 調べ物
    #. ハンズオン
    #. ...


## フォーマット

いずれのフォーマットでも必ず入れる項目
- 題名
- 参考
- 検索用キーワード

### 調べ物

```
# YYYY/MM/DD

## [TOPIC]

[TOPIC]に内容を入れ、その概要をここに記載

### 調査内容...1

### 調査内容...(n)

### まとめ

## 検索用タグ

## 参考
```

### ハンズオン

```
# YYYY/MM/DD

## [TOPIC]

[TOPIC]に内容を入れ、その概要をここに記載

### 前提知識等

### コード

### 実際に使った様子（画像等）

### まとめ

## 検索用タグ

## 参考

```

