CREATE TABLE IF NOT EXISTS "public"."reservations" (
  "id" TEXT,
  "hotel_id" TEXT,
  "room_id" TEXT,
  "costumer_id" TEXT NOT NULL,
  "reservation_day" DATE NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "reservations_pkey" PRIMARY KEY ("id")
);


ALTER TABLE ONLY "public"."reservations"
ADD CONSTRAINT "reservations_hotel_id_fkey"
FOREIGN KEY (hotel_id) REFERENCES hotels(id)
ON UPDATE CASCADE
ON DELETE CASCADE
NOT DEFERRABLE;


ALTER TABLE ONLY "public"."reservations"
ADD CONSTRAINT "reservations_room_id_fkey"
FOREIGN KEY (room_id) REFERENCES rooms(id)
ON UPDATE CASCADE
ON DELETE CASCADE
NOT DEFERRABLE;


ALTER TABLE ONLY "public"."reservations"
ADD CONSTRAINT "reservations_costumer_id_fkey"
FOREIGN KEY (costumer_id) REFERENCES costumers(id)
ON UPDATE CASCADE
ON DELETE CASCADE
NOT DEFERRABLE;