# PHP Vulners

We are using Security Checker by SensioLabs as an open-source product. It provides a great deal for 
identifying PHP Vulners in your code.

If for some reasons you don't have PHP and Symfony installed, run the script:

```
bash install_php.sh
```

In order to check, you run (in the directory where your composer.lock file is):

```
symfony security:check
```