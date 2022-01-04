# Prepare Data for Exploration

## Course content

1. Understanding data types and structures: We all generate lots of data in our daily lives. In this part of the course, you will check out how we generate data and how analysts decide which data to collect for analysis. You’ll also learn about structured and unstructured data, data types, and data formats as you start thinking about how to prepare your data for exploration.

2. Understanding bias, credibility, privacy, ethics, and access: When data analysts work with data, they always check that the data is unbiased and credible. In this part of the course, you will learn how to identify different types of bias in data and how to ensure credibility in your data. You will also explore open data and the relationship between and importance of data ethics and data privacy.

3. Databases: Where data lives: When you are analyzing data, you will access much of the data from a database. It’s where data lives. In this part of the course, you will learn all about databases, including how to access them and extract, filter, and sort the data they contain. You will also check out metadata to discover the different types and how analysts use them.

4. Organizing and protecting your data: Good organization skills are a big part of most types of work, and data analytics is no different. In this part of the course, you will learn the best practices for organizing data and keeping it secure. You will also learn how analysts use file naming conventions to help them keep their work organized.

5. Engaging in the data community (optional): Having a strong online presence can be a big help for job seekers of all kinds. In this part of the course, you will explore how to manage your online presence. You will also discover the benefits of networking with other data analytics professionals.

6. Completing the C​ourse Challenge: At the end of this course, you will be able to apply what you have learned in the Course Challenge. The Course Challenge will ask you questions about the key concepts and then will give you an opportunity to put them into practice as you go through two scenarios.

## Week 1

### Data collection in our world

1. Interview
2. Observations
3. Forms/Questionnaires/Surveys
4. Cookies

### Determining what data to collect

1. How the data will be collected
2. Choose data sources
3. Decide what data to use
4. How much data to collect: population vs sample
5. Select the right data type
6. Determine the timeframe

### Data Formats

1. Primary vs. Secondary
  * Primary data: Collected by a researcher from first-hand 
  * Secondary data: Gathered by other people or from other research
  
2. Internal vs. External
  * Internal data: Data that lives inside a company’s own systems
  * External data: Data that lives outside of a company or organization
  
3. Continuous vs. Discrete
  * Continuous data: Data that is measured and can have almost any numeric value
  *  Discrete data: Data that is counted and has a limited number of values
  
### Data Modeling

1. Conceptual data modeling gives a high-level view of the data structure, such as how data interacts across an organization. For example, a conceptual data model may be used to define the business requirements for a new database. A conceptual data model doesn't contain technical details. 

2. Logical data modeling focuses on the technical details of a database such as relationships, attributes, and entities. For example, a logical data model defines how individual records are uniquely identified in a database. But it doesn't spell out actual names of database tables. That's the job of a physical data model.

3. Physical data modeling depicts how a database operates. A physical data model defines all entities and attributes used; for example, it includes table names, column names, and data types for the database.

## Week 2 - Ensuring data integrity

### Unbiased and objective data

* Bias: A preference in favor of or against something/someone.

* Data bias: a type of error that systematically skews results in a certain direction.  

* Sampling bias: a sample that does not represent a population as a whole.

* Observer bias: the tendency for different people to observe things differently.

* Interpretation bias: the tendency to always interpret ambiguous situations in a positive or negative way.

* Confirmation bias: the tendency to search for ou interpret information in a way that confirms pre-existing beliefs.

### Data credibility

* Good data sources (ROCCC):
	* Reliable data: complete, unbiased
	* Original data
	* Comprehensive
	* Current
	* Cited

## Data ethics and privacy

> What comes to your mind when you think of the word, ethics? For me, it's a set of principles to live by. Most people have a personal code of ethics that helps them navigate the world. When we're young, it could be as simple as never lie, cheat or steal, but as we get older, it's a much broader list of do's and don'ts. Our personal ethics evolve and become more rational, giving us a moral compass to use as we face life's questions, challenges, and opportunities. 

> Ethics as well-founded standards of right and wrong that prescribe what humans ought to do, usually in terms of rights, obligations, benefits to society, fairness or specific virtues.

### Data ethics

***Well- founded standards of right and wrong that dictate how data is collected, shared, and used.***

#### Aspects of data ethics

