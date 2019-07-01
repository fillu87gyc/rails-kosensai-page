class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def access
  end

  def news
  end

  def shop
  end

  def download
    if params[:id] == '2'
      download_file_name = 'public/docs/sample.xlsx'
    else
      download_file_name = 'public/docs/template.xlsx'
    end
    send_file download_file_name
  end
end
