def timer_for
  # TODO: Return time taken to execute the given block
  time_start = Time.now
  yield

  time_end = Time.now
  return time_end - time_start
end
