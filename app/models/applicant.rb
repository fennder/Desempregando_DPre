require 'csv'

class Applicant < ApplicationRecord
  belongs_to :user
  belongs_to :position

  validates :name, :email, :phone, presence: true
  def age
    today = Date.today
    dob = self.brithday.to_date
    years = today.year - dob.year
    
    return nil if dob.blank?

    if today.month < dob.month || (today.month == dob.month && today.day < dob.day)
      years -= 1
    end

    return years
  end

  def verifica_idade
    idade = self.age
    if (age < 13)
      return "Menor"
    elsif (idade < 13 && idade > 18)
      return "Aprediz"
    else
      return "Efetivo"
    end
  end

end

