# Process Data from Dirty to Clean

## C​ourse content

1. **E​nsuring data integrity**. Data integrity is necessary to ensure a successful analysis. In this part of the course, you will explore methods and steps that analysts take to check data for integrity. This includes knowing what to do when you have an insufficient amount of data. You will also learn about sample size, avoiding sample bias, and using random samples. All of these measures also help to ensure a successful data analysis.

2. **U​nderstanding clean data**. Every data analyst wants clean data to work with when performing an analysis. In this part of the course, you will learn the difference between clean and dirty data. You will practice data cleaning techniques in spreadsheets and other tools.

3. **C​leaning data using SQL**. Knowing a variety of ways to clean data can make an analyst’s job much easier. In this part of the course, you will use SQL to clean data from databases. You will explore how SQL queries and functions can be used to clean and transform your data before an analysis.

4. **V​erifying and reporting cleaning results**. Cleaning data is an important step in the data analysis process. In this part of the course, you will verify that data is clean and report data cleaning results. With verified clean data, you will be ready for the next step in the data analysis process.

5. **(​Optional) Adding data to your resume**. Creating an effective resume will help you in your data analytics career. In this part of the course, you will learn all about the job application process. Your focus will be on building a resume that highlights your strengths and relevant experience. 

6. **C​ompleting the Course Challenge**. At the end of this course, you will be able to apply what you have learned in the Course Challenge. The Course Challenge will ask you questions about the key concepts and then will give you an opportunity to put them into practice as you go through prepared scenarios.

## Week 1

### Data integrity

> Data integrity is the accuracy, completeness, consistency, and trustworthiness of data throughout its lifecycle.

### Insufficient data

**Types of insufficient data**
* Data from only one source
* Data that keeps updating
* Outdated data
* Geographically-limitated data

**Ways to address insufficient data:**
* Identify trends with the available data
* Wait for more data if time allows
* Talk with stakeholders and adjust your objective
* Look for a new dataset

### What to do when you find an issue with your data

#### Data issue 1: no data

**Possible Solutions**

1. Gather the data on a small scale to perform a preliminary analysis and then request additional time to complete the analysis after you have collected more data. 

2. If there isn’t time to collect data, perform the analysis using proxy data from other datasets. 
This is the most common workaround.

#### Data issue 2: too little data

**Possible Solutions**
1. Do the analysis using proxy data along with actual data.
2. Adjust your analysis to align with the data you already have.

#### Data issue 3: wrong data, including data with errors

**Possible Solutions**
1. If you have the wrong data because requirements were misunderstood, communicate the requirements again.
2. Identify errors in the data and, if possible, correct them at the source by looking for a pattern in the errors.
3. If you can’t correct data errors yourself, you can ignore the 
wrong data and go ahead with the analysis if your sample size is still large enough and ignoring the data won’t cause systematic bias.

***Important note:*** sometimes data with errors can be a warning sign that the data isn’t reliable. Use your best judgment.

![image info](dataissue-decisiontree.png)

### The importance of sample size

* **Sampling bias** is a sample that isn’t representative of the population as a whole.
* **Random sampling** is a way of selecting a sample from a population so that every possible type of the sample has an equal chance of being chosen.
* **Sample size** or a sample, you use a part of a population that's representative of the population.
  * The sample size helps ensure the degree to which you can be confident that your conclusions accurately represent the population
  
#### Calculating sample size

* Population: The entire group that you are interested in for your study. For example, if you are surveying people in your company, the population would be all the employees in your company.

* Sample: A subset of your population. Just like a food sample, it is called a sample because it is only a taste. So if your company is too large to survey every individual, you can survey a representative sample of your population.

* Margin of error: Since a sample is used to represent a population, the sample’s results are expected to differ from what the result would have been if you had surveyed the entire population. This difference is called the margin of error. The smaller the margin of error, the closer the results of the sample are to what the result would have been if you had surveyed the entire population. 

* Confidence level: How confident you are in the survey results. For example, a 95% confidence level means that if you were to run the same survey 100 times, you would get similar results 95 of those 100 times. Confidence level is targeted before you start your study because it will affect how big your margin of error is at the end of your study. 

