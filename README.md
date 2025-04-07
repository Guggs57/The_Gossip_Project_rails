The Gossip Project
Description
The Gossip Project is a simple Rails app where users can view, create, and interact with gossips. It includes pages for static content, user profiles, and a list of gossips, styled with Bootstrap.

Features
Homepage: Displays a welcome message and a list of gossips with author names and titles.

Static Pages:

Team: Information about the team.

Contact: How to contact the team.

Welcome: A personalized greeting based on the URL.

Gossip Pages: Each gossip has a dedicated page displaying the title, content, author, and creation date.

User Profiles: Each user has a profile page with their information.

Installation
Prerequisites
Ruby 3.x

Rails 7.x

PostgreSQL

Steps
Clone the repository:

bash
Copier
git clone https://github.com/your-username/the-gossip-project.git
cd the-gossip-project
Install dependencies:

bash
Copier
bundle install
Set up the database:

bash
Copier
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
Start the server:

bash
Copier
bin/rails server
Visit http://localhost:3000.

Routes
/: Homepage displaying gossips.

/team: Team page.

/contact: Contact page.

/welcome/:first_name: Personalized welcome page.

/gossips/:id: Gossip detail page.

/users/:id: User profile page.

Technologies
Ruby on Rails

PostgreSQL

Bootstrap

HTML/CSS

Contributing
Feel free to fork the repo, create a branch, and submit a pull request!

Authors
Your Name

Your Partner’s Name

License
This project is licensed under the MIT License.