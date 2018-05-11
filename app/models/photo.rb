class Photo < ApplicationRecord
  before_action :set_photo, :only => [:show, :edit, :update, :destroy]
  validates_presence_of :title, :date, :description, :file_location
end
