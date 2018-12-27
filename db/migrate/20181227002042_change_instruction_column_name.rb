class ChangeInstructionColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :instructions, :instruction, :instruction_text
  end
end
