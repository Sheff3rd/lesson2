require 'yaml'
require_relative 'colors'

class Ball

  ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))

  def shake
    rindex = rand(0..19)
    answer = Ball::ANSWERS[rindex]
    puts Ball::ANSWERS[rindex].to_s.colorize(31)
    return answer
  end

end
