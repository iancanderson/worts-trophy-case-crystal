class CreateCompetitions::V20181108211040 < LuckyRecord::Migrator::Migration::V1
  def migrate
    create :competitions do
      add url : String
      add date : Time
      add name : String
      add competition_type : String
    end
  end

  def rollback
    drop :competitions
  end
end
