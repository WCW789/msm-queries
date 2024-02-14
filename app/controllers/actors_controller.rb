class ActorsController < ApplicationController
  def actor_home
    render({ :template => "misc_templates/actor_templates/actor_home" })
  end

  def show
    @the_id = params.fetch("the_id")

    @matching_record = Actor.where({:id => @the_id})
    @actor = @matching_record.at(0)

    @name = @actor.name
    @dob = @actor.dob
    @bio = @actor.bio
    @image = @actor.image
    @created_at = @actor.created_at
    @updated_at = @actor.updated_at

    render({ :template => "misc_templates/actor_templates/actor_details" })
  end
end
