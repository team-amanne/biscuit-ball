/*============================================
 	CrewMemberDTO.java
 	2020.07.30
=============================================*/

package com.amanne.biscuitball.mybatis;

public class CrewMemberDTO
{
	private String courtReviewCode; 			// ��Ʈ�����ڵ�
	private String courtReviewContent; 			// ��Ʈ���䳻��
	private double courtReviewManageScore; 		// ��������
	private String courtReviewRegisteredDate; 	// ����Ͻ�
	private double courtReviewSatisfaction; 	// ������
	private String courtCapacityCode; 			// �����ο����ڵ�
	private int minCourtCapacity; 				// �ּ��ο���
	private int maxCourtCapacity; 				// �ִ��ο���
	private String courtCode; 					// ��Ʈ�ڵ�
	private String registrantAccountCode; 		// ���ȸ�������ڵ�
	private String registrantNickname; 			// ���ȸ���г���
	private String courtReviewDelDate; 			// �����Ͻ�
	private String courtReviewStatus; 			// ����
	private int likes; 							// ���ƿ��
	private int dislikes; 						// �Ⱦ���
	private boolean toilet; 					// ȭ�������
	private boolean shower; 					// ����������
	private boolean parkinglot; 				// ����������
	private boolean pollOrNot; 					// ��ǥ ����
	private boolean pollLikeOrDislike; 			// ���ƿ�/�Ⱦ�� ��ǥ����

	public String getCourtReviewCode()
	{
		return courtReviewCode;
	}

	public void setCourtReviewCode(String courtReviewCode)
	{
		this.courtReviewCode = courtReviewCode;
	}

	public String getCourtReviewContent()
	{
		return courtReviewContent;
	}

	public void setCourtReviewContent(String courtReviewContent)
	{
		this.courtReviewContent = courtReviewContent;
	}

	public double getCourtReviewManageScore()
	{
		return courtReviewManageScore;
	}

	public void setCourtReviewManageScore(double courtReviewManageScore)
	{
		this.courtReviewManageScore = courtReviewManageScore;
	}

	public String getCourtReviewRegisteredDate()
	{
		return courtReviewRegisteredDate;
	}

	public void setCourtReviewRegisteredDate(String courtReviewRegisteredDate)
	{
		this.courtReviewRegisteredDate = courtReviewRegisteredDate;
	}

	public double getCourtReviewSatisfaction()
	{
		return courtReviewSatisfaction;
	}

	public void setCourtReviewSatisfaction(double courtReviewSatisfaction)
	{
		this.courtReviewSatisfaction = courtReviewSatisfaction;
	}

	public String getCourtCapacityCode()
	{
		return courtCapacityCode;
	}

	public void setCourtCapacityCode(String courtCapacityCode)
	{
		this.courtCapacityCode = courtCapacityCode;
	}

	public int getMinCourtCapacity()
	{
		return minCourtCapacity;
	}

	public void setMinCourtCapacity(int minCourtCapacity)
	{
		this.minCourtCapacity = minCourtCapacity;
	}

	public int getMaxCourtCapacity()
	{
		return maxCourtCapacity;
	}

	public void setMaxCourtCapacity(int maxCourtCapacity)
	{
		this.maxCourtCapacity = maxCourtCapacity;
	}

	public String getCourtCode()
	{
		return courtCode;
	}

	public void setCourtCode(String courtCode)
	{
		this.courtCode = courtCode;
	}

	public String getRegistrantAccountCode()
	{
		return registrantAccountCode;
	}

	public void setRegistrantAccountCode(String registrantAccountCode)
	{
		this.registrantAccountCode = registrantAccountCode;
	}

	public String getRegistrantNickname()
	{
		return registrantNickname;
	}

	public void setRegistrantNickname(String registrantNickname)
	{
		this.registrantNickname = registrantNickname;
	}

	public String getCourtReviewDelDate()
	{
		return courtReviewDelDate;
	}

	public void setCourtReviewDelDate(String courtReviewDelDate)
	{
		this.courtReviewDelDate = courtReviewDelDate;
	}

	public String getCourtReviewStatus()
	{
		return courtReviewStatus;
	}

	public void setCourtReviewStatus(String courtReviewStatus)
	{
		this.courtReviewStatus = courtReviewStatus;
	}

	public int getLikes()
	{
		return likes;
	}

	public void setLikes(int likes)
	{
		this.likes = likes;
	}

	public int getDislikes()
	{
		return dislikes;
	}

	public void setDislikes(int dislikes)
	{
		this.dislikes = dislikes;
	}

	public boolean isToilet()
	{
		return toilet;
	}

	public void setToilet(boolean toilet)
	{
		this.toilet = toilet;
	}

	public boolean isShower()
	{
		return shower;
	}

	public void setShower(boolean shower)
	{
		this.shower = shower;
	}

	public boolean isParkinglot()
	{
		return parkinglot;
	}

	public void setParkinglot(boolean parkinglot)
	{
		this.parkinglot = parkinglot;
	}

	public boolean isPollOrNot()
	{
		return pollOrNot;
	}

	public void setPollOrNot(boolean pollOrNot)
	{
		this.pollOrNot = pollOrNot;
	}

	public boolean isPollLikeOrDislike()
	{
		return pollLikeOrDislike;
	}

	public void setPollLikeOrDislike(boolean pollLikeOrDislike)
	{
		this.pollLikeOrDislike = pollLikeOrDislike;
	}

}
