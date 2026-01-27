# Job Viper

Job Viper is a small Rails app for tracking job applications, related contacts,
and key events in the process.

## Features
- Track jobs with status, source, location, salary, and notes
- Add contacts per job (recruiter, hiring manager, etc.)
- Add timeline events (phone screen, interview, offer)
- Archive and unarchive jobs
- Quick stats on active pipeline (total, interviewing, offers)

## Screencast
[Watch a demo](docs/job-viper-demo.mp4)

## Requirements
- Ruby 3.4.7 (see `.ruby-version`)
- SQLite3

## Setup
```bash
bundle install
bin/rails db:prepare
```

## Run locally
```bash
bin/dev
```

This starts the Rails server and Tailwind watcher.

If you want to run them separately:
```bash
bin/rails server
bin/rails tailwindcss:watch
```

## Tests
```bash
bin/rails test
```

## Filters and views
- Active jobs: default on the index page
- Archived jobs: `/?view_archived=true` (TODO: add a button to the jobs page)
- Hide rejected: `/?filter=hide_rejected` (already wired to a button on the jobs page)

## Docker (production)
Build:
```bash
docker build -t job_viper .
```

Run (requires the value from `config/master.key`):
```bash
docker run -d -p 80:80 -e RAILS_MASTER_KEY=... --name job_viper job_viper
```

## Screenshots
Add screenshots here once ready.
