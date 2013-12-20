require 'spec_helper'

describe Medium do
  let(:invalid_media) {['asfjs3rlfksa', '2342jasdf39242', 23408, '', nil]}

  it {should have_valid(:name).when('Photo', 'Acryllic', 'Print')}
  it {should_not have_valid(:name).when(*invalid_media)}

  it 'should be unique' do
    medium1 = FactoryGirl.build(:medium)
    medium2 = FactoryGirl.build(:medium)
    expect(medium1.save).to be_true
    expect(medium2.save).to be_false
  end 

  it {should have_many :artworks}
end
