from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager


def get_browser_with_path(browser_name):
    if browser_name.lower() == 'chrome':
        driver = ChromeDriverManager.install()
    elif browser_name.lower() == 'firefox' :
        driver = GeckoDriverManager.install()
    print("Driver Path --> "+ driver)
    return  driver