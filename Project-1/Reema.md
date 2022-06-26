First of all I converted the json file into xml file.
So, here the root name of the file is <zoos> and in there, there are multiple <zoo>.
I already have the names of the tags in the json file, so, in the xml file I just need to arrange it.
There are some rules to convert the json file into xml.
first of all, there should be xml decoration in the starting, and it will be start by '?'. 
Attributes are prefixed with '@', there is not a single attribute in this file, though.


DTD is a Document Type Definition and we define all the elements and attributes we are using in the xml file.
Here, !DOCTYPE defines the root element of the document.
!ELEMENT defines the elemets(tags) in the xml document.
!ATTLIST defines the attribute of the particular element.
Here, I have used #PCDATA, too, which means the Parsed Character Data. PCDATA means that the element contains data that is going to be parsed.
if the element is used more than once, then we have add + sign after the name of that element.
Here, I validate the DTD and the screenshot for that is ![image info](../assets/dtd_validation.jpeg)


XSD is the same thing as DTD. 
XSD is also used to define all the attributes and elements used in the file, but the major difference between XSD and DTD is XSD is easier to read and understand.
If the element is used more than once then it will be considered as a complex element.
If there is an attribute in this file, then it should be define before the closing tag of that complex element.
I creadted XSD file for the XML file and I validate it and the screenshot for it is ![image info](../assets/xsd_validation.jpeg)
