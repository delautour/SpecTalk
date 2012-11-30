require "spec_helper"

describe "LazySpecs" do

  let(:queried_user) { User.last }
  let(:user) { User.create }

  subject { queried_user }

  context "this is not a lazy test" do

    it { queried_user.should eq user }
  end
end
