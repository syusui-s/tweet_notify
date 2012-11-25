tweet_notify : mikutter用ツイート通知プラグイン
============
##これはなに？
指定したユーザのツイートをmikutterが受信すると、即座にポップアップと通知音で通知するプラグインです。  
ユーザーは、複数指定可能です。地震情報の取得のような用途を想定して作りました。  
が、通知が必ず届くということは保証しません。  
core/plugin/notify.rbに依存している部分があります。

##ファイルについて
* LICENSE  
ライセンスです。
* README.md  
この説明書の実体です。
* tweet_notify.rb  
プラグインファイルです。
* spec  
mikutterプラグインとみっくストア用の定義ファイルです。

##インストールおよびアンインストール
* gitを使う方法  
~/.mikutter/plugin/以下で、このリポジトリをgit cloneしてください。  
`$ git clone git://github.com/syusui-s/tweet_notify.git`
* 圧縮ファイルを解凍する方法  
GitHubのDownloads（ページ右上）から圧縮ファイルをダウンロードし、~/.mikutter/plugin/以下に設置してください。  
フォルダ名とプラグインファイル名（拡張子を除く）は、同名でなければなりませんので、
解凍したフォルダ名がプラグインファイル名と異なる場合は、フォルダ名をプラグインファイル名（拡張子を除く）に合わせてください。  
* アンインストール  
~/.mikutter/plugin/からtweet_notifyを削除してください。

##以前のtweet_notify
GitHubのリポジトリ、[syusui-s/dev-mikutter](https://github.com/syusui-s/dev-mikutter)のコミット履歴をご覧ください。

##謝辞
勝手ながら、mikutter/core/plugin/notify.rbを参考にさせていただきました。  

##ライセンス
mikutterのソースコードの一部を参考にしていますので、本ソフトウェアのバージョン1.2よりGPLv3で公開します。別途LICENSEをご覧ください。

tweet_notify.rb - tweet notify plug-in for mikutter  
Copyright (C) 2012 syusui_s  
This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.  
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.  
You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>.

tweet_notify.rb - mikutter用ツイート通知プラグイン  
Copyright (C) 2012 syusui_s  
このプログラムはフリーソフトウェアです。あなたはこれを、フリーソフトウェア財団によって発行されたGNU 一般公衆利用許諾書(バージョン3か、 それ以降のバージョンのうちどれか)が定める条件の下で再頒布または改変することができます。  
このプログラムは有用であることを願って頒布されますが、*全くの無保証 *です。商業可能性の保証や特定目的への適合性は、言外に示されたものも 含め、全く存在しません。詳しくはGNU 一般公衆利用許諾書をご覧ください。  
あなたはこのプログラムと共に、GNU 一般公衆利用許諾書のコピーを一部受け取っているはずです。もし受け取っていなければ、<http://www.gnu.org/licenses/> をご覧ください。

