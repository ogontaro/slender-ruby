class String
  def slim_down
    self[0, Slender.max_string_length]
  end
end
