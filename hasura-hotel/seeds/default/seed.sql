-- Seeding data for the hotels table
INSERT INTO "public"."hotels" ("id", "name")

-- Describe the dataset:
SELECT
  CONCAT('h', "h") AS "id",
  CONCAT('Hotel', "h") AS "name"

-- Set the size of the dataset:
FROM generate_series(1, 100) AS "h"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "hotels_pkey"
DO UPDATE SET "name" = EXCLUDED."name";



-- Seeding data for the rooms table
INSERT INTO "public"."rooms" ("id", "hotel_id", "type", "quantity")

-- Describe the dataset:
SELECT
  CONCAT('r', "r") AS "id",
  CONCAT('h', floor(random() * (100 - 1 + 1) + 1)) AS "hotel_id",
  CONCAT('Double Room with City View', "r") AS "type",
  floor(random() * (30 - 1 + 1) + 1) AS "quantity"

-- Set the size of the dataset:
FROM generate_series(1, 100) AS "r"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "rooms_pkey"
DO UPDATE SET
    "hotel_id" = EXCLUDED."hotel_id",
    "type" = EXCLUDED."type",
    "quantity" = EXCLUDED."quantity";


-- Seeding data for the costumers table
INSERT INTO "public"."costumers" ("id", "name")

-- Describe the dataset:
SELECT
  CONCAT('c', "c") AS "id",
  CONCAT('Costumer', "c") AS "name"

-- Set the size of the dataset:
FROM generate_series(1, 100) AS "c"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "costumers_pkey"
DO UPDATE SET "name" = EXCLUDED."name";


-- Seeding data for the reservations table
INSERT INTO "public"."reservations" ("id", "hotel_id", "room_id", "costumer_id", "reservation_day")

-- Describe the dataset:
SELECT
  CONCAT('r', "r") AS "id",
  CONCAT('h', floor(random() * (100 - 1 + 1) + 1)) AS "hotel_id",
  CONCAT('r', floor(random() * (100 - 1 + 1) + 1)) AS "room_id",
  CONCAT('c', floor(random() * (100 - 1 + 1) + 1)) AS "costumer_id",
  NOW() + random() * (INTERVAL '1 year') AS "reservation_day"

-- Set the size of the dataset:
FROM generate_series(1, 100) AS "r"

-- Manage conflicts with existing values:
ON CONFLICT ON CONSTRAINT "reservations_pkey"
DO UPDATE SET
    "hotel_id" = EXCLUDED."hotel_id",
    "room_id" = EXCLUDED."room_id",
    "costumer_id" = EXCLUDED."costumer_id",
    "reservation_day" = EXCLUDED."reservation_day";
