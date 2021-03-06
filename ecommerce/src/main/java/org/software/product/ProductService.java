package org.software.product;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import org.software.util.DataBase;

@Path("/product")
public class ProductService {
	@POST
	@Path("/")
	@Consumes({ "application/json" })
	@Produces("application/json")
	public Response add(Product product) {
		DataBase database = new DataBase();
		Connection connection1 = null;
		PreparedStatement preparedStatement1 = null;
		String sql = "";
		String mensaje = "";
		int inserteds = 0;
		try {
			connection1 = database.getConnection("admin");
			
			sql = "INSERT INTO products.(rating_cache, rating_count, name, pricing, icon, short_description, long description)";
			sql += " VALUES (?, ?, ?, ?, ?, ?, ?)";
			
			preparedStatement1 = connection1.prepareStatement(sql);
			preparedStatement1.setDouble(1, product.getRating_cache());
			preparedStatement1.setInt(2, product.getRating_count());
			preparedStatement1.setString(3, product.getName());
			preparedStatement1.setDouble(4, product.getPricing());			
			preparedStatement1.setString(5, product.getShort_description());
			preparedStatement1.setString(6, product.getLong_description());
			preparedStatement1.setString(7, product.getIcon());
			inserteds = preparedStatement1.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		} finally {
			database.closeObject(preparedStatement1);
			database.closeObject(connection1);
		}
		
		if (inserteds > 0) {
			mensaje = "{\"mensaje\":\"Adicionar OK\"}";
			return Response.status(200).entity(mensaje).build();
		} else {
			mensaje = "{\"mensaje\":\"Error al adicionar\"}";
			return Response.status(400).entity(mensaje).build();
		}
	}

	@GET
	@Path("/")
	@Produces("application/json")
 // @Produces("application/xml")
	public ProductList getAll() {
		ArrayList<Product> productList = new ArrayList<Product>();
		DataBase database = new DataBase();
		Connection connection1 = null;
		Statement statement1 = null;
		ResultSet rs1 = null;
		String sql = "";
		try {
			connection1 = database.getConnection("admin");
			statement1 = connection1.createStatement();
			sql = "select * from products";
			rs1 = statement1.executeQuery(sql);
			while (rs1.next()) {
				int id = rs1.getInt("id");
				int published = rs1.getInt("published");
				double rating_cache = rs1.getDouble("rating_cache");
				int rating_count = rs1.getInt("rating_count");
				int category_id = rs1.getInt("category_id");
				String name = rs1.getString("name");
				double pricing = rs1.getDouble("pricing");
				String short_description = rs1.getString("short_description");
				String long_description = rs1.getString("long_description");
				String icon = rs1.getString("icon");
				Product product =  new Product();
				product.setId(id);
				product.setPublished(published);
				product.setRating_cache(rating_cache);
				product.setRating_count(rating_count);
				product.setCategory_id(category_id);
				product.setName(name);
				product.setPricing(pricing);
				product.setShort_description(short_description);
				product.setLong_description(long_description);
				product.setIcon(icon);
				productList.add(product);
			}
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		} finally {
			database.closeObject(rs1);
			database.closeObject(statement1);
			database.closeObject(connection1);
		}
		return new ProductList(productList);
	}

	@PUT
	@Path("/{id}")
	@Consumes({ "application/json" })
	@Produces("application/json")
	public Response update(Product product, @PathParam(value = "id") int id) {
		DataBase database = new DataBase();
		Connection connection1 = null;
		PreparedStatement preparedStatement1 = null;
		String sql = "";
		String mensaje = "";
		int updates = 0;
		try {
			connection1 = database.getConnection("admin");
			sql = "UPDATE products SET published=?, name=?, icon=?";
			sql += " WHERE id=?";
			preparedStatement1 = connection1.prepareStatement(sql);

			preparedStatement1.setInt(1, product.getPublished());
			preparedStatement1.setDouble(2, product.getRating_cache());
			preparedStatement1.setString(2, product.getName());
			preparedStatement1.setString(3, product.getIcon());
			preparedStatement1.setInt(4, id);
			updates = preparedStatement1.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		} finally {
			database.closeObject(preparedStatement1);
			database.closeObject(connection1);
		}
		if (updates > 0) {
			mensaje = "{\"mensaje\":\"Modificar OK\"}";
			return Response.status(200).entity(mensaje).build();
		} else {
			mensaje = "{\"mensaje\":\"Error al modificar\"}";
			return Response.status(400).entity(mensaje).build();
		}
	}

	@DELETE
	@Path("/{id}")
	@Consumes({ "application/json" })
	@Produces("application/json")
	public Response adicionar(@PathParam(value = "id") int id) {
		DataBase database = new DataBase();
		Connection connection1 = null;
		PreparedStatement preparedStatement1 = null;
		String sql = "";
		String mensaje = "";
		int deleteds = 0;
		try {
			connection1 = database.getConnection("admin");
			sql = "DELETE FROM products WHERE id=?";
			preparedStatement1 = connection1.prepareStatement(sql);
			preparedStatement1.setInt(1, id);
			deleteds = preparedStatement1.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		} finally {
			database.closeObject(preparedStatement1);
			database.closeObject(connection1);
		}
		if (deleteds > 0) {
			mensaje = "{\"mensaje\":\"Eliminar OK\"}";
			return Response.status(200).entity(mensaje).build();
		} else {
			mensaje = "{\"mensaje\":\"Error al eliminar\"}";
			return Response.status(400).entity(mensaje).build();
		}
	}
}
	

