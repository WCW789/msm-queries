class DirectorsController < ApplicationController
  def director_home
    render({ :template => "misc_templates/director_templates/director_home" })
  end

  def director_youngest
    render({ :template => "misc_templates/director_templates/youngest" })
  end

  def director_eldest
    render({ :template => "misc_templates/director_templates/eldest" })
  end

  def show
    @the_id = params.fetch("the_id")

    @matching_record = Director.where({:id => @the_id})
    @director = @matching_record.at(0)

    @name = @director.name
    @dob = @director.dob
    @bio = @director.bio
    @image = @director.image
    @created_at = @director.created_at
    @updated_at = @director.updated_at

    render({ :template => "misc_templates/director_templates/director_details" })
  end
end
