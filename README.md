<h2 style="font-size: 2.5em; color: #e74c3c; text-align: center; margin: 30px 0;">📊 Sales Trend Analysis Using Aggregations 🍕</h2>

<p style="font-size: 1.2em; line-height: 1.8; color: #2c3e50; margin: 20px;">
  This analysis explores the monthly <strong style='color:#e67e22;'>revenue</strong> and <strong style='color:#3498db;'>order volume</strong> for a pizza sales dataset during the year <strong>2015</strong> 🍕.
</p>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">🛠️ Tools Used</h3>
<p style="font-size: 1.2em; color: #2c3e50; margin-left: 20px;">
  • MySQL for querying data<br>
  • SQL Aggregation functions: <code>SUM()</code>, <code>COUNT()</code>, <code>GROUP BY</code><br>
  • Date functions like <code>YEAR()</code>, <code>MONTH()</code>
</p>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">📦 Dataset</h3>
<p style="font-size: 1.2em; color: #2c3e50; margin-left: 20px;">
  The dataset <strong>pizza_sales</strong> includes fields like:<br>
  <code>order_date</code>, <code>order_id</code>, <code>total_price</code>, <code>pizza_name</code>
</p>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">🧮 SQL Query</h3>
<pre style="background-color: #ecf0f1; padding: 15px; border-left: 6px solid #3498db; font-size: 1.1em; margin: 20px;">
SELECT
  YEAR(STR_TO_DATE(order_date, '%e/%c/%Y')) AS year,
  MONTH(STR_TO_DATE(order_date, '%e/%c/%Y')) AS month,
  SUM(total_price) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM
  pizza_sales
WHERE
  STR_TO_DATE(order_date, '%e/%c/%Y') BETWEEN '2015-01-01' AND '2015-12-31'
GROUP BY
  year, month
ORDER BY
  year, month;
</pre>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">📈 Results Table</h3>
<table style="width: 100%; border-collapse: collapse; margin: 20px 0; font-size: 1.1em;">
  <thead style="background-color: #3498db; color: white;">
    <tr>
      <th style="padding: 12px; border: 1px solid #ddd;">📅 Year</th>
      <th style="padding: 12px; border: 1px solid #ddd;">📆 Month</th>
      <th style="padding: 12px; border: 1px solid #ddd;">💰 Revenue</th>
      <th style="padding: 12px; border: 1px solid #ddd;">🛒 Order Volume</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9;">
      <td style="padding: 12px; border: 1px solid #ddd;">2015</td>
      <td style="padding: 12px; border: 1px solid #ddd;">1</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$1,200.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">150</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #ddd;">2015</td>
      <td style="padding: 12px; border: 1px solid #ddd;">2</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$1,500.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">180</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="padding: 12px; border: 1px solid #ddd;">2015</td>
      <td style="padding: 12px; border: 1px solid #ddd;">3</td>
      <td style="padding: 12px; border: 1px solid #ddd;">$1,250.00</td>
      <td style="padding: 12px; border: 1px solid #ddd;">160</td>
    </tr>
  </tbody>
</table>

<h3 style="color: #8e44ad; font-size: 1.8em; margin-top: 30px;">📌 Conclusion</h3>
<p style="font-size: 1.2em; color: #2c3e50; margin-left: 20px;">
  ✅ We successfully tracked monthly sales and order volume for 2015.<br>
  📊 These insights help businesses spot seasonal trends and plan inventory better.
</p>

<h3 style="color: #8e44ad; font-size: 1.6em; margin-top: 40px;">👨‍💻 Author</h3>
<p style="font-size: 1.1em; color: #2c3e50; margin-left: 20px;">
  <strong>Name:</strong> H K<br>
  <strong>Email:</strong> <a href="mailto:hk5652990@gmail.com" style="color: #e74c3c;">hk5652990@gmail.com</a><br>
  <strong>Portfolio:</strong> <a href="https://himanshu-kushwaha-2004.github.io/Port_folio/" style="color: #2980b9;" target="_blank">https://your-portfolio-link.com</a>
</p>
