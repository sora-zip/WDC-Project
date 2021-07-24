package com.tig.wdc.admin.commons;

import java.util.Comparator;

import com.tig.wdc.admin.model.dto.TotalDTO;

public class DateSortDesc implements Comparator<TotalDTO>{

	@Override
	public int compare(TotalDTO o1, TotalDTO o2) {
		
		return o2.getEnrollDate().compareTo(o1.getEnrollDate());
	}

}
