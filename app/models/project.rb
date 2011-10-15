class Project < ActiveRecord::Base
  belongs_to :member
  # protect model by using whitelist
  attr_accessible :name, :description, :rendered_description, :git, :repo
  # enable markdown for project description
  markdownize! :description
  
end
