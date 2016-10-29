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
    when 0..4 then puts Ball::ANSWERS[@rindex].to_s.colorize(31)
    when 5..9 then puts Ball::ANSWERS[@rindex].to_s.colorize(32)
    when 10..14 then puts Ball::ANSWERS[@rindex].to_s.colorize(33)
    else answe
    end
  end

  def answe
    puts Ball::ANSWERS[@rindex].to_s.colorize(34)
  end
end
