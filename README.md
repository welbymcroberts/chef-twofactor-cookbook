Description
===========
Configures a system for Two Factor Authentication (currently with Yubico's Yubikey only)

Requirements
============
A RedHat derivative (Fedora, RHEL, CentOS etc)
EPEL

Usage
=====
Include the TwoFactorAuth recipe on the node.

Data bags are used for storing user -> yubikey mappings

Example Databags
================

admins - welby__mcroberts item
------------------------------
{
    "id": "welby__mcroberts",
    "yubikey": "ccccccbcjxxx:cccccccvnxxx",
    "username": "welby.mcroberts"
}

License and Author
==================

Author:: Welby McRoberts (<welby.mcroberts@whmcr.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

