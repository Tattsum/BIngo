# 番兵(NONWORD)を定義
NONWORD = "\n"

# 標準入力から文章を取得。先頭と末尾に番兵を配置し
# 後処理を単純化
text = [NONWORD, NONWORD] +  STDIN.read.split + [NONWORD]

# == 入力フェーズ
# プレフィクスをキーとし、サフィックスをバリューとするハッシュ配列を作成
# text内の連続する2ワードがプレフィックス。それに続く1ワードがサフィックス
# となるのでtextを3つずつに分割してeachで回す。
h = {}
text.each_cons(3).each do |pre_suf|
  suffix = pre_suf.pop
  prefix = pre_suf
  h[prefix] ||= []
  h[prefix] << suffix
end

# == 出力フェーズ
# 初期値をNONWORDに設定し、それをキーとしてランダムにサフィックスを表示する。
# プレフィクスの先頭を削除、表示したサフィックスを末尾に追加、次のキーとする。
# 上記をサフィックスにNONWORDがくるまで繰り返す。
prefix = [NONWORD, NONWORD]
loop do
  break if h[prefix].last == NONWORD

  suffix = h[prefix][rand(h[prefix].size)]

  print("#{suffix} ")

  prefix.delete_at(0)
  prefix << suffix
end
puts
