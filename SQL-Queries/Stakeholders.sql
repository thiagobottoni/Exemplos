SELECT		INV.name "Investment Name"
		, RES.full_name "Project Manager"
		, RES.email "Project Manager's Email"
		, C_RES.tbg_phone "Project Manager's Phone"
		, business_owner.name_bo "Business Owner"
		, business_owner.email_bo "Business Owner's Email"
		, business_owner.phone_bo "Business Owner's Phone"
		, pmo.name_pmo "PMO Manager"
		, pmo.email_pmo "PMO Manager's Email"
		, pmo.phone_pmo "PMO Manager's Phone"
		, finance_governance.name_fg "Finance and Governance"
		, finance_governance.email_fg "Finance and Governance Email"
		, finance_governance.phone_fg "Finance and Governance Phone"		
FROM 		INV_INVESTMENTS INV
INNER JOIN	INV_PROJECTS PROJ
	ON	INV.id = PROJ.prid
INNER JOIN	ODF_CA_PROJECT C_PROJ
	ON	PROJ.prid = C_PROJ.id
INNER JOIN      SRM_RESOURCES RES
	ON      INV.manager_id = RES.user_id
INNER JOIN	ODF_CA_RESOURCE C_RES
	ON	RES.id = C_RES.id
INNER JOIN
		(
			SELECT		C_PROJ_BO.id id_bo
					, RES_BO.full_name name_bo
					, RES_BO.email email_bo
					, C_RES_BO.tbg_phone phone_bo
			FROM		ODF_CA_PROJECT C_PROJ_BO
			INNER JOIN	SRM_RESOURCES RES_BO
				ON	C_PROJ_BO.obj_stakeholder1 = RES_BO.id
			INNER JOIN	ODF_CA_RESOURCE C_RES_BO
				ON	RES_BO.id = C_RES_BO.id
		) business_owner
	ON	INV.id = business_owner.id_bo
INNER JOIN
		(
			SELECT		C_PROJ_PMO.id id_pmo
					, RES_PMO.full_name name_pmo
					, RES_PMO.email email_pmo
					, C_RES_PMO.tbg_phone phone_pmo
			FROM		ODF_CA_PROJECT C_PROJ_PMO
			INNER JOIN	SRM_RESOURCES RES_PMO
				ON	C_PROJ_PMO.obj_stakeholder2 = RES_PMO.id
			INNER JOIN	ODF_CA_RESOURCE C_RES_PMO
				ON	RES_PMO.id = C_RES_PMO.id
		) pmo
	ON INV.id = pmo.id_pmo
INNER JOIN
		(
			SELECT		C_PROJ_FG.id id_fg
					, RES_FG.full_name name_fg
					, RES_FG.email email_fg
					, C_RES_FG.tbg_phone phone_fg
			FROM		ODF_CA_PROJECT C_PROJ_FG
			INNER JOIN	SRM_RESOURCES RES_FG
				ON	C_PROJ_FG.obj_stakeholder3 = RES_FG.id
			INNER JOIN	ODF_CA_RESOURCE C_RES_FG
				ON	RES_FG.id = C_RES_FG.id
		) finance_governance
	ON INV.id = finance_governance.id_fg
WHERE	INV.odf_object_code = 'project'
	AND PROJ.is_template = 0 
	AND PROJ.is_program = 0
