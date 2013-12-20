require 'spec_helper'

describe Customer do
  let(:invalid_names) {['', nil, '12ab34', 'ab12cd']}
  let(:invalid_emails) {['blah.com', '@blah.com', '@@.com', 'blah@.com', 'blah', '@@blah.com', 'com', '.com']}
  let(:invalid_amounts) {[-100, 'afs38jfdas', 'abc', '327abc']}

  it {should have_valid(:first_name).when('Austin')}
  it {should_not have_valid(:first_name).when(*invalid_names)}

  it {should have_valid(:last_name).when('Winslow')}
  it {should_not have_valid(:last_name).when(*invalid_names)}

  it {should have_valid(:email).when('blah@blah.com')}
  it {should_not have_valid(:email).when(*invalid_emails)}

  it {should have_valid(:amount_spent).when(100)}
  it {should_not have_valid(:amount_spent).when(*invalid_amounts)}

  it 'should be unique' do
    customer1 = FactoryGirl.build(:customer)
    customer2 = FactoryGirl.build(:customer)
    expect(customer1.save).to be_true
    expect(customer2.save).to be_false
  end

  it {should have_many :sales}
  it {should have_many :favorites}
end
