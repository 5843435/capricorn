+function ($) {
    $(function(){
        $('#stock_item_id').change(function(){
              var str = "";
              var stock_unit = "";
              var stock_num = "";
              //選ばれたアイテムによって単位と数量を変更
              switch ($(this).val()) {
                  case '1'://トイレットペーパー
                      $("#stock_num").val(12);
                      $("label[for='stock_単位']").text("単位(m)");
                      $("#stock_unit").val(30);
                      break;
                  case '2'://ティッシュペーパー
                      $("#stock_num").val(5);
                      $("label[for='stock_単位']").text("単位(組)");
                      $("#stock_unit").val(160);
                      break;
                  case '3'://ボディーソープ
                      $("#stock_num").val(1);
                      $("label[for='stock_単位']").text("単位(ml)");
                      $("#stock_unit").val(500);
                      break;
                  case '4'://洗濯洗剤
                      $("#stock_num").val(1);
                      $("label[for='stock_単位']").text("単位(ml)");
                      $("#stock_unit").val(500);
                      break;
                  case '5'://シャンプー
                      $("#stock_num").val(1);
                      $("label[for='stock_単位']").text("単位(ml)");
                      $("#stock_unit").val(500);
                      break;
                  }
                  //選ばれたアイテムによって単位と数量を変更
              //});
              //$("div").text(str);
        });
    });
}(jQuery);
