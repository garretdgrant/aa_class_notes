class MyStack
    attr_reader :size

        def initialize
            @store = []
            @size = 0
        end

        def push (ele)
            @store.unshift (ele)
            @size += 1
        end

        def pop
            @store.shift 
            @size -= 1 unless @size == 0
        end

        def peek
            @store.first
        end

        def empty?
             @size == 0
        end

        def inspect
           "<#stack:#{self.object_id}>"
        end

end

class MyQueue
        def initialize
            @inner_array = []
            @size = 0
        end

        def enqueue(ele)
            inner_array.unshift(ele)
            self.size += 1
            self
        end

        def dequeue
            self.size -= 1
            inner_array.pop
        end


        def peek
            self.inner_array.dup
        end

        def empty?
            self.size == 0
        end

        private
        attr_reader :inner_array #Ensures underlying data structure is not exposed
        attr_accessor :size
end

class Node
    attr_reader :value, :children
    def initialize(value, children = [])
        @value - value
        @children = children
    end
end

d = Node.new("d")
e = Node.new("e")
f = Node.new("f")
g = Node.new("g")
b = Node.new("b", [d,e])
c = Node.new("c", [f,g])
a = Node.new("a", [b,c])

def bfs(node, tar)
    return node if node.value == tar

end

def dfs(node, tar)
    return node if node.value == tar
    return nil if node.children.length == 0
    node.children.each do |child|
        res = dfs(child, tar)
        return res unless res.nil?
    end
    nil
end
