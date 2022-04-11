git add .
git commit -m "Fix"
git push
tanzu accelerator update tmf-product-catalog-management-api-java --git-branch tmp
tanzu accelerator update tmf-product-catalog-management-api-java --git-branch main
tanzu accelerator get tmf-product-catalog-management-api-java | grep "message: Fetched revision"
git log | sed -n '1p'