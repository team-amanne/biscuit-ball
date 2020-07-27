package com.amanne.biscuitball.mybatis;

import java.util.ArrayList;

public interface IRegionDAO
{
	public ArrayList<RegionDTO> getRegionList(); // 광역시/도 조회

	public ArrayList<CityDTO> getCityList(String regionCode); // 시군구 조회
	
	public RegionDTO getRegionName(String regionCode); // 광역시/도 코드로 이름 찾기
}
