class Slime
  attr_reader :health, :time, :hunger, :bedtime, :age, :attraction

  def initialize
    @health = 10
    @time = 10
    @hunger = 10
    @bedtime = 10
    @age = 0
    @attraction = 0
  end

  def salt
    puts "You salt the slime. He clearly doesn't like it"
    hurt
    time_pass
  end

  def feed
    puts 'Slime wobbles & jiggles as you give him some fruits'
    @hunger += 2
    @attraction += 1
    time_pass
    overfed if @hunger > 10
  end

  def dance
    puts 'Slime wobbles in rhyme as the time passes. He seems happy'
    @attraction += 2
    time_pass(4, 2)
  end

  def status
    puts 'Health ' + health.to_s
    puts 'Hunger ' + hunger.to_s
    puts 'Sleep ' + bedtime.to_s
    puts 'Time ' + @time.to_s
    puts 'Age ' + @age.to_s + ' days'
    if @attraction < 0
      puts 'Slime hates your guts'
    elsif @attraction < 11
      puts 'Slime happy with his ways'
    elsif @attraction < 21
      puts 'Slime wants you to notice him'
    else
      puts 'You two are like an old couple'
    end
  end

  def rest
    puts 'Slime fall asleep. Does he really need one?'
    @time -= 4
    @hunger -= 3
    heal
    day_pass if @time <= 0
    @bedtime = 10
  end

  def walk
    puts 'You walked a slime to kill some time. Unforunatly, time is unkillable'
    @attraction += 1
    time_pass(2, 2)
  end

  protected

  def time_pass(t = 2, s = 1)
    @time -= t
    @bedtime -= s
    rest if @bedtime <= 0
    day_pass if @time <= 0
  end

  def day_pass
    puts 'A day passes by. You said you greatings'
    health
    @time = 10
    @bedtime -= 5
    @hunger -= 3
    @age += 1
    death if hunger <= 0
  end

  def overfed
    puts 'Slime seems sick. You wonder why and that makes you miserable'
    hurt
    @hunger = 10
  end

  def hurt
    @health -= 2
    @attraction -= 2
    death if @health <= 0
  end

  def heal
    @health += 2 if @health < 9
  end

  def death
    abort('Slime is dead. You are a terrible person')
  end
end

slimey = Slime.new
slimey.salt
slimey.status
slimey.dance
slimey.walk
slimey.status
slimey.rest
slimey.status
3.times { slimey.feed }
slimey.status
slimey.rest
slimey.status
3.times { slimey.feed }
slimey.status
slimey.dance
slimey.walk
slimey.status
3.times { slimey.feed }
slimey.status
