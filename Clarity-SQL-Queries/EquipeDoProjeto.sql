SELECT DISTINCT	INV.NAME "Investment Name",
					SRM.FULL_NAME "Resource",
          (
          select prole.last_name
          from srm_resources prole
          where prole.id=team.prroleid
          ) "Project Role",
					DECODE	(TEAM.PRBOOKING, 15, 'Hard', 10, 'Mixed', 5, 'Soft') "Booking Status",
					DECODE	(TEAM.PRISOPEN, 1, 'False', 0, 'True') "Open for time-entry"
FROM				INV_INVESTMENTS INV
		inner JOIN	PRTEAM TEAM
				ON	TEAM.PRPROJECTID = INV.ID
		 inner JOIN	SRM_RESOURCES SRM
				ON	SRM.ID = TEAM.PRRESOURCEID
WHERE				INV.CODE = 'PR1002' --Altere pelo código do seu projeto
