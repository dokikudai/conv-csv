# 都道府県別人口推移のCSVをflourish表示できるCSVに変換

[国勢調査 時系列データ CSV形式による主要時系列データ | ファイル | 統計データを探す | 政府統計の総合窓口](https://www.e-stat.go.jp/stat-search/files?page=1&layout=datalist&toukei=00200521&tstat=000001011777&cycle=0&tclass1=000001094741)
のデータをflourishに利用できるように整形するスクリプトです。

## 利用方法
シェルスクリプト（bash）を利用しています。  
git bashでも実行できます。

gitのインストールは、こちら。  
[Git - Downloads](https://git-scm.com/downloads)

### flourish用CSV作成手順
```
git clone https://github.com/dokikudai/conv-csv.git

cd conv_csv/to_flourish

# curlコマンドがある方はさくっと以下でダウンロード
# ない方は以下URLより手動ダウンロードし、conv_csv/to_flourish/ に配置する
# https://www.e-stat.go.jp/stat-search/file-download?statInfId=000031524010&fileKind=1
curl -H "Referer: https://www.e-stat.go.jp" \
  "https://www.e-stat.go.jp/stat-search/file-download?statInfId=000031524010&fileKind=1" > c01.csv

bash ./csv_conv.sh

# 以下のcsvファイルが作成されるので flourish で利用
ls -al ./after_c01.csv
```

### Let's go flourish
https://flourish.studio/

## 参考
以下は after_c01.csv を取り込んだ flourish サンプルです。  
https://public.flourish.studio/visualisation/1570076/  
このflourishデータは自由にコピペ（Duplicate and edit）していただいて構いません。
