require "spec_helper"

describe User do

  let(:queried_user) { User.last }
  let(:user) { User.create name: "Fizbob" }

  subject { queried_user }

  context "and also if we use 'its' " do

    its(:name) { should eq user.name }
  end
end
