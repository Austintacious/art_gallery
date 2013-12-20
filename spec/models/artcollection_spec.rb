require 'spec_helper'

describe Artcollection do
  let(:invalid_ids) {['', nil, "abc", "12abc34", "ab123cd"]}
  it {should have_valid(:artwork_id).when(1)}
  it {should_not have_valid(:artwork_id).when(*invalid_ids)}
  it {should have_valid(:collection_id).when(1)}
  it {should_not have_valid(:collection_id).when(*invalid_ids)}
  it {should belong_to :artwork}
  it {should belong_to :collection}
end
