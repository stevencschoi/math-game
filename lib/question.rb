class Question
  def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @correct = num1 + num2
    @question = "What is #{num1} + #{num2}?"
  end
end