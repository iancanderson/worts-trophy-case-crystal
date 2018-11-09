class CreateCategoriesAndSubcategories::V20181108205540 < LuckyRecord::Migrator::Migration::V1
  def migrate
    create :categories do
      add bjcp_id : String
      add name : String
      add year : Int32
    end

    create :subcategories do
      add_belongs_to category : Category, on_delete: :cascade
      add bjcp_id : String
      add name : String
    end
  end

  def rollback
    drop :subcategories
    drop :categories
  end
end
