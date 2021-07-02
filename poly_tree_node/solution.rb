class PolyTreeNode
    

    def initialize(value)
        @children = []
        @parent = nil
        @value = value
    end

    def print_parent
        puts parent.value
    end

    def print_children
        p children.map { |child| child.value }
    end

    def print_value
        value
    end

    def parent=(new_parent)

    end

    private
    attr_reader :value, :children, :parent
end