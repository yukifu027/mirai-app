$(function(){
  function addPlace(place) {
    let html = `
      <div class="place-list clearfix">
        <a href= "/places/${place.id}", class="place-list__name">${place.name}</a>
      </div>
    `;
    $("#place-search-result").append(html);
  }

  function addNoPlace() {
    let html = `
      <div class="place-list clearfix">
        <p class="place-list__name">場所が見つかりません</p>
      </div>
    `;
    $("#place-search-result").append(html);
  }

  $("#text-field").on("keyup", function(){
    let input = $("#text-field").val();
    $.ajax({
      type: "GET",
      url: "/",
      data: { keyword: input },
      dataType: "json"
    })
      .done(function(places_key) {
        $("#place-search-result").empty();

        if (places_key.length !== 0) {
          places_key.forEach(function(place) {
            addPlace(place);
          });
        } else if (input.length == 0) {
          return false;
        } else {
          addNoPlace();
        }
      })
      .fail(function() {
        alert("通信エラーです。検索結果が表示できません。");
      });
  });
});