class PagesController < ApplicationController

  def home
    @time = Date.today
  end

  def about
  end

  def answer
    your_message = params['question']
    def coach_answer(your_message)
      if your_message.include?("?")
        return "Silly question, get dressed and go to work!"
      elsif your_message == "I am going to work right now!"
        return ""
      else
        return "I don't care, get dressed and go to work!"
      end
    end
    def coach_answer_enhanced(your_message)
      answer = coach_answer(your_message)
      case your_message
      when "I AM GOING TO WORK RIGHT NOW!"
        return ""
      when your_message.upcase
        return "I can feel your motivation! #{answer}"
      else
        return coach_answer(your_message)
      end
    end
    @answer = coach_answer_enhanced(your_message)
  end
end
