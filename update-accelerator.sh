git add .
git commit -m "Fix"
git push
tanzu accelerator update tmf-product-catalog-management-api-nodejs --git-branch tmp
tanzu accelerator update tmf-product-catalog-management-api-nodejs --git-branch main
tanzu accelerator get tmf-product-catalog-management-api-nodejs | grep "message: Fetched revision"
git log | sed -n '1p'