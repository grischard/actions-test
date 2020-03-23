remote_file "ip.json" do
  source "https://ipapi.co/json/"
end

apt_repository "git-core" do
  uri "ppa:git-core/ppa"
end

package "git"

git "/tmp/rails" do
  action :sync
  repository "https://git.openstreetmap.org/public/rails.git"
  revision "da187ad5686e3a6422538de2c8e059b484b372f6"
  depth 1
  environment "GIT_TRACE" => "true",
              "GIT_TRACE_PACKET" => "true",
              "GIT_TRACE_CURL" => "true"
end

execute "sleep" do
  command "sleep 1"
end

git "/tmp/rails2" do
  action :sync
  repository "https://git.openstreetmap.org/public/rails.git"
  revision "da187ad5686e3a6422538de2c8e059b484b372f6"
  depth 1
  environment "GIT_TRACE" => "true",
              "GIT_TRACE_PACKET" => "true",
              "GIT_TRACE_CURL" => "true"
end
