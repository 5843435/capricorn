class TypeController < ApplicationController
  def index
#    @type = params[:type]
#   楽天booksAPI
    RakutenWebService.configuration do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
    end
    @books = RakutenWebService::Books::Book.search(:title => 'Ruby')
    @type = params[:type]
    case @type
    when 1
      @type = "マーケティング" 
      @text = "投資効果、新規性、顧客満足度に責任を持てるようになりましょう。

      keywords:市場動向予測, 事業戦略, 販売戦略, 実行計画, 資金計画, 販売チャネル戦略"
    when 2
      @type = "セールス"
      @text = "
      顧客に愛されるセールスを目指しましょう。

      keywords:経営戦略, ビジネスプロセス改善, 顧客との関係性、顧客満足度, ソリューション・製品・サービス提案
      "
    when 3
      @type = "コンサルタント"
      @text = "顧客のビジネス戦略やビジョンの実現、課題解決に貢献できる人材を目指しましょう。
      
      keywords:知的資産, 経営戦略, IT戦略, ビジネスアナリシス, EA, 顧客満足度, 投資効果, 実現可能性
      IIBAホームページ　http://www.iiba-japan.org/
      "
    when 4
      @type = "ITアーキテクト"
      @text = "
      ビジネス及びIT上の課題を分析し、顧客のビジネス戦略を実現するために情報システム全体の品質を保ったITアーキテクチャを設計できるようになりましょう。
      
      keywords:ビジネス戦略, ビジネスアーキテクチャ, データアーキテクチャ, アプリケーションアーキテクチャ, テクノロジーアーキテクチャ, 技術リスク, 全体最適
      オープン・グループ・ジャパンホームページ www.opengroup.or.jp/
      "
    when 5
      @type = "プロジェクトマネジメント"
      @text = "
      AIITの履修証明プログラムへの参加をお奨めします。
      「プロジェクトマネジメント・プロフェッショナルスクール」 http://aiit.ac.jp/certification_program/project_management/
      "
    when 6
      @type = "ITスペシャリスト"
      @text = "
      構築したシステム基盤の非機能要件（性能、回復性、可用性など）に責任を持てるようになりましょう。
      "
    when 7
      @type = "アプリケーションスペシャリスト"
      @text = "
      enPiTへの参加をお薦めします。
      
      enPiT http://enpit.aiit.ac.jp/
      "
    when 8
      @type = "ソフトウェアデベロップメント"
      @text = "
      マーケティング戦略に基づく、市場に受け入れられるソフトウェア製品の企画、仕様決定、設計、開発を実施できるようになりましょう。
      
      keywords:ビジネス戦略, マーケティング戦略, 機能性, 信頼性
      "
    when 9
      @type = "カスタマサービス"
      @text = "
      導入したハードウェア、ソフトウェアの品質（使用性、保守容易性等）に責任を持ち、顧客満足度の向上を実現できるようになりましょう。
      "
    when 10
      @type = "ITサービスマネジメント"
      @text = "
      ITILを勉強しましょう。
      
      keywords:ITIL, SLA, 運用リスク, 安全性, 信頼性, 可用性, 効率性, 運用管理
      5分で絶対に分かるITIL http://www.itmedia.co.jp/im/articles/0607/14/news135.html
      "
    else
      @type = "エデュケーション"
      @text = "
      担当分野の専門技術と研修に関連する専門技術を活用し、ユーザのスキル開発要件に合致した研修カリキュラムや研修コースのニーズの分析、
      設計、開発、運営、評価を実施できるようになりましょう。
      "
    end
  end
end
