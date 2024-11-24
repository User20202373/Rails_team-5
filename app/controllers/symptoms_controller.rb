# app/controllers/symptoms_controller.rb
class SymptomsController < ApplicationController
  def show
    @part = params[:part]  # 'head', 'chest', 'abdomen' 등 부위 파라미터 받기
    @symptoms = get_symptoms_for_part(@part)  # 해당 부위에 맞는 증상 가져오기
  end

  private

  def get_symptoms_for_part(part)
    # 부위에 맞는 증상을 반환하는 로직
    case part
    when 'head'
      ['Headache', 'Dizziness', 'Nausea']
    when 'chest'
      ['Chest Pain', 'Shortness of Breath', 'Coughing']
    when 'abdomen'
      ['Stomach Ache', 'Bloating', 'Nausea']
    else
      []
    end
  end
end
