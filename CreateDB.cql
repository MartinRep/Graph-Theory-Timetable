CREATE (s:Student {name:'Martin Repicky'}, id: 'G00328337', group:'B')
CREATE (r:Room {number:436, capacity: 36, name:'CR5'})
CREATE (l:Lecturer {name:'Ian McLoughlin'})  //courses:[40470,41891,40005,48901,45699,48898,50669]})
CREATE (p:Program {name:'BSc in Software Development L7 Yr 3 Sem 6', id:'G-KSOFG73'})
CREATE
    (cGraph:Course{name:'Graph Theory', id:48901, hours:3, labs:1}),
    (cMAD:Course{name:'Mobile Applications Development 2', id:41889, hours:4, labs:2}),
    (cDB:Course{name:'Database Management', id:40452, hours:4, labs:2}),
    (cSSR:Course{name:'Server Side Rad', id:41895, hours:3, labs:2}),
    (cST:Course{name:'Software Testing', id:41911, hours:3, labs:2})
CREATE
    (p)-[:COURSE]->(cGraph),
    (p)-[:COURSE]->(cMAD),
    (p)-[:COURSE]->(cDB),
    (p)-[:COURSE]->(cSSR),
    (p)-[:COURSE]->(cST),	
    (s)-[:PROGRAM]->(p)
