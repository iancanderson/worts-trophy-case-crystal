class CreateTrophies::V20181108211731 < LuckyRecord::Migrator::Migration::V1
  def migrate
    create :trophies do
      add bjcp_score : Int32
      add place : Int32
      add place_context : String
      add recipe_url : String
      add_belongs_to user : User, on_delete: :cascade
      add_belongs_to subcategory : Subcategory, on_delete: :restrict
      add_belongs_to competition : Competition, on_delete: :restrict
    end
  end

  def rollback
    drop :trophies
  end
end
