# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'invalid title' do
    visit new_book_path
    fill_in "book[author]", with: 'j.k rowling'
    fill_in "book[price]", with: '100'
    select("2018", from: "book_published_date_1i")
    select("March", from: "book_published_date_2i")
    select("1", from: "book_published_date_3i")
    click_on 'Create Book'
    expect(page).to have_content('Title can\'t be blank')
  end
  scenario 'invalid author' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: '100'
    select("2018", from: "book_published_date_1i")
    select("March", from: "book_published_date_2i")
    select("1", from: "book_published_date_3i")
    click_on 'Create Book'
    expect(page).to have_content('Author can\'t be blank')
  end

  scenario 'invalid price' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'j.k rowling'
    select("2018", from: "book_published_date_1i")
    select("March", from: "book_published_date_2i")
    select("1", from: "book_published_date_3i")
    click_on 'Create Book'
    expect(page).to have_content('Price can\'t be blank')
  end

  scenario 'invalid date' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'j.k rowling'
    fill_in "book[price]", with: '100'
    click_on 'Create Book'
    expect(page).to have_content('Published date can\'t be blank')
  end

  scenario 'valid submission' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'j.k rowling'
    fill_in "book[price]", with: 'j.k rowling'
    select("2018", from: "book_published_date_1i")
    select("March", from: "book_published_date_2i")
    select("1", from: "book_published_date_3i")
    click_on 'Create Book'
    expect(page).to have_content('Book was successfully created.')
  end



end