require 'yaml'
require_relative 'colors'

class Ball

  ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))

  def shake
    rindex = rand(Ball::ANSWERS.length)
    answer = Ball::ANSWERS[rindex]
    if rindex <= 4 then puts Ball::ANSWERS[rindex].to_s.colorize(31)
    elsif rindex <= 9 then puts Ball::ANSWERS[rindex].to_s.colorize(32)
    elsif rindex <= 14 then puts Ball::ANSWERS[rindex].to_s.colorize(33)
    else puts Ball::ANSWERS[rindex].to_s.colorize(34)
    end
    answer
  end

end
