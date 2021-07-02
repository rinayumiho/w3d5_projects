class PolyTreeNode
    

    def initialize(value)
        @children = []
        @parent = nil
        @value = value
    end

    # def print_parent
    #     puts parent.value
    # end

    # def print_children
    #     p children.map { |child| child.value }
    # end

    # def print_value
    #     value
    # end

    def parent=(new_parent)
        # frist trial
        # if new_parent.nil?
        #     parent.children.delete(self)
        #     parent = nil
        # elsif parent == nil || parent != new_parent
        #     parent.children.delete(self)
        #     new_parent.children << self
        #     parent = new_parent
        # end

        #second trial

        # if new_parent == parent
        #    return parent.children
        # end

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

    # private
    attr_reader :value, :children, :parent
end