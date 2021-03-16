class Portfolio < ApplicationRecord
  includes Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  #Kører efter neW, dvs. efter the form er kreeret
  #Dette er et callback
  #Defaults kan altså sætte i modellen eller i migration
  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height:'250', width: '250')
  end

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height:'600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height:'350', width: '200')
  end

end
