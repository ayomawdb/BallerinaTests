function main (string[] args) {
   var xmlDoc, _ = <xml>("<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + 
                         "<!DOCTYPE foo [" + 
                         "<!ELEMENT foo ANY >" +
                         "<!ENTITY xxe SYSTEM \"file:///etc/passwd\" >]>" +
                         "<foo>&xxe;</foo>");

   println("EntityInjection Result ::::::::: " + <string>xmlDoc);
}
