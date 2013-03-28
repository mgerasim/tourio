#encoding: utf-8
class Tour < ActiveRecord::Base
  attr_accessible :client, :date_of_departure, :employee_id, :price, :registr
  
  HUMAN_ATTRIBUTE_NAMES = {
    :name => 'Клиент',
    :date_of_departure => 'Дата вылета',
    :employee => 'Сотрудник',
    :price => 'Цена тура',
    :registr => 'Номер',
    :client => 'Клиент'
  }
  class << self
    def human_attribute_name attribute_name
	HUMAN_ATTRIBUTE_NAMES[attribute_name.to_sym] || super
    end
  end
  
  belongs_to :employee

end
