def circle_area(radius)
  # TODO: Implement the `circle_area` method
  area = Math::PI * (radius ** 2)
    if radius < 0
      return 0
  else
    return area
  end
end
