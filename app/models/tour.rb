#encoding: utf-8
class Tour < ActiveRecord::Base
  attr_accessible :client, :date_of_departure, :employee_id, :price, :registr, :trend_id, :employee, :trend
  
  HUMAN_ATTRIBUTE_NAMES = {
    :name => 'Клиент',
    :date_of_departure => 'Дата вылета',
    :employee => 'Сотрудник',
    :price => 'Цена тура',
    :registr => 'Номер',
    :client => 'Клиент',
    :trend => 'Направление'
  }
  class << self
    def human_attribute_name attribute_name
	HUMAN_ATTRIBUTE_NAMES[attribute_name.to_sym] || super
    end
  end
  
  belongs_to :employee
  belongs_to :trend
  
  def self.total_on(date)
    where("date(date_of_departure) = ?", date).count
  end
  
end
