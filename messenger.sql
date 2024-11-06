--create users table
CREATE TABLE user_info (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    nickname VARCHAR(50) NOT NULL, 
    profile_picture VARCHAR(255), 
    status_message VARCHAR(255), 
    is_deleted BOOLEAN DEFAULT 0, 
    signup_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE channels_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,                  -- Channel name
    created_by INT NOT NULL,                     -- Creator (references user_info.id)
    link VARCHAR(255) NOT NULL,                  -- Channel link
    max_capacity INT NOT NULL,                   -- Maximum channel capacity
    is_deleted BOOLEAN DEFAULT 0,                -- Deletion status, default is 0 (active)
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Channel creation date
    FOREIGN KEY (created_by) REFERENCES user_info(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--chat table
CREATE TABLE chat_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL, 
    created_by INT NOT NULL,
    channel_id INT NOT NULL, 
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES user_info(id) ON DELETE CASCADE,
    FOREIGN KEY (channel_id) REFERENCES channels_info(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--follows table
CREATE TABLE follows_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    follower_id INT NOT NULL,                    
    followee_id INT NOT NULL,                    
    follow_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    FOREIGN KEY (follower_id) REFERENCES user_info(id) ON DELETE CASCADE,
    FOREIGN KEY (followee_id) REFERENCES user_info(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--blocks table
CREATE TABLE blocks_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    blocker_id INT NOT NULL,                     
    blocked_id INT NOT NULL,                     
    block_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    FOREIGN KEY (blocker_id) REFERENCES user_info(id) ON DELETE CASCADE,
    FOREIGN KEY (blocked_id) REFERENCES user_info(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;