  $('#rakuten-button').click ->
    $.ajax
      async:    true                             # true:非同期通信
      url:      "/rakuten/search"
      type:     "GET"
      data:     {jan: '901872441297'}
      dataType: "json"
      context:  this
      error: (jqXHR, textStatus, errorThrown) -> # 通信/サーバエラーなど
        $("#result").css("color","#ff0000").html(errorThrown)
      success:  (data, textStatus, jqXHR) ->
        if data?                                 # 対象あり
          $("#result").val(data[0].params.itemName) # 楽天から取得した商品名
        else                                     # 対象なし
          $("#result").css("color","#ff0000").html("対象データが存在しません")
