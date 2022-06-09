CREATE TABLE IF NOT EXISTS "public"."rooms" (
  "id" TEXT,
  "hotel_id" TEXT,
  "type" TEXT NOT NULL,
  "quantity" INT NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "rooms_pkey" PRIMARY KEY ("id")
);