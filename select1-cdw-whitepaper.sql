SELECT
   d_year,
   i_brand_id,
   i_brand,
   sum(ss_ext_discount_amt) sum_agg
FROM
   date_dim,
   store_sales,
   item
WHERE
       d_date_sk = ss_sold_date_sk
   AND i_item_sk = ss_item_sk
   AND i_manufact_id = 427
   AND d_moy = 11
GROUP BY
   d_year, I_brand, i_brand_id
 ORDER BY
   d_year, sum_agg DESC, brand_id
 LIMIT 100;
