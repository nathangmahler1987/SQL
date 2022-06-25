USE MAVENFUZZYFACTORY;

SELECT 
	device_type,
    COUNT( DISTINCT ws.website_session_id) AS sessions,
    COUNT( distinct o.order_id) AS orders,
	FORMAT(COUNT( DISTINCT o.order_id) / COUNT(distinct ws.website_session_id) * 100,2) AS conversion_rate
FROM website_sessions AS ws 
		LEFT OUTER JOIN orders AS o 
			ON o.website_session_id = ws.website_session_id
WHERE ws.created_at < '2012-05-11' AND utm_source = 'gsearch' AND utm_campaign = 'nonbrand'
GROUP BY device_type


