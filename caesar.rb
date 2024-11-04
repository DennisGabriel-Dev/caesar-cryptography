text = File.read(ARGV[0])

alphabet = ('a'..'z').to_a


key = ARGV[1].to_i

option = ARGV[2]

result = ''

is_valid = (option == 'dec') || (option == 'enc') 

text.split('').each do |letter|
  if alphabet.include? letter
    posix = alphabet.index letter
    result += if option == 'enc'
                alphabet[(posix + key) % 26]
              elsif option == 'dec'
                alphabet[(posix - key) % 26] 
              end
  else
    result += letter
  end
end if is_valid

puts result
