package net.dsk.shoppingbackend.dao;

import java.util.List;

import net.dsk.shoppingbackend.dto.Category;

public interface CategoryDAO {
	List<Category> list();
	Category get(int id);
}
