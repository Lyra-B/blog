feature 'Guest visits the homepage' do
  scenario "The guest sees the latest created post and a list of older posts" do
    posts = FactoryGirl.create_list(:post, 10)
    post = posts.order_by(:created_at).first
    visit root_path
    expect(page).to have_content(post.title)
    expect(page).to have_content(post.body)
    expect(page).to have_no_content(posts.last.body)
    expect(page).to have_content(posts.last.title)   
  end
end
