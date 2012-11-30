require "spec_helper"

describe User do

  let(:query) { User.where(name: "Fizbob") }
  let(:fizbob) { User.create name: "Fizbob" }
  let(:fred) { User.create name: "Fred" }

  subject { query }

  context "the lazy version works" do

    it { should include fizbob  }
    it { should_not include fred  }
  end
end
