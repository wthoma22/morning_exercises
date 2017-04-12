class Stack
  class UnderFlowError < StandardError;end

  def initialize
    @stack = []
  end

  def empty?
    @stack.empty?
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    raise UnderFlowError, "Stack is empty" if empty?
    @stack.pop
  end

  def peek
    @stack.last
  end
end

class RPNExpression

  def initialize(expr)
    @expr = expr
  end

  def evaluate
    stack = Stack.new

    tokens.each do |token|
      if numeric?(token)
        stack.push(token_to_i)
      elsif token == "+"
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs + rhs)
      elsif token == "*"
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs * rhs)
      elsif token == "-"
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs - rhs)
      else
        raise "What is this token?"
      end
    end

    stack.pop
  end

  private

  def tokens
    @expr.split(" ")
  end

  def numeric?(token)
    token =~ /^-?\d\+$/
  end
end

calculate = RPNExpression.new("4 7 3 + 8 * 16 + *")
calculate
