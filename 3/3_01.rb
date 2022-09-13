
arr = arr.tally


arr = arr.group_by(&:itself).transform_values(&:count)