* Confidence interval: The range of possible values that the population’s result would be at the confidence level of the study. This range is the sample result +/- the margin of error.

* Statistical significance: The determination of whether your result could be due to random chance or not. The greater the significance, the less due to chance.

##### Things to remember when determining the size of your sample

When figuring out a sample size, here are things to keep in mind:

* Don’t use a sample size less than 30. It has been statistically proven that 30 is the smallest sample size where an average result of a sample starts to represent the average result of a population.

* The confidence level most commonly used is 95%, but 90% can work in some cases. 

Increase the sample size to meet specific needs of your project:

* For a **higher** confidence level, use a larger sample size

* To **decrease** the margin of error, use a larger sample size

* For **greater** statistical significance, use a larger sample size

##### Why a minimum sample of 30?
This recommendation is based on the Central Limit Theorem (CLT) in the field of probability and statistics. As sample size increases, the results more closely resemble the normal (bell-shaped) distribution from a large number of samples. A sample of 30 is the smallest sample size for which the CLT is still valid. Researchers who rely on regression analysis – statistical methods to determine the relationships between controlled and dependent variables – also prefer a minimum sample of 30.

Still curious? Without getting too much into the math, check out these articles: 

* [Central Limit Theorem (CLT)](https://www.investopedia.com/terms/c/central_limit_theorem.asp): This article by Investopedia explains the Central Limit Theorem and briefly describes how it can apply to an analysis of a stock index. 

* [Sample Size Formula](https://www.statisticssolutions.com/dissertation-resources/sample-size-calculation-and-sample-size-justification/sample-size-formula/): This article by Statistics Solutions provides a little more detail about why some researchers use 30 as a minimum sample size.

##### Sample sizes vary by business problem
Sample size will vary based on the type of business problem you are trying to solve. 

For example, if you live in a city with a population of 200,000 and get 180,000 people to respond to a survey, that is a large sample size. But without actually doing that, what would an acceptable, smaller sample size look like? 

Would 200 be alright if the people surveyed represented every district in the city? 

**Answer**: It depends on the stakes. 

* A sample size of 200 might be large enough if your business problem is to find out how residents felt about the new library

* A sample size of 200 might not be large enough if your business problem is to determine how residents would vote to fund the library

You could probably accept a larger margin of error surveying how residents feel about the new library versus surveying residents about how they would vote to fund it. For that reason, you would most likely use a larger sample size for the voter survey.

##### Larger sample sizes have a higher cost

You also have to weigh the cost against the benefits of more accurate results with a larger sample size. Someone who is trying to understand consumer preferences for a new line of products wouldn’t need as large a sample size as someone who is trying to understand the effects of a new drug. For drug safety, the benefits outweigh the cost of using a larger sample size. But for consumer preferences, a smaller sample size at a lower cost could provide good enough results. 

##### Knowing the basics is helpful
Knowing the basics will help you make the right choices when it comes to sample size. You can always raise concerns if you come across a sample size that is too small. A sample size calculator is also a great tool for this. Sample size calculators let you enter a desired confidence level and margin of error for a given population size. They then calculate the sample size needed to statistically achieve those results.   

Refer to the [Determine the Best Sample Size](https://www.coursera.org/learn/process-data/lecture/mSj5A/determine-the-best-sample-size) video for a demonstration of a sample size calculator, or refer to the [Sample Size Calculator](https://www.coursera.org/learn/process-data/supplement/ZqcDw/sample-size-calculator) reading for additional information. 


### Testing your data

#### Using statistical power

* **Statistical power** is the probability of getting meaningful results from a test.

* **Hypothesis testing** is a way to see if a survey or experiment has meaningful results.

* If a test is **statistically significant**, it means the results of the test are real and not an error caused by random chance

* Usually, you need a statistical power of at least 0.8 or 80% to consider your results statistically significant.

[A Gentle Introduction to Statistical Power and Power Analysis in Python ](https://machinelearningmastery.com/statistical-power-and-power-analysis-in-python/)

#### Determine the best sample size

> Statistical power can be calculated and reported for a completed experiment to comment on the confidence one might have in the conclusions drawn from the results of the study. It can also be used as a tool to estimate the number of observations or sample size required in order to detect an effect in an experiment.

* The confidence level is the probability that your sample accurately reflects the greater population

### Consider the margin of error

#### Evaluate the reliability of your data

##### Margin of error 

**The maximum that the sample results are expected to differ from those of the actual population.**

## Week 2

### Data cleaning is a must

#### What is dirty data?

1. Duplicate data
  * Description: Any data record that shows up more than once
  * Possible causes: Manual data entry, batch data imports, or data migration
  * Potential harm to businesses: Skewed metrics or analyses, inflated or inaccurate counts or predictions, or confusion during data retrieval
  
2. Outdated data
  * Description: Any data that is old which should be replaced with newer and more accurate information
  * Possible causes: People changing roles or companies, or software and systems becoming obsolete
  * Potential harm to businesses: Inaccurate insights, decision-making, and analytics

3. Incomplete data
  * Description: Any data that is missing important fields
  * Possible causes: Improper data collection or incorrect data entry
  * Potential harm to businesses: Decreased productivity, inaccurate insights, or inability to complete essential services

4. Incorrect/inaccurate data
  * Description: Any data that is complete but inaccurate
  * Possible causes: Human error inserted during data input, fake information, or mock data
  * Potential harm to businesses: Inaccurate insights or decision-making based on bad information resulting in revenue loss

5. Inconsistent data
  * Description: Any data that uses different formats to represent the same thing
  * Possible causes: Data stored incorrectly or errors inserted during data transfer
  * Potential harm to businesses: Contradictory data points leading to confusion or inability to classify or segment customers


### Begin cleaning data

#### Common data-cleaning pitfalls
**Common mistakes to avoid**

* **Not checking for spelling errors**: Misspellings can be as simple as typing or input errors. Most of the time the wrong spelling or common grammatical errors can be detected, but it gets harder with things like names or addresses. For example, if you are working with a spreadsheet table of customer data, you might come across a customer named “John” whose name has been input incorrectly as “Jon” in some places. The spreadsheet’s spellcheck probably won’t flag this, so if you don’t double-check for spelling errors and catch this, your analysis will have mistakes in it. 

* **Forgetting to document errors**: Documenting your errors can be a big time saver, as it helps you avoid those errors in the future by showing you how you resolved them. For example, you might find an error in a formula in your spreadsheet. You discover that some of the dates in one of your columns haven’t been formatted correctly. If you make a note of this fix, you can reference it the next time your formula is broken, and get a head start on troubleshooting. Documenting your errors also helps you keep track of changes in your work, so that you can backtrack if a fix didn’t work. 

* **Not checking for misfielded values**: A misfielded value happens when the values are entered into the wrong field. These values might still be formatted correctly, which makes them harder to catch if you aren’t careful. For example, you might have a dataset with columns for cities and countries. These are the same type of data, so they are easy to mix up. But if you were trying to find all of the instances of Spain in the country column, and Spain had mistakenly been entered into the city column, you would miss key data points. Making sure your data has been entered correctly is key to accurate, complete analysis. 

* **Overlooking missing values**: Missing values in your dataset can create errors and give you inaccurate conclusions. For example, if you were trying to get the total number of sales from the last three months, but a week of transactions were missing, your calculations would be inaccurate.  As a best practice, try to keep your data as clean as possible by maintaining completeness and consistency.

* **Only looking at a subset of the data**: It is important to think about all of the relevant data when you are cleaning. This helps make sure you understand the whole story the data is telling, and that you are paying attention to all possible errors. For example, if you are working with data about bird migration patterns from different sources, but you only clean one source, you might not realize that some of the data is being repeated. This will cause problems in your analysis later on. If you want to avoid common errors like duplicates, each field of your data requires equal attention.

* **Losing track of business objectives**: When you are cleaning data, you might make new and interesting discoveries about your dataset-- but you don’t want those discoveries to distract you from the task at hand. For example, if you were working with weather data to find the average number of rainy days in your city, you might notice some interesting patterns about snowfall, too. That is really interesting, but it isn’t related to the question you are trying to answer right now. Being curious is great! But try not to let it distract you from the task at hand.  

* **Not fixing the source of the error**: Fixing the error itself is important. But if that error is actually part of a bigger problem, you need to find the source of the issue. Otherwise, you will have to keep fixing that same error over and over again. For example, imagine you have a team spreadsheet that tracks everyone’s progress. The table keeps breaking because different people are entering different values. You can keep fixing all of these problems one by one, or you can set up your table to streamline data entry so everyone is on the same page. Addressing the source of the errors in your data will save you a lot of time in the long run. 

* **Not analyzing the system prior to data cleaning**: If we want to clean our data and avoid future errors, we need to understand the root cause of your dirty data. Imagine you are an auto mechanic. You would find the cause of the problem before you started fixing the car, right? The same goes for data. First, you figure out where the errors come from. Maybe it is from a data entry error, not setting up a spell check, lack of formats, or from duplicates. Then, once you understand where bad data comes from, you can control it and keep your data clean.

* **Not backing up your data prior to data cleaning**: It is always good to be proactive and create your data backup before you start your data clean-up. If your program crashes, or if your changes cause a problem in your dataset, you can always go back to the saved version and restore it. The simple procedure of backing up your data can save you hours of work-- and most importantly, a headache. 

* **Not accounting for data cleaning in your deadlines/process**: All good things take time, and that includes data cleaning. It is important to keep that in mind when going through your process and looking at your deadlines. When you set aside time for data cleaning, it helps you get a more accurate estimate for ETAs for stakeholders, and can help you know when to request an adjusted ETA. 

**Additional resources**
Refer to these "top ten" lists for data cleaning in Microsoft Excel and Google Sheets to help you avoid the most common mistakes:

* Top ten ways to clean your data: Review an orderly guide to data cleaning in Microsoft Excel.
* 10 Google Workspace tips to clean up data: Learn best practices for data cleaning in Google Sheets.

## Week 3

SQL :)

## Week 4

### Verifying and reporting results

**Verification**
* Verification is a process to confirm that a data cleaning effort was well- executed and the resulting data is accurate and reliable.

**Changelog**
* A changelog is a file containing a chronologically ordered list of modifications made to a project.

### Cleaning and your data expectations

**See the big picture when verifying data-cleaning**
1. Consider the business problem
2. Consider the goal of the project
3. Consider the data

***Do the numbers make sense?***

### Data-cleaning verification: A checklist

#### Correct the most common problems
Make sure you identified the most common problems and corrected them, including:

* Sources of errors: Did you use the right tools and functions to find the source of the errors in your dataset?

* Null data: Did you search for NULLs using conditional formatting and filters?

* Misspelled words: Did you locate all misspellings?

* Mistyped numbers: Did you double-check that your numeric data has been entered correctly?

* Extra spaces and characters: Did you remove any extra spaces or characters using the TRIM function?

* Duplicates: Did you remove duplicates in spreadsheets using the Remove Duplicates function or DISTINCT in SQL?
 
* Mismatched data types: Did you check that numeric, date, and string data are typecast correctly?

* Messy (inconsistent) strings: Did you make sure that all of your strings are consistent and meaningful?

* Messy (inconsistent) date formats: Did you format the dates consistently throughout your dataset?

* Misleading variable labels (columns): Did you name your columns meaningfully?

* Truncated data: Did you check for truncated or missing data that needs correction?

* Business Logic: Did you check that the data makes sense given your knowledge of the business? 

**Review the goal of your project**
Once you have finished these data cleaning tasks, it is a good idea to review the goal of your project and confirm that your data is still aligned with that goal. This is a continuous process that you will do throughout your project-- but here are three steps you can keep in mind while thinking about this: 

* Confirm the business problem 

* Confirm the goal of the project

* Verify that data can solve the problem and is aligned to the goal 

### Documenting results and cleaning process

#### Capturing cleaning changes

* Recover data-cleaning errors
* Inform other users of changes
* Determine quality of data

## Week 5

### The data analyst hiring process

### Understand the elements of a data analyst resume

### Highlighting experiences on resumes

### Exploring areas of interest