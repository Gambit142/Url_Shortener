class ShortUrlsController < ApplicationController
  before_action :get_url, only: [:show]

  def show
  end

  def create
    shortened_url = create_short_url
    @long_url = LongUrl.create!(url: short_url_params[:long_url])
    @short_url = current_user.short_urls.new(long_url: @long_url, url: shortened_url)
    if @short_url.save
      redirect_to @short_url
      flash[:success] = "Short URL created successfully"
    else
      redirect_to long_urls_path
      flash[:notice] = "Could not create short URL"
    end
  end

  def redirect_url
    @short_url = ShortUrl.find_by(url: params[:short_url])
    if @short_url
      redirect_to @short_url.long_url.url, allow_other_host: true # pass the url to the browser
    else
      render file: "#{Rails.root}/public/404.html", status: 404
    end
  end

  private

  def short_url_params
    params.require(:short_url).permit(:url, :alias).merge(long_url: params[:url])
  end

  def create_short_url
    custom_name = short_url_params[:alias]
    if custom_name.present?
      @short_url = custom_name
    else
      hashed_string = Digest::SHA1.hexdigest(short_url_params[:long_url])[0..5]
      @short_url = hashed_string
    end
  end

  def get_url
    @short_url = ShortUrl.find(params[:id])
  end
end
