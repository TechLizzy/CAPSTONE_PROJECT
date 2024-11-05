SELECT * FROM CUSTOMERSDATA

-----------TOTAL NUMBER OF CUSTOMERS FROM EACH REGION--------
SELECT REGION, COUNT (CUSTOMERID) AS TOTAL_CUSTOMERS FROM CUSTOMERSDATA
GROUP BY REGION

------------MOST POPULAR SUBSCRIPTION TYPE BY NUMBER OF CUSTOMERS--------
SELECT TOP 1 SUBSCRIPTIONTYPE, COUNT (CUSTOMERID) AS TOTAL_CUSTOMERS FROM CUSTOMERSDATA
GROUP BY SUBSCRIPTIONTYPE

------------CUSTOMERS WHO CANCELLED THEIR SUBSCRIPTION WITHIN 6 MONTHS-------
SELECT CUSTOMERID, COUNT (CANCELED) AS CANCELLED_SUBSCRIPTION FROM CUSTOMERSDATA
WHERE DATEDIFF (MONTH,SUBSCRIPTIONSTART,SUBSCRIPTIONEND) <=6
GROUP BY CUSTOMERID

-------------AVERAGE SUBSCRIPTION DURATION FOR ALL CUSTOMERS----------
SELECT AVG (DATEDIFF (DAY, SUBSCRIPTIONSTART,SUBSCRIPTIONEND)) AS AVERAGE_SUBSCRIPTION_DURATION FROM CUSTOMERSDATA

-------------CUSTOMERS WITH SUBSCRIPTIONS LONGER THAN 12 MONTHS---------
SELECT CUSTOMERID FROM CUSTOMERSDATA
WHERE DATEDIFF(MONTH, SUBSCRIPTIONSTART, SUBSCRIPTIONEND) >12

-------------TOTAL REVENUE BY SUBSCRIPTION TYPE-----------
SELECT SUBSCRIPTIONTYPE, SUM(REVENUE) AS TOTAL_REVENUE FROM CUSTOMERSDATA
GROUP BY SUBSCRIPTIONTYPE

SELECT * FROM CUSTOMERSDATA

-----------TOP 3 REGIONS BY SUBSCRIPTION CANCELLATIONS-------------
SELECT REGION, COUNT (CUSTOMERID) AS SUBSCRIPTION_CANCELLATIONS FROM CUSTOMERSDATA
WHERE CANCELED = 'TRUE'
GROUP BY REGION
ORDER BY SUBSCRIPTION_CANCELLATIONS DESC

-----------TOTAL NUMBER OF ACTIVE AND CANCELLED SUBSCRIPTIONS--------
SELECT CANCELED, COUNT (CUSTOMERID) AS ACTIVE_SUBSCRIPTION FROM CUSTOMERSDATA
WHERE CANCELED = 'TRUE'
GROUP BY CANCELED
SELECT CANCELED, COUNT (CUSTOMERID) AS CANCELED_SUBSCRIPTION FROM CUSTOMERSDATA
WHERE CANCELED = 'FALSE'
GROUP BY CANCELED