require 'rails_helper'

RSpec.describe Applicant, type: :model do
    describe '#verifica_idade' do
      it 'retorna "Menor" para age menor que 14' do
        applicant = Applicant.new(brithday: "17/02/1982")
        result = applicant.verifica_idade
        expect(result).to eq('Efetivo')
      end
    end
  end
  
