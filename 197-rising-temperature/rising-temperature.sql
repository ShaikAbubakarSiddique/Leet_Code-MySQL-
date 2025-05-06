# Write your MySQL query statement below
-- select id from Weather order by temperature desc limit 2;
select w1.id from (Weather w1 join Weather w2) where datediff(w1.recordDate,w2.recordDate)=1 and w1.temperature > w2.temperature;