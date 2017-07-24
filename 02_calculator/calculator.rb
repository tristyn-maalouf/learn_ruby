def add(n1,n2)
  n3=n1+n2
end
def subtract(n1,n2)
  n3=n1-n2
end

def sum(arr)
  n=0
  if arr.length == 0
    n
  else
    i=0
    for i in 0..arr.length-1
      s=arr[i].to_i
      n=n+s
      i=i+1
    end
    return n
  end
end

def multiply(arr)
  i=0
  n=arr[0].to_i
  for i in 1..arr.length-1
    s=arr[i].to_i
    n=n*s
    i=i+1
  end
  return n
end

def power(n1,n2)
  n1**n2
end

def factorial(n)
  if n == 0 || n == 1
    return 1
  else
    sum = n
    for i in 1..n-1
      sum=sum*i
    end
    return sum
  end
end
