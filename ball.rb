require 'yaml'
require_relative 'colors'

class Ball
  ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))

  def shake
    @rindex = rand(Ball::ANSWERS.length)
    answer
    Ball::ANSWERS[@rindex]
  end

  def answer
    case @rindex
    when 0..4 then result(31)
    when 5..9 then result(32)
    when 10..14 then result(33)
    else result(34)
    end
  end

  def result(colour)
    puts Ball::ANSWERS[@rindex].to_s.colorize(colour)
  end
end
