class WelcomeController < ApplicationController
  def index
    # この下の行をコメントアウトするとエラー起きることなくA::Bが取得できるはず？
    # A::B
    byebug
  end
end
