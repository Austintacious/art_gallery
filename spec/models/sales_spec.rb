require 'spec_helper'

describe Sales do
  let(:invalid_customer_ids) {['', nil, "abc", "12abc34", "ab123cd"]}
  let(:invalid_dates) {['blah', '', nil, '100', '100-0-0', '0000-00-00']}
  it {should have_valid(:customer_id).when(1)}
  it {should_not have_valid(:customer_id).when(*invalid_customer_ids)}
  it {should have_valid(:date).when(Time.now())}
  it {should_not have_valid(:date).when(*invalid_dates)}
  it {should have_many :artworks}
  it {should belong_to :customer}
end
