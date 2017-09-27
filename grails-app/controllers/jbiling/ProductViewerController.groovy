package jbiling


import groovy.sql.Sql
import java.sql.Connection
import java.sql.DriverManager
import java.sql.PreparedStatement
import java.sql.ResultSet
import java.sql.Statement
import org.springframework.jdbc.datasource.DriverManagerDataSource

class ProductViewerController {

    def index() { }
    def save(){ 
        def prod = Product.list().find { p -> p.id = params.product.id }
      
DriverManagerDataSource dataSource = new DriverManagerDataSource();
dataSource.setDriverClassName("org.postgresql.Driver");
dataSource.setUrl("jdbc:postgresql://localhost:5432/test");
dataSource.setUsername("postgres");
dataSource.setPassword("test123");
def sql = new Sql(dataSource)
def resultRows = sql.rows('select count(*) as count,sum(price) as sum,min(price) as min ,max(price) as max,avg(price) as avg from store where product_id = '+params.product.id )
def it = resultRows.first()        
int min = it.getAt('min')
int max = it.getAt('max') 
int avg = it.getAt('avg') 
int count = it.getAt('count')
int sum = it.getAt('sum')
//def idealPrice = (sum-min-max)/(count - 2)
def idealPrice = (sum-min-max)


        
ProductViewer productViewer = new ProductViewer(barCode : prod.barCode, description : prod.description, lowPrice : min, highPrice : max, averagePrice : avg, idealPrice : idealPrice);
[productViewer : productViewer]        
    }
}
