package Meet_Us.board.vo;

public class PageCriteria {
	private int page; // 현재 페이지 번호
	private int perPageNum; // 한 페이지당 보여줄 게시글의 갯수
	private String keyword; // 현재 페이지의 검색 키워드

	// 특정 페이지의 게시글 시작 번호, 게시글 시작 행 번호
	public int getPageStart() {
		// 현재 페이지의 게시글 시작 번호 = (현재 페이지 번호 - 1) * 페이지당 보여줄 게시글 갯수
		return (this.page - 1) * perPageNum;
	}

	public PageCriteria() {
		this.page = 1;
		this.perPageNum = 10;
		this.keyword = null; // null일 경우, 검색된 키워드가 없고 전체 리스트를 보여줌
	}

	public int getPage() {
		return page;
	}

	// 페이지가 음수값이 되지 않게 설정, 음수가 되면 1페이지를 나타낸다.
	public void setPage(int page) {
		if (page <= 0)
			this.page = 1;
		else
			this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	// 페이지당 보여줄 게시글 수가 변하지 않게 설정
	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if (pageCount != cnt)
			this.perPageNum = cnt;
		else
			this.perPageNum = pageCount;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

}
