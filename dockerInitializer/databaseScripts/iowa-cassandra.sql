CREATE KEYSPACE subscriptions
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
AND durable_writes = true;

CREATE TABLE user_id_by_subscription_plan ( 
    Id uuid, 
    UserId uuid, 
    SubscriptionPlan text, 
    CompanyName text, 
PRIMARY KEY (SubscriptionPlan, CompanyName, UserId) );

CREATE TABLE subscription_by_user_id ( 
    Id uuid, 
    UserId uuid, 
    SubscriptionPlan text, 
    CompanyName text,
    Price decimal,
    Currency text, 
    ChartColor text,
    RenewalDate timestamp, 
    IsRecursive boolean,
PRIMARY KEY (UserId, SubscriptionPlan, CompanyName) );