class Book
# write your code here

  def title
    @title = titleize(@title)
  end

  def title=(name)
    @title = name
  end


  def titleize(word)
    small_word = ['the', 'and', 'over', 'a', 'an', 'in', 'of', 'am']
    result = word.split(" ")
    result[0].capitalize!
    result.each do |w|
      w.capitalize! if !small_word.include? w 
    end
    result.join(" ")
  end
end

