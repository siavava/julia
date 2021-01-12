using Images

url = "https://students.dartmouth.edu/king-scholars/sites/students_king_scholars.prod/files/styles/wysiwyg_width_only/public/students_king_scholars/wysiwyg/bio_picture.jpg?itok=-2tSBP6b"

download(url, "mk.jpg")
new_image = load("mk.jpg")

# new_image
