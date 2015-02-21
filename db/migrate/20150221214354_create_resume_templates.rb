class CreateResumeTemplates < ActiveRecord::Migration
  def change
    create_table :resume_templates do |t|
      t.string :name
    end
  end
end
