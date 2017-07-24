def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n)
  s=str
  n = n - 1
  n.times do
    s = s + " " + str
  end
  return s
end

def start_of_word(str,n)
  return str[0..n-1]
end

def first_word(str)
  string = str.split(' ')
  return string[0]
end

def titleize(str)
  s = str.split.map(&:capitalize)*" "
  for i in 1..s.length
    if s[i] == "A"
      if s[i+1]=="n" && s[i+2]=="d"
        s[i] = s[i].downcase
      end
    elsif s[i] == "O"
      if s[i+1]=="v" && s[i+2]=="e" && s[i+3]=="r"
        s[i] = s[i].downcase
      end
    elsif s[i] == "T"
      if s[i+1]=="h" && s[i+2]=="e"
        s[i] = s[i].downcase
      end
    end
  end
  return s
end
