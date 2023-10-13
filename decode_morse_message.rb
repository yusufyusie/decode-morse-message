# Here is a method in Ruby that decodes a Morse code character and returns the corresponding character in uppercase.
# I use this method to help you decode a Morse code message.

# Example:
# decode_char('...') => 'S'
# decode_char('-.-.') => 'C'
def decode_char(morse_code)
  morse_code_dict = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code_dict[morse_code] || '[UNKNOWN]'
end

# Here is a method in Ruby that decodes an entire word in Morse code.

def decode_word(word)
  word.split.map { |code| MORSE_CODE_DICT[code] }.join
end

# Here is a method in Ruby that decodes an entire sentence in Morse code.

def decode_sentence(sentence)
  words = sentence.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end
# Morse code dictionary
MORSE_CODE_DICT = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# Here is a method in Ruby that decodes an entire message in Morse code.
puts decode_char('.-')
puts decode_char('-...')
puts decode_word('-- -.--   -. .- -- .')
puts decode_sentence('-- -.--     -. .- -- .')
puts decode_sentence('.-    -...  --- -..-    ..-. ..- .-.. .-..    --- ..-.    .-. ..- -... .. . ...')
