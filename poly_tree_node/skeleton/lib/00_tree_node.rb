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
        if new_parent == parent
           return parent.children
        end

        if !parent.nil? 
            parent.children.delete(self)
        end

        parent = new_parent

        if !parent.nil?
            parent.children << self
        end

    end

    def add_child(child)

        # if !child.parent.nil?
        #     raise "parent already exist cannot add child"
        # end

        # child.parent = self
        # children << child
    end

    # private
    attr_reader :value, :children, :parent
end