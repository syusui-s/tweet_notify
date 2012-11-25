tweet_notify : mikutter用ツイート通知プラグイン
============
##これはなに？
指定したユーザのツイートをmikutterが受信すると、即座にポップアップと通知音で通知するプラグインです。  
ユーザーは、複数指定可能です。地震情報の取得のような用途を想定して作りました。  
が、通知が必ず届くということは保証しません。

##ファイル
* README.md  
この説明書の実体です。
* tweet_notify.rb  
プラグインファイルです。
* spec  
mikutterプラグインとみっくストア用の定義ファイルです。

##インストール
* gitを使う方法  
~/.mikutter/plugin以下で、このリポジトリをgit cloneしてください。  
`$ git clone git://github.com/syusui-s/tweet_notify.git`
* 圧縮ファイルを解凍する方法  
GitHubのDownloads（ページ右上）から圧縮ファイルをダウンロードし、~/.mikutter/plugin/以下に設置してください。  
フォルダ名とプラグインファイル名（拡張子を除く）は、同名でなければなりませんので、
解凍したフォルダ名がプラグインファイル名と異なる場合は、フォルダ名をプラグインファイル名（拡張子を除く）に合わせてください。  

##以前のtweet_notify
GitHubのリポジトリ、[syusui-s/dev-mikutter](https://github.com/syusui-s/dev-mikutter)のコミット履歴をご覧ください。

##謝辞
勝手ながら、  
* toshi-aさんのプラグインの一部の書き方を参考にさせていただきました。  
* katsyoshiさんの[fav.rb](https://github.com/katsyoshi/fav)をほんの一部参考にしています。

##ライセンス
パブリックドメインで公開します。ご自由にておくれてください。
