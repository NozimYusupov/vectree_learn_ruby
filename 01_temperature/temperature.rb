#write your code here

def ftoc(t)
  ((t - 32) / (9/5.0)).round
end

def ctof(t)
  ((9/5.0) * t + 32).round(1)
end
