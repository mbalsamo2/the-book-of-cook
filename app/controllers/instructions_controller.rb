class InstructionsController < ApplicationController
  def show

  end

  private

  def instructions_params
    params.require(:instruction).permit(:instruction_name)
  end
end
