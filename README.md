# tf-gce (Non-Production)

Google Compute Engine instances for dev and staging environments.

## Configuration

**Terraform Cloud Workspace**: `gce-dev`

**Environment Variables** (set in TFC):
- `TF_VAR_gcp_project = vivacity-tech-dream-dev`
- `TF_VAR_gcp_region = us-central1`
- `TF_VAR_gcp_zone = us-central1-a`
- `TF_VAR_environment = dev`

## Resources

- Compute Engine instance (e2-medium)
- Network interface connected to app subnet
- Debian 11 boot image

## Outputs

This module exports:
- `instance_name` - GCE instance name
- `instance_id` - GCE instance ID
- `instance_network_ip` - Private IP address

## Dependencies

- **Depends on**: `vpc-dev` (uses app subnet)

## Usage

1. Set up Terraform Cloud workspace: `gce-dev`
2. Configure environment variables in TFC
3. Ensure `vpc-dev` workspace is applied first
4. Push to main branch to trigger apply

## Dependency Graph

```
vpc-dev
└── gce-dev (consumes vpc outputs)
```