package net.prev.www.util;

public class Pager {
	private int page = 1;
	private int perPage = 3;
	private int perGroup = 5;
	private float total;
	private int search = 0;
	private String keyword;
	private String id;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
	public int getPerGroup() {
		return perGroup;
	}

	public void setPerGroup(int perGroup) {
		this.perGroup = perGroup;
	}


	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public int getSearch() {
		return search;
	}

	public void setSearch(int search) {
		this.search = search;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
