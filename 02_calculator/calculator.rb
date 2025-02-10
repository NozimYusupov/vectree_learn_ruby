#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  array.each do |el|
    sum += el
  end
  sum
end

def multiply(a, *array)
  mult = 1 * a
  p array
  array.each { |el| mult *= el}
  mult
end

def power(a, b)
  a ** b
end

def factorial(num)
  return 1 if num == 0
  return 1 if num == 1
  factorial(num - 1) * num
end

