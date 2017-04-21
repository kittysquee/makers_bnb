feature 'Bookings' do
  scenario 'If no bookings will have empty message' do
    sign_up_owner
    click_button 'My Bookings'
    expect(page).to have_content('You have no bookings')
    expect(page).to have_selector(:link_or_button, 'View Pads')
  end

  scenario 'If we make a booking it shows up in My Bookings' do
    list_pad
    sign_up_owner
    click_button 'More Info'
    click_button 'Confirm Request'
    click_button 'My Bookings'
    expect(page).to have_content('House by the Sea')
  end
end
