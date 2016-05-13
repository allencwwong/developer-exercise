class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)


    words = str.split(" ")

    words.each_with_index do |word,index|     
      if word.length > 4 && word == word.capitalize 
        if word.include? "?"
        # puts "state1"
        words[index] = "Marklar?"
        elsif word.include? "."
          words[index] = "Marklar."
        else
          words[index] = "Marklar"
        end

      elsif word.length > 4

        if word.include? "?"
        words[index] = "marklar?"
        elsif word.include? "."
          words[index] = "marklar."
        else
          words[index] = "marklar"
        end

      end
    end
      words.join(" ")
    
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  def self.even_fibonacci(nth)

    even_fib = 0
    i=0
    sum=1
    start = 0
    while i < nth-1
      sum += start
      start =  sum - start 
      if sum%2 == 0
        even_fib+= sum
      end
      i+=1
    end

  return even_fib
    
  end 


end
