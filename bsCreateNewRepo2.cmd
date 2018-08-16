:: https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
@Echo OFF&Cls
echo "# DemoUnitTestProject3" >> README.md
git init
:: Under Code Add File
:: git add README.md

:: Under Code Add Projects
git add .
:: git commit -m "first commit"
:: git commit -m "second commit"
:: git commit -m "third commit"
git commit -m "forth commit"

git remote add origin https://github.com/BenYang77/DemoUnitTestProject1.git
:: git remote add origin https://gitforbinrueiyang.visualstudio.com/DemoUnitTestProject/DemoUnitTestProject%20Team/_git/DemoUnitTestProject
git remote -v
git push -u origin master