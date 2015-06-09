# • Print the contents of an array of sixteen numbers, four numbers at a
# time, using just each. Now, do the same with each_slice in Enumerable.
# • The Tree class was interesting, but it did not allow you to specify a new
# tree with a clean user interface. Let the initializer accept a nested
# structure of hashes. You should be able to specify a tree like this:
# {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {},
# 'child 4' => {} } } }.
# • Write a simple grep that will print the lines of a file having any occurrences
# of a phrase anywhere in that line. You will need to do a simple
# regular expression match and read lines from a file. (This is surprisingly
# simple in Ruby.) If you want, include line numbers.

(0..15).to_a().each do |i|
  if (i % 4 == 0)
      string = ''
      (1..4).to_a().each do |j|
        string = string + (j + i).to_s
        string += ', ' unless j == 4
      end
      puts string
  end
end

(1..16).to_a().each_slice(4) { |slice| puts slice.join(', ') }

{'grandpa' => {
   'dad' => {'child 1' => {}, 'child 2' => {} },
   'uncle' => {'child 3' => {},
          'child 4' => {} }
  } }

class Tree
  attr_accessor :children, :node_name

  def initialize(tree_object)
    tree_object.each do |parent, child|
      @node_name = parent
      @children = child.map do |child_name, grandchildren|
        self.class.new({ child_name => grandchildren })
      end
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

def simple_grep(fileName, regex)
  file = File.open(fileName)
  file.each_line.each_with_index do |line, idx|
    puts idx.to_s + ' ' + line if regex.match(line)
  end
end
