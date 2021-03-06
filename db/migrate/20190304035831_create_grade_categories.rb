class CreateGradeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :grade_categories do |t|
      t.string :name
      t.float :weight
      t.float :value
      t.references :transcript, foreign_key: true
      t.references :grade_category

      t.timestamps
    end
  end
end
