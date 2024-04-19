-- Load input file from HDFS
inputFile = LOAD 'hdfs:///user/sajna/input.txt' AS (line:chararray);
-- Tokenize each word in the file (Map)
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;
-- Combine the words from the above stage
grpd = GROUP words BY word;
-- Count the occurence of each word (Reduce)
totalCount = FOREACH grpd GENERATE $0 AS word, COUNT($1) AS wordCount;
--Remove the old result folder
rmf hdfs:///user/sajna/pigOutput1;
-- Store the result in HDFS
STORE totalCount INTO 'hdfs:///user/sajna/pigOutput1';