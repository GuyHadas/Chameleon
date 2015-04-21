# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150421062122) do

  create_table "campaigns", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "competition_id"
    t.text     "campaigntagline"
    t.string   "campaignprint_file_name"
    t.string   "campaignprint_content_type"
    t.integer  "campaignprint_file_size"
    t.datetime "campaignprint_updated_at"
    t.string   "campaignsocialmedia_file_name"
    t.string   "campaignsocialmedia_content_type"
    t.integer  "campaignsocialmedia_file_size"
    t.datetime "campaignsocialmedia_updated_at"
    t.string   "campaignguerrilla_file_name"
    t.string   "campaignguerrilla_content_type"
    t.integer  "campaignguerrilla_file_size"
    t.datetime "campaignguerrilla_updated_at"
    t.string   "campaignmobile_file_name"
    t.string   "campaignmobile_content_type"
    t.integer  "campaignmobile_file_size"
    t.datetime "campaignmobile_updated_at"
    t.string   "campaignonlinebanner_file_name"
    t.string   "campaignonlinebanner_content_type"
    t.integer  "campaignonlinebanner_file_size"
    t.datetime "campaignonlinebanner_updated_at"
    t.string   "campaignoutofhome_file_name"
    t.string   "campaignoutofhome_content_type"
    t.integer  "campaignoutofhome_file_size"
    t.datetime "campaignoutofhome_updated_at"
    t.string   "campaignradio_file_name"
    t.string   "campaignradio_content_type"
    t.integer  "campaignradio_file_size"
    t.datetime "campaignradio_updated_at"
    t.string   "campaigncommercial_file_name"
    t.string   "campaigncommercial_content_type"
    t.integer  "campaigncommercial_file_size"
    t.datetime "campaigncommercial_updated_at"
  end

  add_index "campaigns", ["competition_id"], name: "index_campaigns_on_competition_id"

  create_table "competitions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "brandname"
    t.string   "targetaudience"
    t.string   "companydescription"
    t.string   "campaigntone"
    t.integer  "budget"
    t.date     "begindate"
    t.date     "enddate"
    t.text     "brief"
    t.boolean  "commercial"
    t.boolean  "print"
    t.boolean  "radio"
    t.boolean  "tagline"
    t.boolean  "socialmedia"
    t.boolean  "guerrilla"
    t.boolean  "mobile"
    t.boolean  "onlinebanner"
    t.boolean  "outofhome"
    t.float    "campaignbudget"
  end

end
