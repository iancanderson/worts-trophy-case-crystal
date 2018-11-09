class CreateUsers::V20181108211432 < LuckyRecord::Migrator::Migration::V1
  def migrate
    create :users do
      add full_name : String
      add email : String, unique: true
      add admin : Bool
    end
  end

  def rollback
    drop :users
  end
end
