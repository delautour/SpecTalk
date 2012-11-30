require "spec_helper"

describe User do

  let(:query) { User.where(name: "Fizbob") }
  let(:fizbob) { User.create name: "Fizbob" }
  let(:fred) { User.create name: "Fred" }

  subject { query }

  context "but we can break it" do

    let(:query2) { query.all }

    it { query2.should include fizbob  }

    # For the record, I hate this.
    it { query2.should eq [fizbob]  }
  end
end
