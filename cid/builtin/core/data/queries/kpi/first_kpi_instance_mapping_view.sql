CREATE OR REPLACE VIEW kpi_instance_mapping AS 
SELECT *
FROM
  (
 VALUES 
  ROW ('a1', 'AmazonEC2', 'Current', 'Graviton', '', '', '', '')
, ROW ('c1', 'AmazonEC2', 'Previous', 'Intel','c6i','c6a','c7g', '')
, ROW ('c3', 'AmazonEC2', 'Previous', 'Intel','c6i','c6a','c7g', '')
, ROW ('c4', 'AmazonEC2', 'Previous', 'Intel','c6i','c6a','c7g', '')
, ROW ('c5', 'AmazonEC2', 'Previous', 'Intel','c6i','c6a','c7g', '')
, ROW ('c5a', 'AmazonEC2', 'Previous', 'AMD', '','c6a','c7g', '')
, ROW ('c5ad', 'AmazonEC2', 'Current', 'AMD', '', 'c5ad', 'c6gd', '')
, ROW ('c5d', 'AmazonEC2', 'Current', 'Intel', '', 'c5ad', 'c6gd', '')
, ROW ('c5n', 'AmazonEC2', 'Current', 'Intel','c6in', '', 'c7gn', '')
, ROW ('c6a', 'AmazonEC2', 'Current', 'AMD', '','c6a', '', '')
, ROW ('c6g', 'AmazonEC2', 'Previous', 'Graviton', '', '','c7g', 'c5')
, ROW ('c6gd', 'AmazonEC2', 'Current', 'Graviton', '', '', '', 'c5d')
, ROW ('c6gn', 'AmazonEC2', 'Previous', 'Graviton', '', '','c7gn', 'c5n')
, ROW ('c6i', 'AmazonEC2', 'Current', 'Intel', '', 'c6a', 'c6g','c5')
, ROW ('c6id', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('c6in', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('c7g', 'AmazonEC2', 'Current', 'Graviton', '', '', '', 'c5')
, ROW ('cc2', 'AmazonEC2', 'Current', 'Intel', 'c6i', 'c6a', 'c7g', '')
, ROW ('cr1', 'AmazonEC2', 'Current', 'Intel', 'r6i', 'r6a', 'r7g', '')
, ROW ('d2', 'AmazonEC2', 'Previous', 'Intel', 'd3', '', '', '')
, ROW ('d3', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('d3en', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('dl1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('f1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('g2', 'AmazonEC2', 'Previous', 'Intel','g5', '', '', '')
, ROW ('g3', 'AmazonEC2', 'Previous', 'Intel','g5', '', '', '')
, ROW ('g3s', 'AmazonEC2', 'Previous', 'Intel','g5', '', '', '')
, ROW ('g4ad', 'AmazonEC2', 'Current', 'AMD', '', '', '', '')
, ROW ('g4dn', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('g5', 'AmazonEC2', 'Current', 'Intel', '', '', 'g5g', '')
, ROW ('g5g', 'AmazonEC2', 'Current', 'Graviton', '', '', '', 'g5')
, ROW ('h1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('hs1', 'AmazonEC2', 'Current', 'Intel', 'd3', '', '', '')
, ROW ('i2', 'AmazonEC2', 'Previous', 'Intel', 'i3', '', '', '')
, ROW ('i3', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('i3en', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('i3p', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('i4g', 'AmazonEC2', 'Current', 'Graviton', '', '', '', '')
, ROW ('i4i', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('im4gn', 'AmazonEC2', 'Current', 'Graviton', '', '', '', '')
, ROW ('inf1', 'AmazonEC2', 'Previous', 'Intel', '', '', '', '')
, ROW ('inf2', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('is4gen', 'AmazonEC2', 'Current', 'Graviton', '', '', '', '')
, ROW ('m1', 'AmazonEC2', 'Previous', 'Intel', 'm6i', 'm6a', 'm7g', '')
, ROW ('m2', 'AmazonEC2', 'Previous', 'Intel', 'm6i', 'm6a', 'm7g', '')
, ROW ('m3', 'AmazonEC2', 'Previous', 'Intel', 'm6i', 'm6a', 'm7g', '')
, ROW ('m4', 'AmazonEC2', 'Previous', 'Intel', 'm6i', 'm6a', 'm7g', '')
, ROW ('m5', 'AmazonEC2', 'Previous', 'Intel', 'm6i', 'm6a', 'm7g', '')
, ROW ('m5a', 'AmazonEC2', 'Previous', 'AMD', 'm6i', 'm6a', 'm7g', '')
, ROW ('m5ad', 'AmazonEC2', 'Current', 'AMD', '', '', 'm6gd', '')
, ROW ('m5d', 'AmazonEC2', 'Previous', 'Intel', 'm6id', 'm6a', 'm6gd', '')
, ROW ('m5dn', 'AmazonEC2', 'Previous', 'Intel', 'm6idn', '', '', '')
, ROW ('m5n', 'AmazonEC2', 'Previous', 'Intel', 'm6in', '', '', '')
, ROW ('m5zn', 'AmazonEC2', 'AmazonEC2', 'Intel', 'm6in', '', '', '')
, ROW ('m6a', 'AmazonEC2', 'Current', 'AMD', '', '', 'm7g', '')
, ROW ('m6g', 'AmazonEC2', 'Previous', 'Graviton', '', '','m7g', 'm5')
, ROW ('m6gd', 'AmazonEC2', 'Current', 'Graviton', '', '', '', 'm5d')
, ROW ('m6i', 'AmazonEC2', 'Current', 'Intel', '', '', 'm7g', '')
, ROW ('m6idn', 'AmazonEC2', 'Current', 'Intel', '', '', 'm6gd', '')
, ROW ('m6in', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('m7g', 'AmazonEC2', 'Current', 'Graviton', '', '', '','m6')
, ROW ('mac1', 'AmazonEC2', 'Previous', 'Intel', '', '', '', '')
, ROW ('mac2', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('p2', 'AmazonEC2', 'Previous', 'Intel', 'p3', '', '', '')
, ROW ('p3', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('p3dn', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('p4d', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('r3', 'AmazonEC2', 'Previous', 'Intel', 'r6i', 'r6a', 'r7g', '')
, ROW ('r4', 'AmazonEC2', 'Previous', 'Intel', 'r6i', 'r6a', 'r7g', '')
, ROW ('r5', 'AmazonEC2', 'Previous', 'Intel', 'r6i', 'r6a', 'r6g', '')
, ROW ('r5a', 'AmazonEC2', 'Previous', 'AMD', '', '', 'r7g', '')
, ROW ('r5ad', 'AmazonEC2', 'Current', 'AMD', '', '', 'r6gd', '')
, ROW ('r5b', 'AmazonEC2', 'Previous', 'Intel', '', '', '', '')
, ROW ('r5d', 'AmazonEC2', 'Previous', 'Intel','r6id', 'r5ad', 'r6gd', '')
, ROW ('r5dn', 'AmazonEC2', 'Current', 'Intel','r6idn', '', '', '')
, ROW ('r5n', 'AmazonEC2', 'Previous', 'Intel','r6in', 'r5', 'r6g', '')
, ROW ('r6a', 'AmazonEC2', 'Current', 'AMD', '', '', 'r7g', '')
, ROW ('r6g', 'AmazonEC2', 'Previous', 'Graviton', '', '', '', 'r5')
, ROW ('r6gd', 'AmazonEC2', 'Current', 'Graviton', '', '', '', 'r5')
, ROW ('r6i', 'AmazonEC2', 'Current', 'Intel', '', 'r5a', 'r6g', '')
, ROW ('r6id', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('r6idn', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('r6in', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('r7g', 'AmazonEC2', 'Current', 'Graviton', '', '', '', '')
, ROW ('t1', 'AmazonEC2', 'Previous', 'Intel', 't3', 't3a', 't4g', '')
, ROW ('t2', 'AmazonEC2', 'Previous', 'Intel', 't3', 't3a', 't4g', '')
, ROW ('t3', 'AmazonEC2', 'Current', 'Intel', '', '', 't4g', '')
, ROW ('t3a', 'AmazonEC2', 'Current', 'AMD', '', '', 't4g', '')
, ROW ('t4g', 'AmazonEC2', 'Current', 'Graviton', '', '', '', 't3')
, ROW ('u-12tb1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('u-18tb1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('u-24tb1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('u-6tb1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('u-9tb1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('vt1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('x1', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('x1e', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('x2gd', 'AmazonEC2', 'Current', 'Graviton', '', '', '', '')
, ROW ('x2idn', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('x2iedn', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('x2iezn', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('z1d', 'AmazonEC2', 'Current', 'Intel', '', '', '', '')
, ROW ('c1', 'AmazonElastiCache', 'Previous', 'Intel', '', '', '', '')
, ROW ('m1', 'AmazonElastiCache', 'Previous', 'Intel', 'm5', '', 'm6g', '')
, ROW ('m2', 'AmazonElastiCache', 'Previous', 'Intel', 'm5', '', 'm6g', '')
, ROW ('m3', 'AmazonElastiCache', 'Previous', 'Intel', 'm5', '', 'm6g', '')
, ROW ('m4', 'AmazonElastiCache', 'Previous', 'Intel', 'm5', '', 'm6g', '')
, ROW ('m5', 'AmazonElastiCache', 'Current', 'Intel', '', '', 'm6g', '')
, ROW ('m6g', 'AmazonElastiCache', 'Current', 'Graviton', '', '', '', 'm5')
, ROW ('r3', 'AmazonElastiCache', 'Previous', 'Intel', 'r5', '', 'r6g', '')
, ROW ('r4', 'AmazonElastiCache', 'Previous', 'Intel', 'r5', '', 'r6g', '')
, ROW ('r5', 'AmazonElastiCache', 'Current', 'Intel', '', '', 'r6g', '')
, ROW ('r6g', 'AmazonElastiCache', 'Current', 'Graviton', '', '', '', 'r5')
, ROW ('r6gd', 'AmazonElastiCache', 'Current', 'Graviton', '', '', '', '')
, ROW ('t1', 'AmazonElastiCache', 'Previous', 'Intel', 't3', '', 't4g', '')
, ROW ('t2', 'AmazonElastiCache', 'Previous', 'Intel', 't3', '', 't4g', '')
, ROW ('t3', 'AmazonElastiCache', 'Current', 'Intel', '', '', 't4g', '')
, ROW ('t4g', 'AmazonElastiCache', 'Current', 'Graviton', '', '', '', 't3')
, ROW ('c4', 'AmazonES', 'Previous', 'Intel', 'c5', '', 'c6g', '')
, ROW ('c5', 'AmazonES', 'Current', 'Intel', '', '', 'c6g', '')
, ROW ('c6g', 'AmazonES', 'Current', 'Graviton', '', '', '', 'c5')
, ROW ('i2', 'AmazonES', 'Previous', 'Intel', 'i3', '', '', '')
, ROW ('i3', 'AmazonES', 'Current', 'Intel', '', '', '', '')
, ROW ('m3', 'AmazonES', 'Previous', 'Intel', 'm5', '', 'm6g', '')
, ROW ('m4', 'AmazonES', 'Previous', 'Intel', 'm5', '', 'm6g', '')
, ROW ('m5', 'AmazonES', 'Current', 'Intel', '', '', 'm6g', '')
, ROW ('m6g', 'AmazonES', 'Current', 'Graviton', '', '', '', 'm5')
, ROW ('r3', 'AmazonES', 'Previous', 'Intel', 'r5', '', 'r6g', '')
, ROW ('r4', 'AmazonES', 'Previous', 'Intel', 'r5', '', 'r6g', '')
, ROW ('r5', 'AmazonES', 'Current', 'Intel', '', '', 'r6g', '')
, ROW ('r6g', 'AmazonES', 'Current', 'Graviton', '', '', '', 'r5')
, ROW ('r6gd', 'AmazonES', 'Current', 'Graviton', '', '', '', 'r5')
, ROW ('t2', 'AmazonES', 'Previous', 'Intel', 't3', '', '', '')
, ROW ('t3', 'AmazonES', 'Current', 'Intel', '', '', '', '')
, ROW ('cv11', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('m1', 'AmazonRDS', 'Previous', 'Intel', 'm6i', '', 'm6g', '')
, ROW ('m2', 'AmazonRDS', 'Previous', 'Intel', 'm6i', '', 'm6g', '')
, ROW ('m3', 'AmazonRDS', 'Previous', 'Intel', 'm6i', '', 'm6g', '')
, ROW ('m4', 'AmazonRDS', 'Previous', 'Intel', 'm6i', '', 'm6g', '')
, ROW ('m5', 'AmazonRDS', 'Current', 'Intel', '', '', 'm6g', '')
, ROW ('m5d', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('m6g', 'AmazonRDS', 'Current', 'Graviton', '', '', '', 'm5')
, ROW ('m6gd', 'AmazonRDS', 'Current', 'Graviton', '', '', '', '')
, ROW ('m6i', 'AmazonRDS', 'Current', 'Intel', '', '', 'm6g', 'm5')
, ROW ('mv11', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('r3', 'AmazonRDS', 'Previous', 'Intel', 'r6i', '', 'r6g', 'r5')
, ROW ('r4', 'AmazonRDS', 'Previous', 'Intel', 'r6i', '', 'r6g', 'r5')
, ROW ('r5', 'AmazonRDS', 'Current', 'Intel', '', '', 'r6g', '')
, ROW ('r5b', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('r5d', 'AmazonRDS', 'Current', 'Intel', '', '', 'r6gd', '')
, ROW ('r6g', 'AmazonRDS', 'Current', 'Graviton', '', '', '', 'r5')
, ROW ('r6gd', 'AmazonRDS', 'Current', 'Graviton', '', '', '', 'r5d')
, ROW ('r6i', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('rv11', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('t1', 'AmazonRDS', 'Previous', 'Intel', 't3', '', 't4g', '')
, ROW ('t2', 'AmazonRDS', 'Previous', 'Intel', 't3', '', 't4g', '')
, ROW ('t3', 'AmazonRDS', 'Current', 'Intel', '', '', 't4g', '')
, ROW ('t4g', 'AmazonRDS', 'Current', 'Graviton', '', '', '', 't3')
, ROW ('x1', 'AmazonRDS', 'Current', 'Intel', '', '', 'x2g', '')
, ROW ('x1e', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
, ROW ('x2g', 'AmazonRDS', 'Current', 'Graviton', '', '', '', 'x1')
, ROW ('z1d', 'AmazonRDS', 'Current', 'Intel', '', '', '', '')
)  ignored_table_name (family, product, generation, instance_processor, latest_intel, latest_amd, latest_graviton, previous_intel)
