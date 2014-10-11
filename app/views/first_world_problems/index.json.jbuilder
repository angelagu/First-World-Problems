json.array!(@first_world_problems) do |first_world_problem|
  json.extract! first_world_problem, :id, :problem
  json.url first_world_problem_url(first_world_problem, format: :json)
end
