require 'spec_helper'

describe Artist do
  let(:invalid_emails) {['blah.com', '@blah.com', '@@.com', 'blah@.com', 'blah', '@@blah.com', 'com', '.com', '', nil]}
  #Validations(valid_attribute)
  it {should have_valid(:email).when('blah@blah.com')}
  it {should_not have_valid(:email).when(*invalid_emails)}

  it 'should be unique' do
    artist1 = FactoryGirl.build(:artist)
    artist2 = FactoryGirl.build(:artist)
    expect(artist1.save).to be_true
    expect(artist2.save).to be_false
  end
  #Associations(shoulda)
  it {should have_many :artworks}
  it {should belong_to :style}

  #methods (factory girl)
end
