require "spec_helper"

describe User do

  let(:query) { User.where(name: "Fizbob") }
  let(:fizbob) { User.create name: "Fizbob" }
  let(:fred) { User.create name: "Fred" }

  subject { query }

  context "although we can still make it work with '.all' " do

    let(:query2) { query.all }
    subject { query2 }

    it { should include fizbob  }

    # I still hate it
    it { should eq [fizbob]  }
  end
end
