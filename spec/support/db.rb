RSpec.configure do |c|
  c.before(:suite) do
    Sequel.extension :migration
    Sequel::Migrator.rub(DB, 'db/migrations')
    DB[:expenses].truncate
  end
end