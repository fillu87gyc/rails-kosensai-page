class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def access
  end

  def timetable
  end

  def shop
  end

  def download_chouri
    if params[:id] == '2'
      download_file_name = 'public/chousasho/sample.xlsx'
    else
      download_file_name = 'public/chousasho/template.xlsx'
    end
    send_file download_file_name
  end
end