1.  Ownership: it's individuals who own the raw data they provide, and they have primary control over its usage, how it's processed and how it's shared.
2.  Transaction transparency: all data processing activities and algorithms should be completely explainable and understood by the individual who provides their data. 
3.  Consent: an individual's right to know explicit details about how and why their data will be used before agreeing to provide it.
4. Currency: individuals should be aware of financial transactions resulting from the use of their personal data and the scale of these transactions. 
5. Privacy: preserving a data subject's information and activity any time a data transaction occurs.
	* protection from unauthorized access to private data;
	* freedom from inappropriate use of our data; 
	* the right to inspect, update, or correct our data;
	* ability to give consent to use our data; and 
	* legal right to access our data.
6. Openness: free access, usage, and sharing of data

#### Data anonymization

> Data anonymization is the process of protecting people's private or sensitive data by eliminating that kind of information. Typically, data anonymization involves blanking, hashing, or masking personal information, often by using fixed-length codes to represent data columns, or hiding data with altered values. 

### Open data

1. Data interoperability: the ability of data systems and services to openly connect and share data

***What is open data?***  
In data analytics, open data is part of data ethics, which has to do with using data ethically. Openness refers to free access, usage, and sharing of data. But for data to be considered open, it has to:

1. Be available and accessible to the public as a complete dataset
2. Be provided under terms that allow it to be reused and redistributed
3. Allow universal participation so that anyone can use, reuse, and redistribute the data

Data can only be considered open when it meets all three of these standards. 


#### Sites and resources for open data

1. [U.S. government data site](https://www.data.gov/): Data.gov is one of the most comprehensive data sources in the US. This resource gives users the data and tools that they need to do research, and even helps them develop web and mobile applications and design data visualizations. 

2. [U.S. Census Bureau](https://www.census.gov/data.html): This open data source offers demographic information from federal, state, and local governments, and commercial entities in the U.S. too. 

3. [Open Data Network](https://www.opendatanetwork.com/): This data source has a really powerful search engine and advanced filters. Here, you can find data on topics like finance, public safety, infrastructure, and housing and development.

4. [Google Cloud Public Datasets](https://cloud.google.com/public-datasets): There are a selection of public datasets available through the Google Cloud Public Dataset Program that you can find already loaded into BigQuery.  

5. [Dataset Search](https://datasetsearch.research.google.com/): The Dataset Search is a search engine designed specifically for data sets; you can use this to search for specific data sets. 


## Week 3 - All about databases

Skipped. Data governance, SQL, metadata.

## Week 4 - Feel confident in your data

### Best practices for file naming conventions
Review the following file naming recommendations:

1. Work out and agree on file naming conventions early on in a project to avoid renaming files again and again.

2. Align your file naming with your team's or company's existing file-naming conventions.

3. Ensure that your file names are meaningful; consider including information like project name and anything else that will help you quickly identify (and use) the file for the right purpose.

4. Include the date and version number in file names; common formats are YYYYMMDD for dates and v## for versions (or revisions).

5. Create a text file as a sample file with content that describes (breaks down) the file naming convention and a file name that applies it.

6. Avoid spaces and special characters in file names. Instead, use dashes, underscores, or capital letters. Spaces and special characters can cause errors in some applications.

### Securing data

#### Balancing security and analytics

The battle between security and data analytics
Data security means protecting data from unauthorized access or corruption by putting safety measures in place. Usually the purpose of data security is to keep unauthorized users from accessing or viewing sensitive data. Data analysts have to find a way to balance data security with their actual analysis needs. This can be tricky-- we want to keep our data safe and secure, but we also want to use it as soon as possible so that we can make meaningful and timely observations.   

In order to do this, companies need to find ways to balance their data security measures with their data access needs.  

Luckily, there are a few security measures that can help companies do just that. The two we will talk about here are encryption and tokenization.   

Encryption uses a unique algorithm to alter data and make it unusable by users and applications that don’t know the algorithm. This algorithm is saved as a “key” which can be used to reverse the encryption; so if you have the key, you can still use the data in its original form.  

Tokenization replaces the data elements you want to protect with randomly generated data referred to as a “token.” The original data is stored in a separate location and mapped to the tokens. To access the complete original data, the user or application needs to have permission to use the tokenized data and the token mapping. This means that even if the tokenized data is hacked, the original data is still safe and secure in a separate location. 

Encryption and tokenization are just some of the data security options out there. There are a lot of others, like using authentication devices for AI technology. 

As a junior data analyst, you probably won’t be responsible for building out these systems. A lot of companies have entire teams dedicated to data security or hire third party companies that specialize in data security to create these systems. But it is important to know that all companies have a responsibility to keep their data secure, and to understand some of the potential systems your future employer might use. 

## Week 5 - Managing your presence as a data analyst







  