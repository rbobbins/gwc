def login_as_admin
	visit new_user_session_path
	fill_in "Email", with: "rachelheidi@gmail.com"
	fill_in "Password", with: "password1"
	click_button "Sign in"
end

def login_as_student
	visit new_user_session_path
	fill_in "Email", with: "student@example.com"
	fill_in "Password", with: "password1"
	click_button "Sign in"
end

def login_as(user)
	visit new_user_session_path
	fill_in "Email", with: user.email
	fill_in "Password", with: "password"
	click_button "Sign in"
	visit "/"
end