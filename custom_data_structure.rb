# custom data structure that should support the following core operations:
# Insertion: Add an element to the data structure.
# Deletion: Remove an element from the data structure.
# Search/Lookup: Find if an element exists or retrieve the value associated with a key (if applicable).
# Update: Modify an existing element or value.
# Traversal/Iteration: Efficiently iterate over all elements in the data structure.

class CustomDataStructure
  attr_accessor :x, :y

  def initialize(x, y)
    @x = [x]
    @y = y
  end

  def update_x(z)
    @x << z
  end

  def delete_y()
    require 'pry'; binding.pry
    var
  end
end

require 'minitest/autorun'

describe "CustomDataStructure" do
  before {@cds = CustomDataStructure.new("x", "y")}
  describe "#new" do
    it "initializes with the correct data" do
      assert_equal ["x"], @cds.x
      assert_equal "y", @cds.y
    end
  end

  describe "#update_x" do
    it "adds the data" do
      @cds.update_x("z")
      assert_equal ["x", "z"], @cds.x
    end
  end

  describe "#delete" do
    it "delets the data" do
      @cds.delete(@x)
      assert_equal [], @cds.x
    end
  end
end