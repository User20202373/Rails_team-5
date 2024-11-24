class BodiesController < ApplicationController
  def show
 
    @gender = params[:gender]
  end

  def show_symptoms
    @part = params[:part]
    
    case @part
    when 'head'
      @symptoms = ['Headache', 'Dizziness', 'Nausea']
    when 'neck'
      @symptoms = ['Stiffness', 'Soreness']
    when 'chest'
      @symptoms = ['Chest Pain', 'Shortness of breath']
    when 'abdomen'
      @symptoms = ['Stomach Pain', 'Bloating']
    when 'arms'
      @symptoms = ['Arm Pain', 'Numbness']
    when 'legs'
      @symptoms = ['Leg Pain', 'Swelling']
    else
      @symptoms = []
    end
  end
end

