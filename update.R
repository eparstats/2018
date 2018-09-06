file.copy("../epa_r_workshop_2018/README.md",to = ".",overwrite = TRUE)
cat("<style>
   tbody tr:nth-child(odd){
    background-color: #F7FBFF;
  }
</style>", "README.md")

rmarkdown::render("README.md",output_file = "index.html")
system("git add -A")
system("git commit -m 'update'")
system("git push origin master")
