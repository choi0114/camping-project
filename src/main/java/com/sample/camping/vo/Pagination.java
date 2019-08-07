package com.sample.camping.vo;

public class Pagination {
	private int page;	// 현재 페이지 번호				
	private int size;	// 한 화면에 표시할 데이터 갯수
	private int pages;	// 한번에 표시할 페이지번호 갯수
	private int records;	// 조회된 전체 데이터 갯수

	private int totalPages;			
	private int totalBlocks;			
	private int currentBlock;		

	public Pagination(int page, int records) {   
		this.page = page;
		this.size = 10;
		this.pages = 10;
		this.records = records;
		init();
	}

	public Pagination(int page, int size, int records) {   
		this.page = page;
		this.size = size;
		this.pages = 10;
		this.records = records;
		init();
	}

	public Pagination(int page, int size, int pages, int records) {   
		this.page = page;
		this.size = size;
		this.pages = pages;
		this.records = records;
		init();
	}

	// 현재 페이지번호 반환
	public int getPage() {
		return page;
	}
	
	public int getTotalBlocks() {
		return totalBlocks;
	}
	
	public int getTotalPages() {
		return totalPages;
	}

	// 첫페이지인지 여부를 반환
	public boolean isFirst() {
		if (page == 1) {
			return true;
		}
		return false;
	}

	// 마지막 페이지인지 여부를 반환
	public boolean isLast() {
		if (page == totalPages) {
			return true;
		}
		return false;
	}

	// 현재 페이지번호에 해당하는 블록의 시작페이지 번호 반환
	public int getBegin() {
		if (records <= 0) {
			return 0;
		}

		if (currentBlock >= totalBlocks) {
			currentBlock = totalBlocks;
		}
		return (currentBlock - 1) * pages + 1;
	}

	// 현재 페이지번호에 해당하는 블록의 마지막페이지 번호 반환
	public int getEnd() {
		if (records <= 0) {
			return 0;
		}
		if (currentBlock >= totalBlocks) {
			return totalPages;
		}
		return currentBlock*pages;
	}

	private void init() {
		// 현재 페이지번호가 0보다 작거나 같으면 1로 설정
		if (page <= 0) {
			page = 1;
		}
		// 전체 페이지 갯수 계산하기
		totalPages = (int) (Math.ceil((double) records/size));
		// 현재 페이지 번호가 전체 페이지갯수가 보다 크거나 같으면 페이지번호로 설정
		if (page >= totalPages) {
			page = totalPages;
		}
		// 전체 블록갯수 계산하기
		totalBlocks = (int) (Math.ceil((double) totalPages/pages));
		// 현재 페이지번호에 해당하는 블록 번호 계산하기
		currentBlock = (int) (Math.ceil((double) page/pages));
	}
}
