require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/tmp/environment.xml') do
  its(:content) { should match /^<jvm-options>-agentpath:/opt/dynatrace/agent/lib64/libdtagent.so=name=glassfish-agent,collector=localhost:9998</jvm-options>$/ }
end
