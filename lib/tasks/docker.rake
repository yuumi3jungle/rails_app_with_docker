#
namespace :docker do
  desc "Build Postgresql container"
  task :build_pg do
    sh "docker build  -t pg config/docker/pg"
  end

  desc "Run Postgresql container"
  task :run_pg do
    sh "docker run -d -p 5432:5432 --name pg -t pg"
    sh "docker ps"
  end

  desc "Build Rails application container"
  task :build_app do
    Rake::Task['assets:precompile'].invoke
    sh "docker build  -t app ."
  end

  desc "Run Rails application container"
  task :run_app do
    sh "docker run -d -p 3000:3000 --link pg:db --name app -t app"
    sh "docker ps"
  end

  desc "Build Nginx container"
  task :build_nginx do
    sh "docker build  -t nginx config/docker/nginx"
  end

  desc "Run Nginx container"
  task :run_nginx do
    sh "docker run -d -p 80:80 --link app:app --volumes-from app --name nginx -t nginx"
    sh "docker ps"
  end
end