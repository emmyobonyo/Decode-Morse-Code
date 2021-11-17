MORSE_CODE = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}.freeze

puts 'Please enter a character'
values = gets.chomp

def decode_char(char)
  MORSE_CODE.each do |key, value|
    puts key.to_s if char == value
  end
end

decode_char(values)

puts 'Please enter a group of characters'
words = gets.chomp

def decode_word(word)
  actual_word = []
  array_words = word.split()
  array_words.each do |array_word|
    MORSE_CODE.each do |key, value|
      actual_word.push(key) if array_word == value
    end
  end
  puts actual_word.join
end

decode_word(words)
