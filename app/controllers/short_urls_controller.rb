class ShortUrlsController < ApplicationController
  def create
    custom_name = short_url_params[:alias]
    @long_url = LongUrl.create!(url: short_url_params[:url])
    if custom_name.present?
      @short_url = ShortUrl.create!(long_url: @long_url, url: custom_name)
    else
      hashed_string = Digest::SHA1.hexdigest(@long_url&.url)[0..5]
      @short_url = ShortUrl.create!(long_url: @long_url, url: hashed_string)
    end
  end

  def redirect_url
    @short_url = ShortUrl.find_by(url: params[:short_code])
    if @short_url
      redirect_to @short_url.long_url.url
    else
      render :not_found
    end
  end

  private

  def short_url_params
    params.require(:short_url).permit(:url, :alias).merge(long_url: :url)
  end
end
