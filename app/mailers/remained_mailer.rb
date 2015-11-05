#coding: utf-8

class RemainedMailer < ApplicationMailer
    default from: "info@capricorn.com"
    def remained_email(user, item, notification)
        @item_name = item.name
        case item.id
        when 1 then
            url = 'http://www.amazon.co.jp/s/ref=nb_sb_noss_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&url=search-alias%3Daps&field-keywords=%E3%83%88%E3%82%A4%E3%83%AC%E3%83%83%E3%83%88%E3%83%9A%E3%83%BC%E3%83%91%E3%83%BC'
        when 2 then
            url = 'http://www.amazon.co.jp/s/ref=nb_sb_noss_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&url=search-alias%3Daps&field-keywords=%E3%83%86%E3%82%A3%E3%83%83%E3%82%B7%E3%83%A5%E3%83%9A%E3%83%BC%E3%83%91%E3%83%BC&rh=i%3Aaps%2Ck%3A%E3%83%86%E3%82%A3%E3%83%83%E3%82%B7%E3%83%A5%E3%83%9A%E3%83%BC%E3%83%91%E3%83%BC'
        when 3 then
            url = 'http://www.amazon.co.jp/s/ref=nb_sb_noss_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&url=search-alias%3Daps&field-keywords=%E3%83%9C%E3%83%87%E3%82%A3%E3%83%BC%E3%82%BD%E3%83%BC%E3%83%97&rh=i%3Aaps%2Ck%3A%E3%83%9C%E3%83%87%E3%82%A3%E3%83%BC%E3%82%BD%E3%83%BC%E3%83%97'
        when 4 then
            url = 'http://www.amazon.co.jp/gp/search/ref=sr_kk_2?rh=i%3Aaps%2Ck%3A%E6%B4%97%E6%BF%AF%E6%B4%97%E5%89%A4&keywords=%E6%B4%97%E6%BF%AF%E6%B4%97%E5%89%A4&ie=UTF8&qid=1445018449'
        when 5 then
            url = 'http://www.amazon.co.jp/s/ref=nb_sb_noss_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&url=search-alias%3Daps&field-keywords=%E3%82%B7%E3%83%A3%E3%83%B3%E3%83%97%E3%83%BC&rh=i%3Aaps%2Ck%3A%E3%82%B7%E3%83%A3%E3%83%B3%E3%83%97%E3%83%BC'
        end
        @url = url
        @notification = notification
        mail to: user.email, subject: 'Capricornからのリマインド'
        mail to: user.email_second, subject: 'Capricornからのリマインド'
    end
end

