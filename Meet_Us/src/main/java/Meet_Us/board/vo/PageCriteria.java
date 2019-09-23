package Meet_Us.board.vo;

public class PageCriteria {
	private int page; // ���� ������ ��ȣ
	private int perPageNum; // �� �������� ������ �Խñ��� ����
	private String keyword; // ���� �������� �˻� Ű����

	// Ư�� �������� �Խñ� ���� ��ȣ, �Խñ� ���� �� ��ȣ
	public int getPageStart() {
		// ���� �������� �Խñ� ���� ��ȣ = (���� ������ ��ȣ - 1) * �������� ������ �Խñ� ����
		return (this.page - 1) * perPageNum;
	}

	public PageCriteria() {
		this.page = 1;
		this.perPageNum = 10;
		this.keyword = null; // null�� ���, �˻��� Ű���尡 ���� ��ü ����Ʈ�� ������
	}

	public int getPage() {
		return page;
	}

	// �������� �������� ���� �ʰ� ����, ������ �Ǹ� 1�������� ��Ÿ����.
	public void setPage(int page) {
		if (page <= 0)
			this.page = 1;
		else
			this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	// �������� ������ �Խñ� ���� ������ �ʰ� ����
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
