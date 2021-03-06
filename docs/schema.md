# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    |
fname           | string    | not null
lname           | string    | not null
title           | string    |
employer        | string    |
summary         | text      |

## requests
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
sender_id   | integer   | not null, foreign key
responder_id| integer   | not null, foreign key

## connections
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id1    | integer   | not null, foreign key
user_id2    | integer   | not null, foreign key

## messages
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key
reciever_id | integer   | not null, foreign key
content     | text      | not null

## feeds
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key
body        | text      | not null

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
post_id     | integer   | not null, foreign key
author_id   | integer   | not null, foreign key
body        | text      | not null

## posts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key
title       | string    | not null
body        | text      |

## experiences

column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key
title       | string    | not null
employer    | string    | not null
description | text      |
start_date  | date      |
end_date    | date      |

## education

column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key
school      | string    | not null
field       | string    | not null
location    | string    |

##skills

column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key
title       | string    | not null
