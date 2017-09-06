# 明日やろうは馬鹿野郎で煽るプログラム

ary = ["進捗", "は", "どうですか", "？"]
num = Random.new
str = String.new
while true
  str += ary[num.rand(0..3)]
  print ary[num.rand(0..3)]

  break if str =~ /進捗はどうですか？/
end

puts ""
puts "_人人人人人人人人人人人人人_"
puts " >進捗はどうですか？< "
puts "￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣"

puts "#{str.length} 文字で煽られました．"
