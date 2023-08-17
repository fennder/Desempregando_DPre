require 'rails_helper'

RSpec.describe Position, type: :model do

  describe 'è remota?' do

    it 'retorna "true" para vagas remota' do
      a = Position.new(remote: true)
      result= a.is_remote
      expect(result).to be_truthy
    end

    it 'retorna "false" para vagas remota' do
      a = Position.new(remote: false)
      result= a.is_remote
      expect(result).to be_falsey
    end

  end
end
