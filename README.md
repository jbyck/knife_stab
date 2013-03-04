## knife_stab

A knife plugin for simulatenously deleting a Chef client and node.

### Usage

Copy to your knife plugin directly. (Possibly ~/.chef/knife/plugins). 

To delete a client and node (that have the same name):

> knife stab NODE_AND_CLIENT

Force delete

> knife stab NODE_AND_CLIENT -y