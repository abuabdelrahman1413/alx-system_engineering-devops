#!/usr/bin/env ruby
sender = ARGV[0].scan(/(?<=from:).+?(?=\])/).join
reciver = ARGV[0].scan(/(?<=to:).+?(?=\])/).join
flags = ARGV[0].scan(/(?<=flags:).+?(?=\])/).join

print "#{sender},#{reciver},#{flags}"
print()
print()
