<!-- 
このサイトで使える記述法の説明とその大まかな設定について
- reStructuredText
- markdown
- mermaid
 -->

# Learned Stackの書き方

このサイトで使える記述法の説明、用途及びおおまかな設定について<br>
- reStructuredText
- Markdown
- mermaid

## reStructuredText

Sphinxで標準となっているマークアップ言語で、特に設定をせずに使用することができる<br>
reStructuredTextでは目次機能を容易に利用できるため、主に目次の生成に利用する<br>

### reStructuredTextの記述方法

| 要素 | 構文 |
| --- | --- |
| H1 | === |
| H2 | --- |
| H3 | ^^^ |

````
```
.. toctree::
   :maxdepth: 1
   :caption: Content
   hoge
   huga
   example

```
````

### reStructuredTextの参考

- [sphinx reStructuredText入門](https://www.sphinx-doc.org/ja/master/usage/restructuredtext/basics.html)



## Markdown

Githubなどで特に書き慣れた(筆者の個人的な話)マークアップ言語で、拡張機能を利用することにより使用できる<br>
Markdownは主に、コンテンツ本文の記述に利用する<br>

### Markdownインストール方法

MySTという拡張機能を利用することでMarkdownでの記述が可能になる<br>
`$ pip install myst-parser`

### SphinxでMySTを有効にする方法

conf.pyファイルに以下の記述をする<br>

```python 
extensions = ["myst_parser"]

source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}
```

これによりMySTパーサーの拡張機能が有効になり、.mdの拡張子をもつドキュメントが全て解析される

### Markdownでの記述方法

| 要素 | 構文 |
| --- | --- |
| H1 | # |
| H2 | ## |
| H3 | ### |
| H4 | #### |
| H5 | ##### |
| H6 | ###### |
| 太字 | \*\*bold\*\* |
| イタリック | \*italic\* |
| インラインコード | \`code\` |
| 引用 | \> quote |
| テーマ別ブレイク | --- |
| 自動リンク | \<https://github.com\> |
| URLリンク | \[github\]\(https://github.com\) |
| 画像リンク | \!\[alt\]\(https://github.com\) |
| リンク定義 | [link]: https://github.com |
| 参照リンク | [title][link] |
| 順序付きリスト | 1. item <br> 2. item |
| 順序なしリスト | - item <br> - item |
| コード | \`\`\`lang <br> hogehoge <br> \`\`\` |
| コメント | \% comment |

### Markdownの参考

- [MySt](https://myst-parser.readthedocs.io/en/latest/)

## Mermaid
notionやgithubで使い慣れているとともに<br>
学習内容の記録の際にDiagramの挿入ができると表現の幅が広がる<br>

### Mermaidインストール方法
sphinxcontrib.mermaidによってMySTを利用してMermaidを使用できるように拡張できる<br>

`pip install sphinxcontrib-mermaid`

### 有効にする方法

conf.py
```python
extensions = [
    "myst-parser",
    "sphinxcontrib.mermaid",
]
```

### Mermaidの記述例

````
```{mermaid}
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
````

```{mermaid}
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

### mermaidの参考

- [mermaid](https://mermaid-js.github.io/mermaid/#/)