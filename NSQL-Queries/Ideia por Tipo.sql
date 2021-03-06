SELECT	@SELECT:DIM:USER_DEF:IMPLIED:IDEA:demandas.tipo:tipo@,
	@SELECT:METRIC:USER_DEF:IMPLIED:COUNT(demandas.idea_id):idea_count:AGG@

FROM	(
			  SELECT      lkp.name tipo
				      , inv.code idea_id
			  FROM        inv_ideas idea
			  INNER JOIN  inv_investments inv
				  ON  idea.id = inv.id
			  INNER JOIN  odf_ca_inv odfi
				  ON  inv.id = odfi.id
			  INNER JOIN  cmn_lookups_v lkp
				  ON  odfi.tbg_tipo = lkp.lookup_code
				  AND lkp.language_code = @where:param:language@
					--Filtro por status (atributo não nativo)
			  WHERE		(	odfi.tbg_status = 	@WHERE:PARAM:USER_DEF:STRING:status@
						OR                  	@WHERE:PARAM:USER_DEF:STRING:status@ is null
					)
					AND
					--Filtro por categoria (atributo não nativo)
					(	odfi.tbg_categoria = 	@WHERE:PARAM:USER_DEF:STRING:categoria@
						OR      		@WHERE:PARAM:USER_DEF:STRING:categoria@ is null
					)
					AND
					--Filtro por tipo (atributo não nativo)
					(	odfi.tbg_tipo = 	@WHERE:PARAM:USER_DEF:STRING:tipo@
						OR      		@WHERE:PARAM:USER_DEF:STRING:tipo@ is null
					)
					AND
					--Filtro por cliente (atributo não nativo)
					(	odfi.tbg_cliente = 	@WHERE:PARAM:USER_DEF:STRING:cliente@
						OR      		@WHERE:PARAM:USER_DEF:STRING:cliente@ is null
					)
	) demandas
		
WHERE		@FILTER@
GROUP BY	demandas.tipo
HAVING		@HAVING_FILTER@
