require 'active_record'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

silence_stream(STDOUT) do
  ActiveRecord::Schema.define(:version => 01) do
    create_table :users, force: true do |t|
      t.string :name
    end
  end
end

class User < ActiveRecord::Base
  def inspect
    name || "User #{id}"
  end
end

RSpec.configure do |config|
  config.around do |example|
    ActiveRecord::Base.transaction do
      example.run
      raise ActiveRecord::Rollback
    end
  end
end
