feature 'list new pad' do

  scenario 'list my pad' do
    create_listing
    expect(current_path).to eq '/pads'
    expect(page).to have_content 'House by the Sea'
  end
end
