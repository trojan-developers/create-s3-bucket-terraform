# create-s3-bucket-terraform

Port SSA:

```json
{
  "identifier": "create_s3_bucket_with_terraform",
  "title": "Terraform - Create S3 Bucket",
  "icon": "AWS",
  "description": "Provision a new S3 bucket using Terraform via GitHub Actions",
  "trigger": {
    "type": "self-service",
    "operation": "CREATE",
    "userInputs": {
      "properties": {
        "bucket_name": {
          "title": "S3 Bucket Name",
          "type": "string",
          "description": "Globally unique name for the S3 bucket (3–63 lowercase alphanumeric characters, dashes, or dots)"
        }
      },
      "required": [
        "bucket_name"
      ],
      "order": [
        "bucket_name"
      ]
    }
  },
  "invocationMethod": {
    "type": "GITHUB",
    "org": "trojan-developers",
    "repo": "create-s3-bucket-terraform",
    "workflow": "create-s3-bucket.yaml",
    "workflowInputs": {
      "port_context": {
        "blueprint": "{{.action.blueprint}}",
        "entity": "{{.entity.identifier}}",
        "run_id": "{{.run.id}}",
        "relations": "{{.entity.relations}}"
      },
      "bucket_name": "{{.inputs.\"bucket_name\"}}"
    },
    "reportWorkflowStatus": true
  }
}
```
