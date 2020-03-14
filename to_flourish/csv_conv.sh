#!/bin/bash

# 国勢調査 時系列データ CSV形式による主要時系列データ
# https://www.e-stat.go.jp/stat-search/files?page=1&layout=datalist&toukei=00200521&tstat=000001011777&cycle=0&tclass1=000001094741
#
# を整形して
# https://app.flourish.studio/visualisation/1570076/
# で利用する
# git bash で実行可能
#
# author: kikudai


iconv -f sjis c01.csv | gawk -F',' -f csv_conv.awk | tee after_a01.csv
