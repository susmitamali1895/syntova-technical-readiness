-- Create a new table

CREATE TABLE player_scores_day5 (
    player_id INT,
    player_name VARCHAR(100),
    score INT
);

-- Insert data

INSERT INTO player_scores_day5
(player_id, player_name, score)
VALUES
(1, 'Aarav', 95),
(2, 'Meera', 88),
(3, 'Kabir', 95),
(4, 'Anaya', 82),
(5, 'Riya', 88);

--  RANK() Window Function

SELECT
    player_id,
    player_name,
    score,
    RANK() OVER (ORDER BY score DESC) AS player_rank
FROM player_scores_day5;