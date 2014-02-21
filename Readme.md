#TCS Handles Aggregator

A Ruby Gem to Aggregate All tweets of [TCS](tcs.com) and TCS Activities related Official Handles.

**Why just TCS?**

We work here :neckbeard: !

But don't worry, it will still work for your personal account too :+1:


## Installation

	gem install tcs-handles-aggregator

##Usage

To connect to Twitter you will need to register your Application to twitter [you can register here](https://apps.twitter.com/app/new) and you will be provided by a `YOUR_CONSUMER_KEY` and `YOUR_CONSUMER_SECRET`

	$ irb
	1.9.3p448 :002 > require 'tcs-handles-aggregator'
	 => true 
	1.9.3p448 :003 > client  = THA::Connection.new({consumer_key: 'YOUR_CONSUMER_KEY',consumer_secret: 'YOUR_CONSUMER_SECRET'})
	 => #<THA::Connection:0x007fd9a3a107a0 @consumer_key="xxxxxxxxxxx", @consumer_secret="xxxxxxxxxxxxx"> 
	1.9.3p448 :004 > 

	1.9.3p448 :004 > fetcher = THA::Fetcher.new({connection: client})
 	=> #<THA::Fetcher:0x007fd9a406a498 @connection=#<THA::Connection:0x007fd9a3a107a0 @consumer_key="xxxxxxxxxxx", @consumer_secret="xxxxxxxxxxxxx">, @users=["TCS_News", "nycmarathon", "TCS_Oracle", "TCS_SAP", "TCS_SFDC", "TCSITWiz", "iONSMECloudERP", "TCSWorld10K"]> 
	1.9.3p448 :005 > 

Get All the tweet by this

	fetcher.get

The Above will Give out results of all the TCS Official handles.  Currently following handles are supported by default

	- TCS_News
	- nycmarathon
	- TCS_Oracle
	- TCS_SAP
	- TCS_SFDC
	- TCSITWiz
	- iONSMECloudERP
	- TCSWorld10K'

The Following will be the kind of output (It's just a Subset printed below)

	{
	          "TCS_News" => [
	        [0] "TCS is recognized as Leader and Star Performer in #insurance BPO by @EverestGroup http://t.co/7wRK6NBdoE",
	        [1] "TCS partners with @QantasAirways to improve alignment of IT with business needs &amp; enhance productivity. http://t.co/CwVrJ3oEBQ",
	        [2] "Ever missed a cricket match due to harrowing billing experiences at the supermarket? Not anymore. Read how. http://t.co/ZtNfDsi1z6 #retail",
	        [3] "Correction: TCS has been certified as a Top Employer Australia 2014.",
	        [4] "A disruptor, ideas person, or an inspiring business head? Embrace co-innovation anyway. http://t.co/2qvr8spnbB #TCSInnovation",
	        [5] "TCS has been certified as the Top Employer Australia 2014 by @TopEmployer Institute http://t.co/l6GFa8vBgp http://t.co/uEOWEWplYh",
	        [6] "What causes disruptive innovation – Tech? Cost? Business Models? Operational Models? Products? Services? Markets? http://t.co/2qvr8spnbB",
	        [7] "Infographic: How communications service providers can thrive in the new digital environment? #digitaltransformation  http://t.co/MXbya4026L",
	        [8] "Customer data is now one of the most valuable strategic assets. How wide is your customer view? http://t.co/w8JFOLJrC4 #TCSDigital",
	        [9] "Read how the success of a #retail business depends on its ability to achieve customer loyalty: http://t.co/ZtNfDsi1z6"
	    ],
	       "nycmarathon" => [
	        [0] "Congrats to this week's winners! http://t.co/tCnivlexjH  Enter for chance to win non-complimentary, guaranteed entry http://t.co/C3IQHxjKdX.",
	        [1] "Training for a marathon or other race? @NYRRtraining is ready to answer your running questions! Ask away: https://t.co/KcqizraR0u #runchat",
	        [2] "Thoughts are with loved ones of Otto Mond, Marathon Man, who ran 40 marathons--18 consecutive @nycmarathon races http://t.co/t9ln1I0myy",
	        [3] "So many loving @nycmarathon moments! Share yours https://t.co/IqAPS0OeXl. #tcsnycmarathon",
	        [4] "The @nycmarathon course has been feeling the #polarvortex, too! http://t.co/zRYIIGNmvq",
	        [5] "Will you be our Valentine? @ New York Road Runners Office http://t.co/J5aWtwAymM",
	        [6] "\"Running is like life, what you put into it is what you get out of it.\" http://t.co/szLRBRgXNz",
	        [7] "It only takes one! #centralpark http://t.co/ESFJZ3MOog",
	        [8] "Apply to run @nycmarathon now &amp; you'll be automatically entered for weekly drawings for entry. http://t.co/WzbFn7ap2A http://t.co/Dt25B8CUGw",
	        [9] "Watch 2014 #TCSNYCMarathon in style near the finish line. Win 2 tickets to @NYCMarathon VIP Brunch http://t.co/oPR5sr8XkE #nyrrmillrose"
	    ],
	        "TCS_Oracle" => [
	        [0] "RT @TCS_News: See photos from our partnership w/ Finnish Wheelchair Curling team #Sochi2014 http://t.co/CfPfExPhF7 #ReleaseYourRock http://…",
	        [1] "When demand drops, inventory level surge. How do you relieve this pressure? Learn how #TCS SCM solutions help. http://t.co/4wHaHfLocY",
	        [2] "Learn what U.S. top #supply chain and logistics executives say about the complexities of #Warranty Management: http://t.co/XYuZoJaLV9  #SCM",
	        [3] "Oracle Exadata SERVER + STORAGE + DATABASE software = All around performance in #Big Data environments. http://t.co/QT5DPWB0qp",
	        [4] "RT @SandeepM_: “Many CEOs are telling us they’re reinventing their IT platforms to keep up with operational changes: http://t.co/j1pB1r42NW…",
	        [5] "90% of decision-makers indicate that delivering a good #custex is critical to their company's success. http://t.co/i11Adu4GzI",
	        [6] "RT @WilsonYChow: \"Own the customer experience.\" - Stephen Slade, Oracle #warranty #CX #CRM http://t.co/i9BrgDBtvo",
	        [7] "Data driven insights can more effectively predict customer needs. Share your #CX views. http://t.co/i11Adu4GzI",
	        [8] "Prepare for the #custex management of the future. Leveraging insight to drive actionable foresight - PoV by @kramanuj http://t.co/E6NkwlpdxU",
	        [9] "TCS survey shows only 37% of companies earn a #custex rating of 'excellent' or 'good\u0092. How do you compare? http://t.co/E6NkwlpdxU"
	    ],
	           "TCS_SAP" => [
	        [0] "#TCS Profitability Analysis Tool certified by #SAP- first partner to achieve certification in #HANA App in APAC http://t.co/IfqrAZ0jt0",
	        [1] "RT @TCS_News: See photos from our partnership w/ Finnish Wheelchair Curling team #Sochi2014 http://t.co/CfPfExPhF7 #ReleaseYourRock http://…",
	        [2] "Address your enterprise’s multi-country, multi-lingual requirements with #TCS Accelerated #SAP HCM Framework. http://t.co/Fc9XgX6PvD",
	        [3] "SPEED: #SAP HANA drives faster complex report generation with TCS Profitability analysis tool http://t.co/LDFMiUGefu",
	        [4] "#TCS\u0092 Accelerated #SAP #HCM framework minimizes development efforts &amp; improves data migration quality. http://t.co/oSMHeXUjoT",
	        [5] "Agile decision making requires #mobility that enables utilization of profitability reports on the go. http://t.co/LDFMiUGefu",
	        [6] "#TCS CoE runs one of the largest SAP HANA hardware platforms with a 5 TB in-memory capacity. http://t.co/egAxiZyXYm",
	        [7] "Data VELOCITY + VARIETY + VOLUME = most relevant insights. Learn more about #BigData and Analytics with @TCS_SAP http://t.co/2IticSlsEq",
	        [8] "Accelerated #SAP HCM framework from @TCS_news helps improve operational efficiency. Learn more: http://t.co/Fc9XgX6PvD",
	        [9] "SPEED: #TCS\u0092 Accelerated #SAP #HCM framework reduces implementation time &amp; ensures higher employee productivity. http://t.co/oSMHeXUjoT"
	    ],
	          "TCS_SFDC" => [
	        [0] "Transforming customer service:  TCS educates and advises on strategy and approach, delivering a transformation that provides long-term ROI.",
	        [1] "Did you know? TCS' Lisa Hager is the only female executive currently leading a global Platinum http://t.co/VfHJvktqRe practice. #LeanIn",
	        [2] "We've got your #Salesforce project covered: TCS has almost 280,000 employees from 118 different counties working in 197 offices.",
	        [3] "Did you know? TCS has one of the largest pools of Salesforce certified consultants in the world http://t.co/OWk0txFJyH",
	        [4] "Enabling customer-driven enterprises: TCS delivers proven, end-to-end http://t.co/VfHJvktqRe advisory, implementation and support solutions",
	        [5] "Hit the ground running:  We have customized apps past standard functionality to address unique challenges http://t.co/HuyiUiE8wM",
	        [6] "Did you know? TCS\u0092 SaaS CoE helps meet the needs Fortune 100 organizations http://t.co/WfDbZ4WTAF",
	        [7] "Business today demands solutions that establish a 360 degree view of customer. Do you?  http://t.co/hpuSKnB0Ti",
	        [8] "Did you know? TCS integrates key technology trends with transformative core business offerings http://t.co/WsM3qqsoFI",
	        [9] "Did you know? TCS has a dedicated team focused on next-generation mobility for our customers. Learn more: http://t.co/PrECiDwSA6"
	    ],
	          "TCSITWiz" => [
	        [0] "BBC is experimenting with #socialmedia to launch a 15-seconds daily news burst video. What is it called? #TCSITWiz http://t.co/KFZgSvUnlA",
	        [1] "@i_am_mejor That's right!",
	        [2] "Do you follow @TCS_News (twitter) for the latest updates? What did TCS co-develop with Nissan? Answer using #TCSITWiz http://t.co/jbMFqhSY3Q",
	        [3] "Do you run every day? RT @TCS_News We run as a group. it’s a great bonding exercise. — N Chandrasekaran, CEO and MD http://t.co/0aAIlU4y34",
	        [4] "@astiksamal You can be if you win all the way through. Good luck Astik!",
	        [5] "@Balaji1997 That's the correct answer Balaji!",
	        [6] "@tkaran50 You can always cheer &amp; catch the live action here on twitter as well as on our FB page: https://t.co/N8xHp2qHVo. @mustaqeemahmed",
	        [7] "These look cool, right? But, they're not the smart watches we gave to #TCSITWiz Mega Final Champions! Identify these? http://t.co/ol2H7STkno",
	        [8] "@Praveen_ITWiz That's correct Praveen!",
	        [9] "@tkaran50 Yes, he @mustaqeemahmed is! #WizFive"
	    ],
	    "iONSMECloudERP" => [
	        [0] "Blog: Make Material Requirement Planning simple http://t.co/yIJflhRqyt #MRP #ERP #JIT",
	        [1] "Ensure hassle free audit by tracking versions &amp; change history for an approved Purchase Order using #iON #Cloud #ERP http://t.co/PlIdckaF5g",
	        [2] "Enable  supervisors to initiate appraisal, set &amp; approve goals for employees of a work group in bulk &amp; save time http://t.co/hb6NvKverV",
	        [3] "Tag the travel requisition number against travel advance/claim application for easy tracking &amp; clearance http://t.co/Frb71ryGNd #Cloud #ERP",
	        [4] "View shift roster details using quick link of Self Service &amp; ensure correct payroll processing http://t.co/Opu9NA9Gys #Cloud #ERP",
	        [5] "Students can give suggestions through Self Service, rather than emails thus ensuring easy collation of feedback http://t.co/kgBPqUDBDd #ERP",
	        [6] "Glad to know :) RT \"@siddasrinivas: @iONSMECloudERP The problem solved. i downloaded hallticket.thanks to tcs ion\"",
	        [7] "@siddasrinivas Hi, please DM your contact number. We will soon have someone help you.",
	        [8] "Blog: Mobile #computing is slowly replacing traditional registers and desktops http://t.co/JHyizQMIB2",
	        [9] "Save time &amp; effort by updating student hostel allotment details in bulk using excel http://t.co/bnfAgqahM1 #TCS #iON #Cloud #ERP"
	    ],
	       "TCSWorld10K" => [
	        [0] "@M_Hansson Kindly check our Website  http://t.co/mRFIlcSSSI) for details regarding registration details in March 2014",
	        [1] "@tirthpandya  kindly wait for the official confirmation which will be out by last week of Feb / Mar 1st week.",
	        [2] "Wishing everyone a very Happy Dussehra from TCS World 10K Bangalore Team... http://t.co/80BXR5XuEn",
	        [3] "Happy Ganesh Chaturthi to everyone. How are you celebrating? :) http://t.co/zQTtCzyyJM",
	        [4] "Happy Janmashtami to all Runners! :) http://t.co/Kg6uTCUq3R",
	        [5] "Wishing you all a very Happy Raksha Bandhan from TCS World 10K Bangalore team! http://t.co/LKsNbL7DMw",
	        [6] "Wishing you all a very Happy Raksha Bandhan from TCS World 10K Bangalore team! http://t.co/pKNhwWsyKE",
	        [7] "Wish you all a Happy Independence Day! Jai Hind! http://t.co/11ZaNnMRo6",
	        [8] "Wishing you all, Eid Mubarak :) http://t.co/RKd3V8w5n2",
	        [9] "Poll : Which level of a runner you will classify yourself in?\n\n- Beginners Level\n\n- Intermediate Level\n\n- Professional Level"
	    ]
	}

You can Still fetch the Tweets of independent Accounts too or Non TCS

	1.9.3p448 :004 > fetcher = THA::Fetcher.new({connection: client,user: 'ankit8898'})


	{
	    "ankit8898" => [
	        [0] "#Opensourcing githubissues-port, a #rubygem to import/export #github issues #ruby https://t.co/1lhGLqppMW",
	        [1] "Achievement Unlocked: Philanthropist https://t.co/T5MVp1FiOg via @coderwall",
	        [2] "Useful blog #deploy #yeomanangular app on #heroku http://t.co/et4kVYqvyn",
	        [3] "RT @_zapper320: Look at our new gem https://t.co/UQ2yIC0GNp #rubygems  #ruby #googlehangouts",
	        [4] "RT @babumoshoy: I think the biggest challenge ahead of Arvind Kejriwal is the summer when he might struggle to keep the muffler on.",
	        [5] "@raysrashmi @binary_function that was informative .. i was not knowing about ext2: -&gt; 32768 case!",
	        [6] "I just backed Hello Ruby on @Kickstarter http://t.co/rgcnKsd5b4",
	        [7] "Rails - filter using join model on has_many through #protip https://t.co/ADBUNewXkA via @coderwall",
	        [8] "@_svs_ thanks for the retweet! Have a great new year",
	        [9] "@jedisct1 Thank you !"
	    ]
	}


## Licensing


The gem itself is released under the MIT license

:pray:
