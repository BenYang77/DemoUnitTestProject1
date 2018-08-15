echo "# DemoUnitTestProject1" >> README.md
git init
:: git add README.md
git add .
:: git commit -m "first commit"
git commit -m "second commit"
git remote add origin https://github.com/BenYang77/DemoUnitTestProject1.git
git remote -v
git push -u origin master