{
    "id": "67432a09-342f-4738-9beb-36ab6b0fa1d2",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_slotMachine",
    "eventList": [
        {
            "id": "5c450a77-a167-44e6-bcf0-b15002593e01",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "67432a09-342f-4738-9beb-36ab6b0fa1d2"
        },
        {
            "id": "c01c77a7-2ed0-4be9-889a-27e10241e1a5",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "0c86a70e-9e5a-4468-ae63-8526f0c6f197",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "67432a09-342f-4738-9beb-36ab6b0fa1d2"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "e3128ad8-9df3-4021-a22c-87c3a8dae08a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "obj_thomas",
                "obj_xbow",
                "obj_shotgun",
                "obj_laserGun",
                "obj_pistol"
            ],
            "multiselect": true,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_thomas, obj_xbow, obj_shotgun, obj_laserGun, obj_pistol",
            "varName": "guns",
            "varType": 6
        },
        {
            "id": "8d1cfe25-4bd8-446c-b65e-651f741c0910",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "obj_poolStick",
                "obj_rod"
            ],
            "multiselect": true,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_poolStick, obj_rod",
            "varName": "cqc",
            "varType": 6
        }
    ],
    "solid": false,
    "spriteId": "4d9eea89-edf1-43a6-8905-b4fa2caba2d0",
    "visible": true
}