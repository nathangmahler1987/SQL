-- Based on CONV. Rate we need to find gsearch nonbrand by week to see if bid changes have caused volume to drop
USE MAVENFUZZYFACTORY;
SELECT 
	MIN(DATE(created_at)) as week_start_date,
	COUNT( DISTINCT website_session_id) AS sessions
FROM website_sessions
WHERE utm_source = 'gsearch' AND utm_campaign = 'nonbrand' AND created_at <'2012-05-10'
GROUP BY  YEAR(created_at), week(created_at)
ORDER BY week_start_date


