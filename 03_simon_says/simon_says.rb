#write your code here

def echo(say)
  say
end

def shout(word)
  word.upcase
end

def repeat(word, count=2)
  result = word
  while count > 1
    p word
    result += " #{word}"
    count -= 1
  end
  result
end

def start_of_word(word, count)
  word.slice(0, count)
end

def first_word(word)
  word.split(" ").first
end

def titleize(word)
  result = word.split(" ")
  result[0].capitalize!
  result.each do |w|
    w.capitalize! if (w != 'the'  and w != 'and' and w != 'over')
  end
  result.join(" ")
end

