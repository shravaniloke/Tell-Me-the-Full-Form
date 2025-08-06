CREATE DATABASE IF NOT EXISTS fullformdb;

USE fullformdb;

CREATE TABLE IF NOT EXISTS acronym_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    acronym VARCHAR(10),
    fullform VARCHAR(100)
);

-- Insert example data
INSERT INTO acronym_table (acronym, fullform) VALUES
('RAM', 'Random Access Memory'),
('CPU', 'Central Processing Unit');

INSERT INTO acronym_table (acronym, fullform) VALUES
('LOL', 'Laugh Out Loud'),
('YOLO', 'You Only Live Once'),
('ASAP', 'As Soon As Possible'),
('WIP', 'Work In Progress'),
('FOMO', 'Fear Of Missing Out'),
('PIN', 'Personal Identification Number'),
('SONAR', 'Sound Navigation and Ranging'),
('ZIP', 'Zone Improvement Plan'),
('NASA', 'National Aeronautics and Space Administration'),
('RADAR', 'Radio Detection and Ranging'),
('UNICEF', 'United Nations International Children’s Emergency Fund'),
('UNESCO', 'United Nations Educational, Scientific and Cultural Organisation'),
('RAM', 'Random Access Memory'),
('ROM', 'Read Only Memory'),
('CAPTCHA', 'Completely Automated Public Turing Test to Tell Computers and Humans Apart'),
('LASER', 'Light Amplification by Stimulated Emission of Radiation'),
('SIM', 'Subscriber Identity Module'),
('WiFi', 'Wireless Fidelity'),
('LAN', 'Local Area Network'),
('WAN', 'Wide Area Network'),
('RAW', 'Research and Analysis Wing'),
('NATO', 'North Atlantic Treaty Organisation'),
('SWOT', 'Strengths, Weaknesses, Opportunities and Threats'),
('SARS', 'Severe Acute Respiratory Syndrome'),
('SAARC', 'South Asian Association for Regional Cooperation'),
('SCUBA', 'Self-Contained Underwater Breathing Apparatus'),
('FIFA', 'Fédération Internationale de Football Association'),
('TEFL', 'Teaching English as a Foreign Language'),
('TESL', 'Teaching English as a Second Language'),
('TESOL', 'Teaching English to Speakers of Other Languages'),
('TOEFL', 'Test of English as a Foreign Language'),
('IELTS', 'International English Language Testing System'),
('HTTP', 'Hypertext Transfer Protocol'),
('HTML', 'Hypertext Markup Language'),
('URL', 'Uniform Resource Locator'),
('USB', 'Universal Serial Bus'),
('PDF', 'Portable Document Format'),
('AI', 'Artificial Intelligence'),
('CPU', 'Central Processing Unit'),
('IP', 'Internet Protocol'),
('SQL', 'Structured Query Language'),
('CSS', 'Cascading Style Sheets'),
('GIF', 'Graphics Interchange Format');