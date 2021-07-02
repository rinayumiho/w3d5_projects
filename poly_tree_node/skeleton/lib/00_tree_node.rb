class PolyTreeNode
    

    def initialize(value)
        @children = []
        @parent = nil
        @value = value
    end

    def parent=(new_parent)

        if !@parent.nil? 
            @parent.children.delete(self)
        end

        @parent = new_parent
        
        if !@parent.nil?
            @parent.children << self
        end

    end

    def add_child(node)
        node.parent = self
    end
    
    def remove_child(node)
        raise "Node is not a child!" if !@children.include?(node)
        node.parent = nil
    end

    def dfs(target)
        return self if self.value == target
        @children.each do |child|
            current_node = child.dfs(target)
            return current_node if !current_node.nil?
        end
        nil
    end

    def bfs(target)
        arr = [self]
        while !arr.empty?
            cur_node = arr.shift
            return cur_node if cur_node.value == target
            arr += cur_node.children
        end
        nil
    end

    # private
    attr_reader :value, :children, :parent
end


