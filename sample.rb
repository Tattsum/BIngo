require 'readline'

def notification(message, title='Bingo Machine', subtitle='', sound='Glass')
  [message, title, subtitle, sound].each{|arg| arg.gsub!(/"/, '\\\\\"')}

  scpt = 'display notification "%s"' % message
  scpt << ' with title "%s"' % title
  scpt << ' subtitle "%s"' % subtitle unless subtitle.empty?
  scpt << ' sound name "%s"' % sound unless sound.empty?

  system %|osascript -e "#{scpt.gsub(/"/, '\"')}"|
  sleep 0.5
  system %|osascript -e "say #{message}"|
end

a = (1..75).to_a.shuffle

print('> Press enter to start!', "\n")
a.each { |num|
  buf = Readline.readline('> ', true)
  break if buf == 'q'
  print('> ', num, "\n")
  notification num.to_s
}
print("\n", '> Finish!', "\n")
