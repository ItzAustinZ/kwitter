-- given a user, returns followers with their handle and id
select HANDLE, FOLLOWER_ID from (
	select FOLLOWER_ID from FOLLOWERS where FOLLOWEE_ID=?
) inner join USERS on FOLLOWER_ID=USER_ID;