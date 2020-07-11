{
    "id": "5ea06c41-f667-4dd6-bb38-b497ddd864e1",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_arBullet",
    "eventList": [
        {
            "id": "1f52348f-80b3-40e6-810f-0ac2840019ca",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
        },
        {
            "id": "1b2fdac0-6aa8-4916-9c85-37f069666e87",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 7,
            "eventtype": 7,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
        },
        {
            "id": "633acef0-b4be-4a99-b087-a8401ab2e3fa",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "13dfe659-56af-4a5c-8587-5a531a5c0ec1",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
        },
        {
            "id": "8bb91d33-1285-4182-a42e-d9b6f350d0f3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "6746236c-2907-4f1d-9958-e63ad76739a2",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
        },
        {
            "id": "b12030b4-a316-42ce-a00e-8da899d2679d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "3293ff61-6d1e-4a27-bca7-3b035d582471",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
        },
        {
            "id": "b6a7dd34-c822-40e6-a906-1f74333b91c1",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "714043db-2acc-47e8-ac0b-6dbc84ab8f79",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
        },
        {
            "id": "ef1b35af-86ef-4a16-9dee-3b9a2347971a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 7,
            "m_owner": "5ea06c41-f667-4dd6-bb38-b497ddd864e1"
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
    "physicsShapePoints": [
        {
            "id": "7f6a8b69-30c2-4844-8893-9201a9e1dce4",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "8381ac99-120d-4ef6-a36b-f502f5af335a",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 16,
            "y": 0
        },
        {
            "id": "18c020b9-4cfb-401a-aad6-087986e6f224",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 16,
            "y": 16
        },
        {
            "id": "1abf0ba3-cb2a-4928-a2ef-32cdc5b283a3",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 16
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "86bb8982-777a-4bca-b477-f539a0f6f21b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "bullet_speed",
            "varType": 0
        },
        {
            "id": "8717b064-2f79-420c-8e8e-85d32c629618",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": ".75",
            "varName": "bullet_size",
            "varType": 0
        },
        {
            "id": "1463d58c-c9dd-49f0-be5c-40f4888b865e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "damage",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "785a35cb-fedc-498a-b272-68f80f7ed4ee",
    "visible": true
}