#!/usr/bin/env/ ruby
#tree class that accepts nested hash as initializer

class HashTree
    attr_accessor :children, :node_name
    def initialize(h_tree)
        key = h_tree.keys[0]
        @node_name = key
        childHash = h_tree[key]
        @children = []
        childHash.each do |node|
            h = Hash.new
            h[node[0]] = node[1]
            @children.push HashTree.new(h)
        end
    end
    
    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end
root = {'grandparent' => {'parentA' => {'childA' => {}, 'childB' => {'grandChildA' => {}}}, 'parentB' => {}}}
ht = HashTree.new(root)
puts 'visiting a node'
ht.visit {|node| puts node.node_name}
puts
puts 'visiting entire tree'
ht.visit_all {|node| puts node.node_name}
