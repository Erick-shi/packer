{
   "variables": {
        "domain_name": "Default",
        "ssh_password": "111111",
        "region": "RegionOne"
    },



    "builders": [
        {
            "type": "openstack",
            "identity_endpoint": "http://controller:5000/v3",
            "endpoint_type": "publicURL",
            "tenant_name": "admin",
            "domain_name": "{{user `domain_name`}}",
            "username": "admin",
            "password": "admin",
            "region": "RegionOne",
            "ssh_username": "root",
            "ssh_password": "{{user `ssh_password`}}", 
            "ssh_timeout": "10000s",
            "image_name": "Centos7-my-{{isotime \"2016-01-02T15:04:05Z+0800\"}}",
            "source_image": "20f8c765-a042-44a7-8ebc-7e4097079013",
            "flavor": "35c95ac3-52cd-457b-8ac3-326722a9e779",
            "floating_ip_pool": "provider",
            "use_floating_ip": true,
            "networks": [
              "1cca5b3b-1c30-4c39-ad03-a59087723a37"
             ]
        }
],
    "provisioners": [
        {
            "type": "shell",
            "script": "file/test.sh"
       },
       {
            "type": "file",
            "source": "file/Erick",
            "destination": "/opt/Erick",
            "pause_before": "6s"
       }
       
]
}

##test

