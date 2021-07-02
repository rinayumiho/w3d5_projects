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
        if parent == new_parent
            return parent
        end

        if self.parent != nil
            parent.children.each_with_index do |child, idx|
                if child == self
                    parent.children.delete_at(idx)
                end
            end
        end

        new_parent.children << self
        new_parent
    end

    def add_child(child)

        if !child.parent.nil?
            raise "parent already exisist cannot add child"
        end

        child.parent = self
        children << child
    end

    def 

    private

    attr_reader :value, :children, :parent
end