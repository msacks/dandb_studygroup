class Tree
  attr_accessor :children, :node_name
  
  def initialize(my_tree = {})
    @node_name = my_tree.keys[0]

    @children = my_tree[@node_name].map{ |key, value| Tree.new({key => value}) }
  end
  
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all(&block)}
  end
  
  def visit(&block)
    block.call self
  end
end

my_tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })

puts "Visiting a node"
my_tree.visit {|node| puts node.node_name}


puts "Visiting entire tree"
my_tree.visit_all {|node| puts node.node_name}





