BEGIN {
  printf "pref"
  PROCINFO["sorted_in"] = "@ind_num_asc"
}

{
  gsub("\"", "", $0)
}

$1 ~ /^[0-9]{2}$/ && $1 !~ /^00$/ {
  # ソートしたいので $1 付与
  population[$1$2][$5]=$7
}

# CSVヘッダー西暦表示
$5 ~ /^[0-9]{4}$/ && !head[$5]++ {
  printf "," $5
}

END {
  for (i in population) {
    # 都道府県
    printf "\n" substr(i, 3)
    for (j in population[i]) {
      # 人口
      printf "," population[i][j]
    }
  }
}
