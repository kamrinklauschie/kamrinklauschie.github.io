def circle_area(radius)
  # TODO: Implement the `circle_area` method
  area = Math::PI * (radius ** 2)
    if radius.negative?
      return 0
    else
      return area
    end
end
