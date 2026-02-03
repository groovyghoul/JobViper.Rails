# Job Viper

Job Viper is a small Rails app for tracking job applications, related contacts,
and key events in the process.

## Features
- Track jobs with status, source, location, salary, and notes
- Add contacts per job (recruiter, hiring manager, etc.)
- Add timeline events (phone screen, interview, offer)
- Archive and unarchive jobs
- Quick stats on active pipeline (total, interviewing, offers)
- Authentication (Local only, COMING SOON: 3rd-party OAUTH)
- Simple printable report of results

## Screencast
https://github.com/user-attachments/assets/a66c3b49-1394-42ff-afaa-507517437730

## Requirements
- Ruby 3.4.7 (see `.ruby-version`)
- SQLite3 (this is a soft requirement; configuration can be set to use another database; TODO: instructions)

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
