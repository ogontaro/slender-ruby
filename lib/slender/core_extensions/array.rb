class Array
  def slim_down
    map(&:slim_down)
  end
end
