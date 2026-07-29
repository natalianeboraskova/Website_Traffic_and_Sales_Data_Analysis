# Website_Traffic_and_Sales_Data_Analysis
End-to-end website traffic and e-commerce sales analytics project built with Power BI and SQL

An interactive Power BI dashboard designed to analyze e-commerce performance, user behavior, and sales trends based on event logs and traffic sources.

## 📊 Dashboard Overview
The project is structured into multiple analytical views:
* **Website Traffic & Funnel:** Tracks user journeys from initial page views to purchases, evaluating conversion rates across different traffic sources (*email, organic, paid ads, social*).
* **Traffic Results:** Analyzes event volumes and average event durations.
* **Sales Breakdown:** Explores product demand, average product prices, and revenue generated per traffic source.
* **Performance Over Time:** Time-series analysis showcasing daily trends in event counts and sales performance with interactive filtering options.

## 🛠️ Tools & Technologies
* **Power BI:** Data visualization, interactive filtering, and dashboard design.
* **SQL:** Data extraction, transformation, and date grouping.
--------------------------------------------------------------------------

## Summary

<img width="911" height="484" alt="image" src="https://github.com/user-attachments/assets/3033a943-e0e1-4b4f-985e-6f4d78fd1dc9" />

Overall, the data looks consistent and healthy. Many visitors only browse the website, which is completely normal. Regarding traffic sources, email is the most successful channel, showing higher interaction rates than any other source. We should focus our primary attention here, as the purchase completion rate reaches 12%. On the other hand, social media generates the weakest traffic quality—most users merely browse the site without further interaction or making a purchase, resulting in a purchase completion rate of only 5%


<img width="918" height="513" alt="image" src="https://github.com/user-attachments/assets/cac3a01f-79cd-4523-84d8-3986a61b180c" />

Here we can clearly see the comparison between email and social media performance. Approximately 60% of visitors from email added items to their cart, compared to only 14% from social media. A similar trend is reflected in the overall conversion rate from total visitors to completed purchases.

Overall, website functionality—based on the average time spent on each event type—appears normal. While it might be worth examining the checkout to payment stage (where the average duration is around 5 minutes), unless there is an underlying bug, it's best left untouched, as this step maintains a strong 80% success rate.


<img width="916" height="497" alt="image" src="https://github.com/user-attachments/assets/0c49f2f8-98b1-4711-98cd-850eea5cd950" />

Product demand is well-balanced, with no single product standing out as heavily preferred. While sales revenue for products such as 205 and 404 is higher than the others, this is solely due to differences in product pricing, as the actual quantities sold remain comparable. The top-performing revenue source is organic traffic, generating the highest total sales. Surprisingly, the email channel does not yield as much revenue as one might expect given its strong interaction rates.


<img width="909" height="496" alt="image" src="https://github.com/user-attachments/assets/5ed90dfc-4642-486d-964c-21c93d1e9ded" />

Overall, there is no significant time-based correlation for either event types or individual products. The same applies to revenue, which also does not show any major fluctuations driven by dates.



## Recommendations & Strategic Insights
**1. Focus on the Email Channel**
* Prioritize email marketing, as it delivers the highest conversion rate from page view to purchase at 33%
* Shift strategy to migrate social media followers and casual visitors into the email subscriber base, since customers acquired through email show a significantly higher propensity to complete a purchase

**2. Capitalize on Organic Traffic**
* Do not neglect organic search, it remains the primary revenue driver, generating the highest overall sales volume (approx. 40K). Continue investing in SEO and content strategy

**3. Reallocate Budget from Social Media**
* Deprioritize social media advertising or place it on the back burner. Given its lower initial conversion and traffic quality, consider reallocating those marketing budgets toward high-converting email campaigns or organic growth

**4. Monitor Checkout Performance Cautiously**
* Review the checkout-to-payment stage, where the average duration is around 5 minutes. However, do not make unnecessary changes unless a technical bug is identified, as this step maintains a strong 80% success rate.

**5. Optimize Paid Ads Consistency**
* Paid ads show solid mid-funnel performance (37% view-to-cart), but their final revenue output sits behind organic traffic. Fine-tune ad targeting to attract buyers with higher intent rather than just browsers.




