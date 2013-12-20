require 'spec_helper'

describe Collection do
  let(:valid_names) {['Modern Collection', 'Adam Collection']}
  let(:invalid_names) {[1234, 'ads3slf', '12ab34', '', nil]}
  it {should have_valid(:name).when(*valid_names)}
  it {should_not have_valid(:name).when(*invalid_names)}

  it 'should be unique' do
    collection1 = FactoryGirl.build(:collection)
    collection2 = FactoryGirl.build(:collection)
    expect(collection1.save).to be_true
    expect(collection2.save).to be_false
  end

  it {should have_many :artworks}
  it {should have_many :favorites}

end
