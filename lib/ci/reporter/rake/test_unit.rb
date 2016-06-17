require 'ci/reporter/rake/utils'

namespace :ci do
  namespace :setup do
    task :testunit do
      rm_rf ENV["CI_REPORTS"] || "test/reports"
      require 'ci/reporter/rake/test_unit_loader'
    end
  end
end
