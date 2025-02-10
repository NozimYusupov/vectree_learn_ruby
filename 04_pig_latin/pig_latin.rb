#write your code here

def pig_latin(word)
  vowel = ['a', 'e', 'i', 'u', 'o']
  not_alphabet = ['ch', 'sh', 'th', 'qu', 'zh', 'br', 'qu']
  three = ['thr', 'sch', 'squ']
  start_three = three.include?(word[0..2])
  start_not_alphabet = not_alphabet.include?(word[0..1])
  if vowel.include? word[0]
    result = word += 'ay' 
  elsif start_three    
    result = word.slice(3, word.length-1) + word[0]+word[1] + word[2] + 'ay'
  elsif start_not_alphabet 
    result = word.slice(2, word.length-1) + word[0]+word[1] + 'ay'
  else
    result = word.slice(1, word.length-1) + word[0] + 'ay'
  end
  result
 
end

def translate(words)
  result = []
  words.split(" ").each do |word|
    p word
    result << pig_latin(word)
  end
  result.join(" ")
end

p translate('three ball')
