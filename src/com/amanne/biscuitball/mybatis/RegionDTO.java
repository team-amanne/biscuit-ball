/*============================================
 	RegionDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class RegionDTO
{
	private String regionCode; // �����õ���ȣ(PK)
	private String regionName; // �����õ��̸�

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
