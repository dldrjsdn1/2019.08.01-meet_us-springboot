package Meet_Us.board.vo;

public class PageMaker {

	private PageCriteria cri;
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 5; // ȭ�鿡 ������ ������ ��ư�� ����  < 1, 2, 3, 4, 5 > ( �� 5�� ������ )

	public PageCriteria getCri() {
		return cri;
	}

	public void setCri(PageCriteria cri) {
		this.cri = cri;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	private void calcData() {
		// �� ������ ��ȣ = (���� ������ ��ȣ / ȭ�鿡 ������ ������ ��ȣ�� ����) * ȭ�鿡 ������ ������ ��ȣ�� ����
		endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);

		// ������ ������ ��ȣ = �� �Խñ� �� / �� �������� ������ �Խñ��� ����
		int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}

		// ���� ������ ��ȣ = (�� ������ ��ȣ - ȭ�鿡 ������ ������ ��ȣ�� ����) + 1
		startPage = (endPage - displayPageNum) + 1;
		if (startPage <= 0)
			startPage = 1;

		prev = startPage == 1 ? false : true;
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

}