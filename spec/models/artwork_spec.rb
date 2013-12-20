require 'spec_helper'

describe Artwork do
  let(:blanks) {['', nil]}
  let(:invalid_costs) {[-100, 'afs38jfdas', 'abc', '327abc']}
  #Validations(valid_attribute)
  it {should have_valid(:cost).when(250000)}
  it {should_not have_valid(:cost).when(*blanks)}
  it {should_not have_valid(:cost).when(*invalid_costs)}
  it {should_not have_valid(:availability).when(*blanks)}
  it {should_not have_valid(:artist_id).when(*blanks)}
  it {should have_valid(:name).when('Saturn Devouring His Son')}
  it {should_not have_valid(:name).when(*blanks)}

  it 'should be unique' do
    artwork1 = FactoryGirl.build(:artwork)
    artwork2 = FactoryGirl.build(:artwork)
    expect(artwork1.save).to be_true
    expect(artwork2.save).to be_false
  end
  #Associations(shoulda)
  it {should belong_to :artist}
  it {should belong_to :medium}
  it {should belong_to :sale}
  it {should have_many :artcollections}
  it {should have_many :collections}
end
