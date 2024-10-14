# deployment

> Given an optional tenant name and a deployment uuid (create one if not exists), this module generate a deployment id.  
> It can be useful to tag objects deployed on a shared openstack project, either many deployment of a single tenant or many deployment of many tenant (a classroom for example).

## Prerequisites

Having [installed](https://docs.pkgx.sh/run-anywhere/terminals#other-ways-to-install) pkgx that is used to version the module scripts dependencies (bash, jq).

## Note

The UUIDs are lowered.

## Usage

### Single-tenant project

#### Configuration

```bash
module deployment {
    source = "git::https://github.com/openstack-terraform-modules/deployment.git"
}

output deployment {
  value = {
    file_path = module.deployment.file_path
    uuid = module.deployment.uuid
    tenant_name = module.deployment.tenant_name
    id = module.deployment.id
  }
}
```

#### Output

```bash
Outputs:

deployment = {
  file_path" = "/home/ci/github.com/openstack-terraform-modules/deployment/terraform/deployment.json"
  "id" = "a0288b3d"
  "tenant_name" = ""
  "uuid" = "a0288b3d-5488-7e46-bcc0-825bf5a4c0e2"
}

```

### Multi-tenant project

#### Configuration

```bash
module alice_deployment {
    source = "git::https://github.com/openstack-terraform-modules/deployment.git"
    tenant_name = "alice" 
}

module bob_deployment {
    source = "git::https://github.com/openstack-terraform-modules/deployment.git"
    tenant_name = "bob"
    deployment_uuid = "C6858C03-F5CB-4624-BE44-E60A989638B8"
}

output alice_deployment {
  value = {
    file_path = module.alice_deployment.file_path
    uuid = module.alice_deployment.uuid
    tenant_name = module.alice_deployment.tenant_name
    id = module.alice_deployment.id
  }
}

output bob_deployment {
  value = {
    file_path = module.bob_deployment.file_path
    uuid = module.bob_deployment.uuid
    tenant_name = module.bob_deployment.tenant_name
    id = module.bob_deployment.id
  }
}
```

#### Output

```bash
Outputs:

alice_deployment = {
  "file_path" = "/home/ci/github.com/openstack-terraform-modules/deployment/terraform/alice-deployment.json"
  "id" = "alice-9aa58a2d"
  "tenant_name" = "alice"
  "uuid" = "9aa58a2d-26eb-d452-b99f-e705c04d4b06"
}
bob_deployment = {
  "file_path" = "/home/ci/github.com/openstack-terraform-modules/deployment/terraform/bob-deployment.json"
  "id" = "bob-c6858c03"
  "tenant_name" = "bob"
  "uuid" = "c6858c03-f5cb-4624-be44-e60a989638b8"
}

```
