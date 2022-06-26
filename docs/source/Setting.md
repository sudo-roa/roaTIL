# Learned Stackの設定

Learned Stackの設定全般について

## sphinxの必要ライブラリ

必要ライブラリの列挙とそれらのインストール方法

```bash
$ pip install -U sphinx
$ pip install -U myst-parser
$ pip install sphinxcontrib-mermaid
```

### 利用しているsphinxの設定 

markdownの有効化<br>
LearnedStackの書き方の中のmarkdownインストール方法を参照<br>
mermaidの有効化<br>
LearnedStackの書き方の中のmermaidインストール方法を参照<br>
(※ドキュメント間のリンク方法がわからないのでリンクなし。)

<!-- end以外にセミコロンをつけないとエラーが起きる -->
<!-- できるだけ先に定義をして、最後に関係を記述 -->
## Learned Stackのサイト構造
Learned Stackのリポジトリ構造の説明

```{mermaid}
flowchart TD;
	subgraph Manage[管理事項];
		LearnedTree[Learned Tree];
		HowtoWrite[書き方];
		Setting[設定];
		LearnedTree --- HowtoWrite --- Setting;
	end

	subgraph Contents[コンテンツ];
		ContentWriteRule[コンテンツ記述ルール];
		ContentWriteRule --- Content;
		subgraph Content;
			content1;
			content2;
			content3[...];
		end
	end

	subgraph DailyStack;
		DailyStackWriteRule[デイリースタック記述ルール];
		DailyStackWriteRule --> DailyStackContent;
		subgraph DailyStackContent;
			contentA[ex 20200202];
			contentB[ex 20200604];
			contentC[YYYYMMDD<br>...<br>...];
		end
	end

    Home([HOME]) --> menu{menu};
	menu --> Manage[管理事項];
	menu --> Contents[コンテンツ];
	menu --> DailyStack;
	
```

## Github repository

プライベートリポジトリ<br>
[リポジトリ](https://github.com/sudo-roa/TIL_sphinx)
