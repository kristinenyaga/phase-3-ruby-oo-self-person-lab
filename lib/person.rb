# your code goes here
require 'pry'
class Person 

  attr_reader :name,:happiness,:hygiene
  attr_accessor :bank_account
  def initialize(name,bank_account=25)
    @name=name
    @happiness=8
    @hygiene=8
    @bank_account=bank_account
  end
  
  def happiness=(happiness)
    if happiness > 10
      @happiness=10
     elsif happiness <1
      @happiness =0
     else
      @happiness=happiness 
     end
    
  end

  

  def hygiene=(hygiene)
     if hygiene > 10
      @hygiene=10
     elsif hygiene <1
      @hygiene =0
     else
      @hygiene=hygiene
     end
    
  
  end

  
 def clean?
   self.hygiene >7
    
 end

  def happy?
    self.happiness > 7 
     
 end

def get_paid(amount)
  self.bank_account += amount
  "all about the benjamins"

end

def take_bath
  self.hygiene +=4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness +=2
  self.hygiene -=3
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  friend.happiness +=3
  self.happiness +=3

  "Hi #{friend.name}! It's #{self.name}. How are you?"

end

def start_conversation(friend,topic)
  if topic == "politics"
    friend.happiness -=2
    self.happiness -=2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    friend.happiness +=1
    self.happiness +=1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end
end
# binding.pry