class Book
  attr_accessor :title
  def title
    never_capitalize = "the a an and in on up to of over or"
    words = @title.split
    for i in 0..words.length-1
      if words[i] == "i"
        words[i] = words[i].capitalize
      elsif never_capitalize.include? words[i]
        words[i] = words[i].downcase
      else
        words[i] = words[i].capitalize
      end
      words[0] = words[0].capitalize
    end
    words.join(" ")
  end


end
