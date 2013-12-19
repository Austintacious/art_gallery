require 'spec_helper'

describe Style do
  let(:invalid_names) {[1234, 'ads3slf', '', nil]}

  it {should have_valid(:name).when('Surrealism')}
  it {should_not have_valid(:name).when(*invalid_names)}

  it 'should be unique' do
    style1 = FactoryGirl.build(:style)
    style2 = FactoryGirl.build(:style)
    expect(style1.save).to be_true
    expect(style2.save).to be_false
  end

  it {should have_many :artists}

end
