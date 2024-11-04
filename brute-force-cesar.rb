text = File.read(ARGV[0])

alphabet = ("a".."z").to_a

alphabet.each_with_index do |_, key|
  result = ""
  key += 1
  puts "Key: #{key}"
  text.split("").each do |letter|
    if alphabet.include? letter
      posix = alphabet.index letter
      result += alphabet[(posix - key) % 26]
    else
      result += letter
    end
  end
  puts result
end
