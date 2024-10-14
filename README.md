# deployment

> Given an optional tenant name and a deployment uuid (create one if not exists), this module generate a deployment id.  
> It can be useful to tag objects deployed on a shared openstack project, either many deployment of a single tenant or many deployment of many tenant (a classroom for example).

## Prerequisites

Having [installed](https://docs.pkgx.sh/run-anywhere/terminals#other-ways-to-install) pkgx that is used to version the module scripts dependencies (bash, jq).

## Usage

### Single-tenant project

#### Configuration

```bash
module deployment {
    source = "git::http://github.com/openstack-terraform-modules/deployment"
}

output deployment {
  value = {
    file_path = module.deployment.file_path
    uuid = module.deployment.uuid
    tenant_name = module.deployment.name
    id = module.deployment.id
  }
}
```

#### Output

```bash
Outputs:

deployment = {
  "id" = "a0288b3d"
  "tenant_name" = ""
  "uuid" = "a0288b3d-5488-7e46-bcc0-825bf5a4c0e2"
}

```

### Multi-tenant project

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

output alice_deployment {
  value = {
    file_path = module.deployment.file_path
    uuid = module.alice_deployment.uuid
    tenant_name = module.alice_deployment.name
    id = module.alice_deployment.id
  }
}

output bob_deployment {
  value = {
    file_path = module.deployment.file_path
    uuid = module.bob_deployment.uuid
    tenant_name = module.bob_deployment.name
    id = module.bob_deployment.id
  }
}
```
