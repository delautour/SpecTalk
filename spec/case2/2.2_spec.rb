require "spec_helper"

describe User do

  let(:query) { User.where(name: "Fizbob") }
  let(:fizbob) { User.create name: "Fizbob" }
  let(:fred) { User.create name: "Fred" }

  subject { query }

  context "and even if it's not lazy" do

    it { query.should include fizbob  }
    it { query.should_not include fred  }

    # For the record, I hate this.
    it { query.should == [fizbob]  }
  end
end
