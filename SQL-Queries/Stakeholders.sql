SELECT		INV.name "Investimento"
		, RES.full_name "Gerente de Projetos"
		, RES.email "Email do Gerente de Projetos"
		, C_RES.tbg_phone "Telefone do Gerente de Projetos" --Atributo custom (pode ser retirado da query)
		, business_owner.name_bo "Dono do Negócio"
		, business_owner.email_bo "E-mail do Dono do Negócio"
		, business_owner.phone_bo "Telefone do Dono do Negócio" --Atributo custom (pode ser retirado da query)
		, pmo.name_pmo "Gerente do PMO"
		, pmo.email_pmo "Email do Gerente do PMO"
		, pmo.phone_pmo "Telefone do Gerente do PMO" --Atributo custom (pode ser retirado da query)
		, finance_governance.name_fg "G. de Finanças e governança"
		, finance_governance.email_fg "Email do G. de Fin. e Gov."
		, finance_governance.phone_fg "Telefone do G. de Fin. e Gov." --Atributo custom (pode ser retirado da query)	
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
					, C_RES_BO.tbg_phone phone_bo --Atributo custom (pode ser retirado da query)
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
					, C_RES_PMO.tbg_phone phone_pmo --Atributo custom (pode ser retirado da query)
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
					, C_RES_FG.tbg_phone phone_fg --Atributo custom (pode ser retirado da query)
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
