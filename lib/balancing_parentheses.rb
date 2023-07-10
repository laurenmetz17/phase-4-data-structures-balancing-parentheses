require_relative './stack'

def balancing_parentheses(str)
    stack = Stack.new
    @count = 0
    @length = str.length
    str.split('') do |char|
        if char ==")" 
            if stack.size == 0
                stack.push(char)
            else
                if stack.peek ==")"
                    stack.push(char)
                elsif stack.peek == "("
                    stack.pop
                end
            end
        elsif char == "("
            if stack.size == 0
                stack.push(char)
            else
                if stack.peek == "("
                    stack.push(char)
                elsif stack.peek == ")"
                    stack.push(char)
                end
            end
        end
    end

    return (stack.size)
 
end
# your code here
