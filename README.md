[![Slalom][logo]](https://slalom.com)

# terraform-ssm-bastion [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-ssm-bastion.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-ssm-bastion) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-ssm-bastion.svg)](https://github.com/JamesWoolfenden/terraform-ssm-bastion/releases/latest)

terraform-ssm-bastion...

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Introduction

For bastions, store ssh key in SSM

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "ssm-bastion" {
  source     = "JamesWoolfenden/ssm-bastion/aws"
  verison="0.1.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allowed\_ips |  | string | n/a | yes |
| common\_tags | Implements the common tags scheme | map | n/a | yes |
| environment | The environment name | string | n/a | yes |
| instance\_type |  | string | n/a | yes |
| name | Name of the ec2 instance | string | n/a | yes |
| ssm\_standard\_role |  | string | n/a | yes |
| subnet\_id |  | string | n/a | yes |
| vpc\_id |  | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-ssm-bastion/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-ssm-bastion/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2019 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=Build+Harness&url=https://github.com/JamesWoolfenden/terraform-ssm-bastion
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=Build+Harness&url=https://github.com/JamesWoolfenden/terraform-ssm-bastion
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-ssm-bastion
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-ssm-bastion
[share_email]: mailto:?subject=Build+Harness&body=https://github.com/JamesWoolfenden/terraform-ssm-bastion
