require 'rails_helper'

describe Student do
  it 'can be created' do
    student = create(:student)
    
    expect(student).to be_valid
  end

end
