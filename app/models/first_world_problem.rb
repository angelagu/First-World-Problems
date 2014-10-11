class FirstWorldProblem < ActiveRecord::Base

  def create_problem(message)
    problem = FirstWorldProblem.create(problem: message)
  end

  def get_random_response
    responses = []
    file_path = File.join(Rails.root, 'responses.txt')
    texts = File.read(file_path).split /[\n]/
    texts.shuffle[0] 
  end  
end
