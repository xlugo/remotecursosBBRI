dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "flugo"
	password = "flugo123"
	dialect = org.hibernate.dialect.MySQL5InnoDBDialec
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
	development {
		/*dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
			url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
		}
		*/
		dataSource{
			//dbCreate = "create"
			dbCreate = "validate"
			url = "jdbc:mysql://localhost/eati_ri"
		}
	}
	/*
	test {
		
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
		}
	   
		
	}
	
	 */
	
	production {
		
		/*
		dataSource {
			dbCreate = "update"
			url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
			pooled = true
			properties {
			   maxActive = -1
			   minEvictableIdleTimeMillis=1800000
			   timeBetweenEvictionRunsMillis=1800000
			   numTestsPerEvictionRun=3
			   testOnBorrow=true
			   testWhileIdle=true
			   testOnReturn=true
			   validationQuery="SELECT 1"
			}
		}
		*/
		
		dataSource{
			//dbCreate = "create"
			dbCreate = "update"
			url = "jdbc:mysql://localhost/flugo"
		}
		
	   
	}
	 
}
