# 明日やろうは馬鹿野郎で煽るプログラム

ary = ["明日", "やろうは", "馬鹿", "やろう"]
num = Random.new
str = String.new
while true
  str += ary[num.rand(0..3)]
  print ary[num.rand(0..3)]

  break if str =~ /明日やろうは馬鹿やろう/
end

puts ""
puts "_人人人人人人人人人人人人人_"
puts " >明日やろうは馬鹿やろう< "
puts "￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣"

puts "#{str.length} 文字で煽られました．"
