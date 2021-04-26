class Question

  attr_accessor :correct_answer
  
  def question (name)
    num1 = rand(1..20)
    num2 = rand(1..20)
    @correct_answer = num1 + num2
    puts "#{name}: What does #{num1} + #{num2} equal?\n\n"
    
  end


end
