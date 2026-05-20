# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Basic pages imported from the static Portfolio
Page.find_or_create_by!(slug: 'hero') do |p|
	p.title = 'Software Engineer'
	p.content = 'Building robust Ruby on Rails applications with modern frontend technologies. 3+ years of experience crafting scalable, user-focused solutions.'
end

Page.find_or_create_by!(slug: 'about') do |p|
	p.title = 'About'
	p.content = 'Software Engineer specializing in Ruby on Rails with strong frontend experience. I craft performant, maintainable, and user-focused features, collaborating closely with teams to deliver business value.'
end

Page.find_or_create_by!(slug: 'skills') do |p|
	p.title = 'Skills'
	p.content = 'Backend: Ruby, Ruby on Rails, Python; Frontend: HTML, CSS, Bootstrap, JavaScript; Databases: PostgreSQL, MySQL, MongoDB; Tools: Git, Redis, Sidekiq, Nginx, AWS'
end

Page.find_or_create_by!(slug: 'experience') do |p|
	p.title = 'Experience'
	p.content = "Software Engineer — Bluebash Consulting Private Limited (Jan 2023 — Present)\nFull-Stack Developer Intern — Bluebash Consulting (Jun 2022 — Dec 2022)"
end

# Projects
# Project.find_or_create_by!(title: 'Dentistfind') do |proj|
# 	proj.description = 'Platform for clinics with websites, appointments, SMS/calls, and chat widget.'
# 	proj.tech = 'Rails, JavaScript, Bootstrap, MongoDB'
# end

Project.find_or_initialize_by(title: 'Dentistfind').tap do |proj|
  proj.description = 'A high-performance enterprise EHR (Electronic Health Record) application built to digitally manage clinic patient life cycles, continuous health tracking, and automated communications.'
  proj.tech = 'Rails, JavaScript, Bootstrap, MongoDB, AWS S3, Sidekiq, OpenAI API, Bandwidth SDK, Xero, Paymentech'
  proj.link = 'https://dentistfind.com'
  proj.github_link = 'https://github.com'
  proj.role_duration = '3 Years Engineering'
  proj.project_timeline = '10+ Year Active App'
  proj.project_badges = 'SaaS, HealthTech, Enterprise'
  proj.challenge_text = 'Working on a mature 10+ year product presented unique complexities. The application was deeply tied to an ancient environment containing out-of-date Ruby and Rails frameworks. Critical telecom pipelines had collapsed due to highly outdated Bandwidth SDK legacy dependencies, risking critical business functions. The core engineering balance required resolving massive technical debt without causing application breaking production errors or system downtime.'
  proj.contributions = [
    {
      label: 'INFRASTRUCTURE',
      title: 'Telecom Pipeline Recovery & SDK Overhaul',
      desc: 'Took singular ownership of resolving production-breaking telecom outages by modernizing an legacy Bandwidth SDK. Meticulously resolved cascading backward-compatibility failures across older Rails dependencies.',
      bullets: ['Restored critical communication pipelines', 'Drastically reduced messaging failure rates', 'Enhanced server response times in production']
    },
    {
      label: 'ARTIFICIAL INTELLIGENCE',
      title: 'AI-Powered Chatwidget Automation',
      desc: 'Optimized conversational data handling workflows using Sidekiq background jobs for email and SMS processing. Integrated the OpenAI API to natively automate patient conversations.',
      bullets: ['Eliminated system communication response lag times', 'Safeguarded critical clinic patient leads', 'Shifted slow alerts to background queuing architecture']
    },
    {
      label: 'DATA AUTOMATION',
      title: 'Intelligent Lead Qualification Engines',
      desc: 'Refactored simple, rigid backend validations into a cognitive evaluation matrix powered by LLMs. The application evaluates name, email, raw call recordings, and chat interactions synchronously.',
      bullets: ['Automatically tags incoming leads (Potential, Existing, Spam)', 'Feeds refined data directly into Lead Tracking dashboards', 'Drastically reduced complex code validation overhead']
    },
    {
      label: 'FINANCIAL ARCHITECTURE',
      title: 'Proposal & Agreement Management Engine',
      desc: 'Completely redesigned the billing architecture from the ground up. Engineered a robust clinic-facing proposal generator supporting custom financial invoicing and order tracking schemas.',
      bullets: ['Secure, transactional database storage for agreements', 'End-to-end audit tracking across custom orders', 'Rebuilt with resilient, fault-tolerant database schemas']
    }
  ]
  proj.core_features = [
    {
      title: 'Omnichannel Appointment Pipeline',
      desc: 'The platform provides multiple booking endpoints: clinic-specific target sites, internal authenticated administration dashboards, and a headless API architecture engineered for external WordPress integrations.'
    },
    {
      title: 'Telecom Framework & Storage Routing',
      desc: 'Utilizes Bandwidth in-app calling integration to parse active call data. Live call tracking records are instantly transcribed, processed, and pushed to secure AWS S3 storage buckets while supporting direct logic to provision or tear down telephone numbers dynamically.'
    }
  ]
  proj.save!
end

Project.find_or_initialize_by(title: 'Gallery App').tap do |proj|
  proj.description = 'Album and photo CRUD with Devise auth and Mailtrap notifications.'
  proj.tech = 'Rails, HTML/CSS, Bootstrap, PostgreSQL'
  proj.save!
end
