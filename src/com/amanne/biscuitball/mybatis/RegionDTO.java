/*============================================
 	RegionDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class RegionDTO
{
	private String regionCode; // 광역시도번호(PK)
	private String regionName; // 광역시도이름

	public String getRegionCode()
	{
		return regionCode;
	}

	public void setRegionCode(String regionCode)
	{
		this.regionCode = regionCode;
	}

	public String getRegionName()
	{
		return regionName;
	}

	public void setRegionName(String regionName)
	{
		this.regionName = regionName;
	}

}
