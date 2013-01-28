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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130122133442) do

  create_table "cargos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colaboradors", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departamento_funcionarios", :force => true do |t|
    t.integer  "colaborador_id"
    t.integer  "cargo_id"
    t.integer  "departamento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "departamento_funcionarios", ["cargo_id"], :name => "index_departamento_funcionarios_on_cargo_id"
  add_index "departamento_funcionarios", ["colaborador_id"], :name => "index_departamento_funcionarios_on_colaborador_id"
  add_index "departamento_funcionarios", ["departamento_id"], :name => "index_departamento_funcionarios_on_departamento_id"

  create_table "departamentos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
