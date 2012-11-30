require "spec_helper"

describe User do

  let(:queried_user) { User.last }
  let(:user) { User.create }

  subject { queried_user }

  context "but this is" do

    it { should(eq(user)) }
  end
end
