class CreateProgrammeSpeakers < ActiveRecord::Migration
  def change
    create_table :programme_speakers do |t|
      t.belongs_to :programme, index: true
      t.belongs_to :speaker, index: true

      t.timestamps
    end

    add_index :programme_speakers, [:programme_id, :speaker_id], unique: true
  end
end
