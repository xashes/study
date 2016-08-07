require "bundler/setup"
require "date"
require "artii"
require "udacicharts"
require "colorize"

puts '*'.colorize(:blue) * 11 + Date.today.strftime('%a %d %b %Y').colorize(:yellow) + '*'.colorize(:blue) * 11

title = Artii::Base.new :font => 'big'
puts title.asciify('Hot 100').colorize(:magenta)

chart = BillboardCharts.new.get_list

chart.each_with_index do |song, index|
  puts "#{index+1}.#{song[1]} - #{song[0]}"
end
