-- Write a SQL query to rank scores. If there is a tie between two scores, both should have the same ranking. Note that after a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no "holes" between ranks.

-- +----+-------+
-- | Id | Score |
-- +----+-------+
-- | 1  | 3.50  |
-- | 2  | 3.65  |
-- | 3  | 4.00  |
-- | 4  | 3.85  |
-- | 5  | 4.00  |
-- | 6  | 3.65  |
-- +----+-------+
-- For example, given the above Scores table, your query should generate the following report (order by highest score):

-- +-------+------+
-- | Score | Rank |
-- +-------+------+
-- | 4.00  | 1    |
-- | 4.00  | 1    |
-- | 3.85  | 2    |
-- | 3.65  | 3    |
-- | 3.65  | 3    |
-- | 3.50  | 4    |
-- +-------+------+

# Write your MySQL query statement below
SELECT 
    Score,
    CASE
        WHEN @prev_value = Score THEN @rank_count
        WHEN @prev_value:=Score THEN @rank_count:=@rank_count + 1
        ELSE @rank_count:=@rank_count + 1
    END AS Rank
FROM
    Scores,
    (SELECT @rank_count:=0) r,
    (SELECT @prev_value:=NULL) p
ORDER BY Score DESC