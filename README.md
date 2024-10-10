# deployment

> Given an optional tenant name and a deployment uuid (create one if not exists), this module generate a deployment id.  
> It can be useful to tag objects deployed on a shared project, either many deployment of a single tenant or many deployment of many tenant (a classroom for example).

## Usage

### Single-tenant project

```bash
module deployment {
    source = "git::http://github.com/openstack-terraform-modules/deployment"
}

output deployment {
  value = {
    uuid = module.deployment.uuid
    tenant_name = module.deployment.name
    id = module.deployment.id
  }
}
```

### Multi-tenant project
In a modules.tf file of your project declare the following code

```bash
module alice_deployment {
    source = "git::http://github.com/openstack-terraform-modules/deployment"
    tenant_name = "alice" 
}

module bob_deployment {
    source = "git::http://github.com/openstack-terraform-modules/deployment"
    tenant_name = "bob"
    deployment_uuid = "C6858C03-F5CB-4624-BE44-E60A989638B8"
}
```

In a outputs.tf file

```bash
output alice_deployment {
  value = {
    uuid = module.alice_deployment.uuid
    tenant_name = module.alice_deployment.name
    id = module.alice_deployment.id
  }
}

output bob_deployment {
  value = {
    uuid = module.bob_deployment.uuid
    tenant_name = module.bob_deployment.name
    id = module.bob_deployment.id
  }
}

```
