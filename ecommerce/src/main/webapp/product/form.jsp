<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form id="productForm" method="POST" action="../ws/product/">
			<input type="hidden" id="id" name="id" value="" />
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Items Form</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="category_id">Category</label>
						<!-- selected -->
						<select id="category_id" name="category_id" class="form-control">
							<option value="1">Fijo</option>
							<option value="2">Giratorio</option>
							<option value="3">Estaciones</option>
							<option value="4">Otros</option>
						</select>
					</div>
					<div class="form-group">
						<label for="name">Name</label>
						 <input type="text" class="form-control" id="name" name="name" placeholder="">
					</div>
					<div class="form-group">
						<label for="pricing">Pricing</label>
						 <input type="number" class="form-control" id="pricing" name="pricing" placeholder="">
					</div>
					<div class="form-group">
						<label for="icon">Icon</label> <input type="text"
							class="form-control" id="icon" name="icon" placeholder="">
					</div>
					<div class="form-group">
						<label for="rating_cache">Rating_cache</label> <input type="text"
							class="form-control" id="rating_cache" name="rating_cache" placeholder="3">
					</div>
					<div class="form-group">
						<label for="rating_count">Rating_count</label> <input type="text"
							class="form-control" id="rating_count" name="rating_count" placeholder="0">
					</div>
					<div class="form-group">
						<label for="short_description">Short_description</label> <input type="text"
							class="form-control" id="short_description" name="short_description" placeholder="">
					</div>
					<div class="form-group">
						<label for="long_description">Long_description</label> <input type="text"
							class="form-control" id="long_description" name="long_description" placeholder="">
					</div>																		
					<div class="form-group">
						<label for="published">Published</label>
						<!-- selected -->
						<select id="published" name="published" class="form-control">
							<option value="1">Published</option>
							<option value="0">Not published</option>
						</select>
					</div>
				</div>
				<!-- end modal-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-primary" id="sendJSON">Save
						changes</button>
				</div>
			</div>
			<!-- end modal-content -->
		</form>
	</div>
</div>
