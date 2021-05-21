class PostImagesController < ApplicationController
  
  def new
    # 画像投稿の画面を表示するアクションメソッド
    # インスタンス変数に空のインスタンスを渡して、画像の投稿ができるようにします。
    @post_image = PostImage.new
  end

      # 投稿データを保存するアクションメソッド
      # 投稿データを保存するには、Strong Parametersも必要
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = PostImage.all
  end

  def show
  end

  def destroy
  end
  
  private

  def post_image_params
    # フォームで入力されたデータが投稿データとして許可されている内容なのかチェックする　テーブルへ確認に行く
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end