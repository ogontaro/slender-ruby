class Hash
  def slim_down
    map { |k, v| [k, v.slim_down] }.to_h
  end
end
