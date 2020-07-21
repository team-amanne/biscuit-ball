package com.amanne.biscuitball.mybatis;

import java.util.List;

public interface ILegendDAO
{
	public List<RegionDTO> getRegionList(); // 광역시/도 조회

	public List<CityDTO> getCityList(String regionCode); // 시군구 조회
}
