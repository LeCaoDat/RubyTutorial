class Conversions
  private
  def TagList(value)
    return value if value.is_a?(TagList)
    TagList.new(value)
  end
end

Conversions::CM_PER_INCH = 2.54
puts Conversions::CM_PER_INCH
