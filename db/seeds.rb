# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
Post.create(:title => 'Title', :content => 'wonderfull content', :logo => 'logo')
Post.create(:title => 'Title23', :content => 'wonderfull content', :logo => 'logo')
Post.create(:title => 'Title45', :content => 'wonderfull content', :logo => 'logo')
Post.create(:title => 'Title1', :content => 'wonderfull content', :logo => 'logo')
Post.create(:title => 'Title34', :content => 'wonderfull content', :logo => 'logo')
Post.create(:title => 'TitleGG', :content => 'wonderfull content', :logo => 'logo')
Post.create(:title => 'Title of titles', :content => 'wonderfull content', :logo => 'logo')
