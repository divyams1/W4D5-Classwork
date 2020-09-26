class MyQueue
    def initialize
        @queue = []
    end

    def empty?
        @queue.length == 0
    end

    def dequeue
        # ele = @queue[0]
        # @queue = @queue[1..-1]
        # ele
        @queue.shift
    end

    def enqueue(ele)
        @queue << ele
        nil
    end

    def peek
        @queue[0]
    end
end

class MyStack
    def initialize
        @stack = []
    end

    def push(ele)
        @stack.push(ele)
    end

    def pop
        @stack.pop
    end

    def empty? 
        @stack.length == 0 
    end 

    def peek 
        @stack[-1]
    end 

    def size 
        @stack.length 
    end 
end

class StackQueue 
    def initialize
        @stack = MyStack.new
        @stack2 = MyStack.new 
        @stack3 = MyStack.new
    end 

    def enqueue(ele) 
        @stack.push(ele)
    end

    # def enqueue(ele)
    #     @stack2.push(@stack.pop)      [] []       [1]  []       [2]     [1]          [3]         [1,2]            
    #     @stack.push(ele)
    # end

    # def dequeue
    #     @stack2.pop
    # end


    def dequeue                                         
        if @stack2.empty?                                                                        
            until @stack.empty?  
                @stack2.push(@stack.pop) 
            end 
        end
        ele 
    end 

end

class MinMaxStack                   
    def initialize
        @stack = []
    end

    def push(ele)
        @stack.push(ele)
    end

    def pop
        @stack.pop
    end

    def empty? 
        @stack.length == 0 
    end 

    def peek 
        @stack[-1]
    end 

    def size 
        @stack.length 
    end 

end





def naive(arr, win)
    current_max_range = 0
    i = 0
    while i < arr.length - win + 1
        window = arr[i...i+win]
        range = window.max - window.min
        current_max_range = range if range > current_max_range
        i += 1
    end
    current_max_range
end

p naive([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p naive([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p naive([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p naive([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8