
# Flutter Website Scraping

Website scraping involves extracting data from websites and is subject to legal and ethical considerations. Ensure that you have the right to scrape data from the target website, and adhere to the terms of service.


## Packages

[Chaleno](https://pub.dev/packages/chaleno)



## Instruction

Foundation of scraping 

```bash
final parser = await Chaleno().load('https://example.com');
final title = parser?.getElementById('title').text;
final contents = parser.querySelector('.content-card').text;
final image = parser.getElementsByTagName('img').src;
```

| Methods                | Mean                                             |
|------------------------|--------------------------------------------------|
| title                  | Return the page title                            |
| getElementById        | Return a single element searching for ID on the page |
| getElementsByClassName | Return a list of elements according class passed as parameter |
| getElementsByTagName   | Return a list of elements according to the tag passed as a parameter |
| querySelector          | Return a single element passing a list of selectors |
| querySelectorAll       | Return a list of elements passing a list of selectors |
| text                   | Return text attribute from a tag returned         |
| src                    | Return src attribute from a tag returned          |
| href                   | Return href attribute from a tag returned         |

## Screenshots

![App Screenshot](screenshoot/screenshoot.jpg)


## 🚀  Follow
[![portfolio](https://img.shields.io/badge/bio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://arrahmanbd.github.io/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/arrahmanbd)
[![linkedin](https://img.shields.io/badge/Github-22272e?style=for-the-badge&logo=github&logoColor=white)](https://www.github.com/arrahmanbd)


## Badges


[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

