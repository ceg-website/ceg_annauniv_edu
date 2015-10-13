class Staffnews < ActiveRecord::Base
		has_paper_trail
		mount_uploader :pdf, PdfUploader # Tells rails to use this uploader for this model.
end
