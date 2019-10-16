def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  if students == []
    return []
  else
    students.sort_by { |name| name.capitalize }
  end
end
