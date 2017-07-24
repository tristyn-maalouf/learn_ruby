def translate(str1)

  arrOfWords = str1.split(" ")
  finalStr = ""
  for j in 0..arrOfWords.length-1
    str = arrOfWords[j]
    while str[0] != 'a' && str[0] != 'e' && str[0] != 'i' && str[0] != 'o' && str[0] != 'u' do
      temp = str[0]
      for i in 0..str.length-2
        str[i] = str[i+1]
      end
      if temp == 'q'
        qu = "qu"
        for i in 0..str.length-2
          str[i] = str[i+1]
        end
        str[str.length-2] = "q"
        str[str.length-1] = "u"
      else
        str[str.length-1]=temp
      end
    end
    str = str + "ay"
    arrOfWords[j]=str
    finalStr = finalStr + arrOfWords[j] + " "
  end

  finalStr.chop


end
