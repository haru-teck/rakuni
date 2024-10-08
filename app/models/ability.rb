# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # ゲストユーザー（未ログイン）の場合

    if user.department_id == 3 || user.department_id == 4 # 事務または管理者
      can :manage, User
    else
      cannot :read, User
    end

    # その他の権限設定...
  end
end
