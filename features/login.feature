#Complete siguiendo las instrucciones del taller.
Feature: Register into Open Innovation
    As an user I want to register myself within open innovation website

Scenario Outline: Register suceed
    Given I go to Open Innovation home screen
    When I open the Sign in screen
    And I fill the required fields of <username> the <email> and <password> to create an account
    And I try to create the account
    And I create an oportunity
    And I insert the required <name> and <slogan> and <description> and <url> and <tag>
    And I submit the oportunity
    Then I expect to be see the oportunity

Examples:
      | username     | email                         | password     | name                        |slogan                                   | description                                                                                                        | url                                             | tag |     
      | bclifford1	 | swordesworth1@rambler.ru      | E1G3EKEE2toB	| Cremin LLC	              | leverage proactive networks	            | Vivamus vel nulla eget eros elementum pellentesque.                                                                | http://dummyimage.com/164x198.jpg/5fa2dd/ffffff | 4   |
      | ptourry2	 | learsman2@4shared.com	     | 4gX3tWst9wa	| Daniel-Daugherty            | integrate holistic platforms	        | Morbi quis tortor id nulla ultrices aliquet.	                                                                     | http://dummyimage.com/173x140.jpg/cc0000/ffffff | 1   |
      | vallwood3	 | tvicary3@mozilla.org	         | i71kcADJhWK	| Koch, Halvorson and Koepp	  | reintermediate synergistic technologies	| Vivamus in felis eu sapien cursus vestibulum.                                                                      | http://dummyimage.com/142x168.jpg/5fa2dd/ffffff | 4   |
      | hcolclough4	 | chonniebal4@surveymonkey.com	 | cuKOGofLx	| Lebsack and Sons	          | aggregate enterprise web-readiness	    | Nulla tempus.                                                                                                      | http://dummyimage.com/156x248.jpg/dddddd/000000 | 1   |
      | ltenwick5	 | hnewlan5@dropbox.com	         | 18bYQI7	    | Marquardt, Glover and White |	grow impactful eyeballs	                | Nulla tempus.	                                                                                                     | http://dummyimage.com/230x133.jpg/cc0000/ffffff | 2   |
      | rjermyn6	 | etruggian6@miitbeian.gov.cn	 | 8eouEe4KoF	| Jacobson, Hammes and Dooley |	enhance frictionless markets	        | In quis justo.                                                                                                     | http://dummyimage.com/223x185.jpg/cc0000/ffffff | 5   |
      | cseivwright7 | mhurley7@sphinn.com	         | T37iRwC	    | Senger-Runolfsson	          | engineer sticky applications	        | In hac habitasse platea dictumst.	                                                                                 | http://dummyimage.com/179x146.jpg/ff4444/ffffff | 3   |
      | delliff8	 | kmedway8@mashable.com	     | fO3ENuyd	    | Morar-Schroeder	          | recontextualize synergistic users	    | Donec quis orci eget orci vehicula condimentum.                                                                    | http://dummyimage.com/214x201.jpg/cc0000/ffffff | 1   |
      | dtraice9	 | ltinklin9@apple.com	         | PlGYcI5LEgaX	| Mayer, Walter and Emard	  | visualize seamless e-services	        | Proin at turpis a pede posuere nonummy.	                                                                         | http://dummyimage.com/106x225.jpg/5fa2dd/ffffff | 2   |
     