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
                      $("#stock_unit").html("<option selected value='60'>シングル60m</option>\n<option value='50'>シングル50m</option>\n<option value='30'>ダブル30m</option>\n<option value='25'>ダブル25m</option>\n");
                      break;
                  case '2'://ティッシュペーパー
                      $("#stock_num").val(5);
                      $("label[for='stock_単位']").text("単位(組)");
                      $("#stock_unit").html("<option selected value='160'>160組</option>\n<option value='180'>180組</option>\n<option value='200'>200組</option>\n");
                      break;
                  case '3'://ボディーソープ
                      $("#stock_num").val(1);
                      $("label[for='stock_単位']").text("単位(ml)");
                      $("#stock_unit").html("<option selected value='300'>300ml</option>\n<option value='400'>400ml</option>\n<option value='500'>500ml</option>\n<option value='600'>600ml</option>\n<option value='700'>700ml</option>\n<option value='1000'>1000ml</option>\n");
                      break;
                  case '4'://洗濯洗剤
                      $("#stock_num").val(1);
                      $("label[for='stock_単位']").text("単位(ml)");
                      $("#stock_unit").html("<option selected value='300'>300ml</option>\n<option value='400'>400ml</option>\n<option value='500'>500ml</option>\n<option value='600'>600ml</option>\n<option value='700'>700ml</option>\n<option value='1000'>1000ml</option>\n");
                      break;
                  case '5'://シャンプー
                      $("#stock_num").val(1);
                      $("label[for='stock_単位']").text("単位(ml)");
                      $("#stock_unit").html("<option selected value='300'>300ml</option>\n<option value='400'>400ml</option>\n<option value='500'>500ml</option>\n<option value='600'>600ml</option>\n<option value='700'>700ml</option>\n<option value='1000'>1000ml</option>\n");
                      break;
                  }
                  //選ばれたアイテムによって単位と数量を変更
              //});
              //$("div").text(str);
        });
    });
}(jQuery);
