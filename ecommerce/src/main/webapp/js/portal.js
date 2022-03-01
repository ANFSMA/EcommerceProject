function getCategories(category_id) {
	$.getJSON("../ws/portal/categories", function(result) {
		data = result.data;
		$("#div_categories").empty();
		for (var row = 0; row < data.length; row = row + 1) {
			var id = data[row].id;
			var name = data[row].name;
			var published = data[row].published;
			var icon = data[row].icon;
			var item_class = "dropdown-item";
			if (id == category_id) {
				item_class = "dropdown-item";
			}
			$("#div_categories").append(
					"<a href='javascript:getProducts(" + id
							+ ");' id='category_" + id + "' class='"
							+ item_class + "'>" + name + "</a>");
		}
	});
}
function getProducts(category_id) {
	$('.list-group-item').removeClass('active').addClass('');
	$("#category_" + category_id).addClass('active');
	$.getJSON("../ws/portal/products/" + category_id, function(result) {
		data = result.data;
		$("#div_products").empty();
		for (var row = 0; row < data.length; row = row + 1) {
			var id = data[row].id;
			var name = data[row].name;
			var published = data[row].published;
			var icon = data[row].icon;
			var pricing = data[row].pricing;
			var short_description = data[row].short_description;
			var url = "../item.jsp?id=" + id;
			var item = '<section class="py-5" id="div_products">'
			item += '<div class="container px-4 px-lg-5 mt-5">'
			item += '<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">';
			item += '<div class="col mb-5">';
			item += '<div class="card h-100">';
			item += '<a id="link_title" href="' + url + '">';
			item += '<img class="card-img-top" src="../fotos/' + icon + '"alt="...">';
			item += '</a>';
			item += '<div class="card-body p-4">';
			item += '<div class="text-center">'
			item += '<h5 class="fw-bolder">';
			item += '<a href="' + url + '">' + name + '</a>';
			item += '</h5>';
			item += '<div class="d-flex justify-content-center small text-warning mb-2">'
			item += '<div class="bi-star-fill"></div>'
			item +=	'<div class="bi-star-fill"></div>'
			item +=	'<div class="bi-star-fill"></div>'
			item +=	'<div class="bi-star-fill"></div>'
			item +=	'<div class="bi-star-fill"></div>'
			item += '</div>'
			item += '$' + pricing +'';
			item += '</div>';
			item += '</div>';
			item += '<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">';
			item += '<div class="text-center">'
			item += '<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>';
			item += '</div>';
			item += '</div>';
			item += '</div>';
			item += '</div>';
			$("#div_products").append(item);
		}
	});
}
