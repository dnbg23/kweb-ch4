--examples

INSERT INTO user_info (user_id, password, nickname, profile_picture, status_message)
VALUES 
    ('user1', 'password123', 'Alice', 'link_to_pic1', 'Hello there!'),
    ('user2', 'password456', 'Bob', 'link_to_pic2', 'Happy to chat!'),
    ('user3', 'password789', 'Carol', 'link_to_pic3', 'Feeling great!');


INSERT INTO channels_info (name, created_by, link, max_capacity)
VALUES 
    ('General Chat', 1, 'link_to_general_chat', 100),
    ('Tech Talk', 2, 'link_to_tech_talk', 50);


INSERT INTO chat_info (content, created_by, channel_id)
VALUES 
    ('Hello everyone!', 1, 1),
    ('Welcome to Tech Talk!', 2, 2),
    ('This is a great channel.', 3, 1);


INSERT INTO follows_info (follower_id, followee_id)
VALUES 
    (1, 2),
    (1, 3),
    (2, 1);


INSERT INTO blocks_info (blocker_id, blocked_id)
VALUES 
    (2, 3),
    (3, 1);
