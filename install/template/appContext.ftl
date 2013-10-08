<Context path="/${ctxPath}">
	<Resource name="jdbc/eams" 
		auth="Container" 
		type="javax.sql.DataSource" 
		driverClassName="${dbType.driverClassName}"
		url="${jdbcUrl}"
		username="${dbUser}" 
		password="${(dbPassword)!}" 
		maxActive="${maxActive}" 
		maxIdle="${maxIdle}" 
		maxWait="${maxWait}"
	/>
 </Context>