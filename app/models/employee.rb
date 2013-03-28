#encoding: utf-8
class Employee < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :secondname
  
  HUMAN_ATTRIBUTE_NAMES = {
    :firstname  => 'Имя',
    :lastname   => 'Фамилия',
    :secondname => 'Отчество'
  }
  class << self
    def human_attribute_name attribute_name
	HUMAN_ATTRIBUTE_NAMES[attribute_name.to_sym] || super
    end
  end
  
  has_many :tours

end
