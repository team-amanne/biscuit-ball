/*============================================
 	CityDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CityDTO
{
	private String cityCode; // 시군구번호(PK)
	private String cityName; // 시군구이름

	public String getCityCode()
	{
		return cityCode;
	}

	public void setCityCode(String cityCode)
	{
		this.cityCode = cityCode;
	}

	public String getCityName()
	{
		return cityName;
	}

	public void setCityName(String cityName)
	{
		this.cityName = cityName;
	}

}
