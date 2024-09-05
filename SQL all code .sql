CREATE TABLE 'ventes_tbl' ('date' DATE,'produit' TEXT,'prix' INTEGER,'qte' INTEGER,'region' TEXT);
INSERT INTO 'ventes_tbl' ('date','produit','prix','qte','region') VALUES 
 ('2022-01-01','Produit A','10','100','Nord'), 
 ('2022-01-02','Produit B','15','50','Nord'), 
 ('2022-01-02','Produit A','10','75','Sud'), 
 ('2022-01-03','Produit C','20','30','Nord'), 
 ('2022-01-03','Produit A','10','150','Sud'), 
 ('2022-01-04','Produit B','15','75','Nord'), 
 ('2022-01-04','Produit C','20','50','Sud'), 
 ('2022-01-05','Produit A','10','125','Nord'), 
 ('2022-01-05','Produit B','15','100','Sud'), 
 ('2022-01-06','Produit C','20','25','Nord'), 
 ('2022-01-06','Produit A','10','100','Sud'), 
 ('2022-01-07','Produit B','15','60','Nord'), 
 ('2022-01-07','Produit C','20','40','Sud'), 
 ('2022-01-08','Produit A','10','80','Nord'), 
 ('2022-01-08','Produit B','15','90','Sud'), 
 ('2022-01-09','Produit C','20','35','Nord'), 
 ('2022-01-09','Produit A','10','120','Sud'), 
 ('2022-01-10','Produit B','15','70','Nord'), 
 ('2022-01-10','Produit C','20','60','Sud'), 
 ('2022-01-11','Produit A','10','150','Nord'), 
 ('2022-01-11','Produit B','15','80','Sud'), 
 ('2022-01-12','Produit C','20','40','Nord'), 
 ('2022-01-12','Produit A','10','200','Sud'), 
 ('2022-01-13','Produit B','15','100','Nord'), 
 ('2022-01-13','Produit C','20','60','Sud'), 
 ('2022-01-14','Produit A','10','120','Nord'), 
 ('2022-01-14','Produit B','15','50','Sud'), 
 ('2022-01-15','Produit C','20','30','Nord'), 
 ('2022-01-15','Produit A','10','75','Sud'), 
 ('2022-01-16','Produit B','15','90','Nord'), 
 ('2022-01-16','Produit C','20','75','Sud'), 
 ('2022-01-17','Produit A','10','180','Nord'), 
 ('2022-01-17','Produit B','15','100','Sud'), 
 ('2022-01-18','Produit C','20','50','Nord'), 
 ('2022-01-18','Produit A','10','150','Sud'), 
 ('2022-01-19','Produit B','15','70','Nord'), 
 ('2022-01-19','Produit C','20','80','Sud'), 
 ('2022-01-20','Produit A','10','125','Nord'), 
 ('2022-01-20','Produit B','15','120','Sud');
 
 select *
 FROM ventes_tbl
 ;
 
 
 select 
 sum (prix*qte) as total_revenue
 from  ventes_tbl
 ;
 
 select 
 produit, prix as product_unit_price,
 sum (prix*qte) as revenue_by_product,
  sum (qte) as sales_by_product
 from  ventes_tbl
 GROUP by produit
 ;
 
 select 
 region, sum (prix*qte) as revenue_by_region
 from  ventes_tbl
 GROUP by region
 ;
 
 select 
 region, produit, prix,
 sum(qte) as sales_by_region,
 sum (prix*qte) as revenue_by_region
 from  ventes_tbl
 GROUP by region, produit
 ;
 
 select 
 date, 
 sum(qte) as qty_per_day,
 sum(prix*qte) as reveune_per_day
 from ventes_tbl
 GROUP by date
 ;
 