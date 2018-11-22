#!/usr/bin/env bash
#
# Copyright (c) 2018 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

MINIO_ENDPOINT="minioplatform.default:9000"
MINIO_URL="http://$MINIO_ENDPOINT"
helm install --set minio.endpoint=$MINIO_ENDPOINT --set minio.endpointUrl=$MINIO_URL --set minio.accessKey=$MINIO_ACCESS_KEY --set minio.secretKey=$MINIO_SECRET_KEY --set image=$CRD_IMAGE --set tag=$CRD_TAG --set platformDomain=$DOMAIN_NAME ../../helm-deployment/crd-subchart/
