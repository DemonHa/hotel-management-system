CREATE TABLE IF NOT EXISTS "public"."hotels" (
  "id" TEXT,
  "name" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "hotels_pkey" PRIMARY KEY ("id")
);