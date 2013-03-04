class Stab < Chef::Knife
  
  # Force delete a node and a client in one line. No more knife delete node -y; knife delete client -y;
  # This is destructive. Use at own risk!
  
  banner "knife stab NODE_AND_CLIENT"
  
  def run
    unless name_args.size == 1
      ui.error "Node/Client name is required."
      show_usage
      exit 1
    end
    node_and_client = name_args.first    
    ui.confirm "Are you sure you want to stab #{node_and_client}?"
    # Catch errors 
    # Don't interrupt execution if client or node does not exist.
    delete_object(Chef::ApiClient, node_and_client) rescue nil
    delete_object(Chef::Node, node_and_client) rescue nil
  end
end