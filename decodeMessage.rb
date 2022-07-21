def decode_char(singleChar)
    dict = {
      'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
      'F' => '..-.', 'G' => '--.', 'H' => '....',
      'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
      'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
      'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
      'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
      'Y' => '-.--', 'Z' => '--..'
    }
    dict.key(singleChar)
  end
  
  def decode_word(word)
    array = word.split
    decoded = []
    array.each { |letter| decoded.insert(decoded.length, decode_char(letter)) }
    decoded.join
  end
  
  def decode_msg(msg)
    array = msg.split('   ')
    decoded = []
    array.each { |word| decoded.insert(decoded.length, decode_word(word)) }
    decoded.join(' ')
  end
  
print decode_msg('-... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
