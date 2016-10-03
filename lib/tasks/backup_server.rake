desc "PG Backup"
namespace :pg do
  task :backup => [:environment] do
    datestamp = Time.now.strftime("%Y-%m-%d_%H-%M-%S")
    backup_file = "# ~/backups/whotowedme/db_name_# {datestamp}_dump.sql.gz"
    sh "pg_dump -h localhost -U pguser whotowedme_production | gzip -c > # {backup_file}"
  end
end
