# editor-plugin-example

コンテナ内でプラグインにより個人が開発で使用する設定をインストールするexampleリポジトリです．  
開発メンバーが個人でプラグインを作成し，各々で開発の効率化を図ることを想定しています．  
具体例として，fzfをインストールし，tmux, gitのコンフィグを変更するスクリプトを掲載しています．  
特に，コンテナ内でコードが誰の作業によって変更されたかをトラックするため，各メンバーでgitconfigを設定することを推奨します．  

**注意：publicリポジトリのため，機密情報をこのリポジトリに載せないこと**

## 概要
- `sudo USER=[ユーザー名] ./[設定したシェルスクリプト]`がコンテナにより実行されるため，setup.shがコンテナ内で実行されたときに開発環境がインストールされるようにスクリプトを記入してください．
- setup.sh内部の`su $USER -c './as_user.sh'`のような記述により，ユーザー権限で走らせたい処理をプログラムすることができます．

## 例として行っている処理
### setup.sh
- sudo権限によりgit, vimをインストール
- user権限でas_user.shを起動

### as_user.sh
- tmuxのコンフィグを変更（prefixキーをctrl-wに変更）
- fzfのインストール（ターミナルの履歴機能を強化する）
