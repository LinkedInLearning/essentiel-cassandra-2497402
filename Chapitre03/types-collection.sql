CREATE TABLE Visite (
    userid UUID PRIMARY KEY,
    datevisite timestamp,
    ips set<inet>,
    pages map<text, timestamp>
);