CREATE TABLE IF NOT EXISTS "public"."reservations" (
  "id" TEXT,
  "hotel_id" TEXT,
  "room_id" TEXT,
  "costumer_id" TEXT NOT NULL,
  "reservation_day" DATE NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "reservations_pkey" PRIMARY KEY ("id")
);