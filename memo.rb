require "csv"

puts "新規メモを作成する → 1\r\n既存メモを編集する → 2"
memo_type = gets.chomp.to_i

if memo_type == 1
puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"

file_name = gets.chomp

puts "メモの内容を記入して下さい。Ctrl+Dで保存します。"

memo = STDIN.read

CSV.open("#{file_name}.csv","w") do |csv|
csv << ["#{memo}"]
end

elsif memo_type == 2
puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
file_name = gets.chomp

puts "メモの内容を記入して下さい。Ctrl+Dで保存します。"

memo = STDIN.read

CSV.open("#{file_name}.csv","a") do |csv|
csv << ["#{memo}"]
end
end
