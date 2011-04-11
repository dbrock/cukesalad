require 'specifics'
require 'director'

class Actor
  include Specifics

  def initialize this_type_of_role, directed_by=Director.new
    @director = directed_by
    get_into_character_for this_type_of_role
  end
  
  def perform described_task, *details
    get_ready_to_perform described_task
    understand_the *details unless details.empty?
    perform_task 
  end
  alias :answer :perform

  def get_into_character_for described_role
    the_role = @director.explain_the_role described_role
    see_how_to_do the_role
  end
  
  def get_ready_to_perform something
    the_thing = @director.how_do_i_perform something
    see_how_to_do the_thing 
  end

  def see_how_to_do something
    extend something
  end
end
