# SuperHeroes

## Code Challenge

API backend project for tracking Heroes and their Powers.

## Table of content

- [Technologies Used](#technologies-used)
- [Installation](#installation--set-up)
- [Deliverables](#deliverables)
- [Contributions](#contributions)
- [License and Copyright](#license-and-copyright)
- [Author Info](#author-info)

## Technologies Used

- Ruby Version - ruby 2.7.4
- Ruby on Rails
- AMS - Active Model Serializer
- SQLite3

## Installation & Set up

Clone the repository

```
https://github.com/Felix-Barosio/Superheroes
```

Install Dependecies

```
bundle install
```

Migration and Seeding

```
rails db:migrate db:seed
```

Run Server

```
rails s
```

## Project Guidelines

#### Relationships

- A `Hero` has many `Powers` through `HeroPower`.
- A `Power` has many `Heros` through `HeroPower`.
- A `HeroPower` belongs to a `Hero` and belongs to a `Power`.

## Deliverables

GET /heroes

```
http://localhost:3000/heroes
```

```
[
    {
        "id": 1,
        "name": "Bruce Bunner",
        "super_name": "The Hulk"
    },
    {
        "id": 2,
        "name": "Jennifer Walters",
        "super_name": "She-Hulk"
    },
    {
        "id": 3,
        "name": "Thor Odinson",
        "super_name": "Thor-God of Thunder"
    },
    {
        "id": 4,
        "name": "Carol Danvers",
        "super_name": "Captain Marvel"
    },
    {
        "id": 5,
        "name": "Steve Rodgers",
        "super_name": "Captain America"
    },
    {
        "id": 6,
        "name": "Dr. Stephen Strange",
        "super_name": "Doctor Strange"
    },
    {
        "id": 7,
        "name": "Natasha Romanoff",
        "super_name": "Black Widow"
    }
]
```

GET /heroes/:id

```
http://localhost:3000/heroes/3
```

```
{
    "id": 3,
    "name": "Thor Odinson",
    "super_name": "Thor-God of Thunder",
    "powers": [
        {
        "id": 2,
        "name": "Manipulate Lightning",
        "description": "The ability to create and manipulate lightning."
        },
        {
        "id": 7,
        "name": "Super Reflex",
        "description": "The ability to react to situations with great speed."
        },
        {
        "id": 6,
        "name": "Super Smart",
        "description": "The ability to use your own intelligence to create gadgets that can be used to help in combat."
        },
        {
        "id": 5,
        "name": "Fighting",
        "description": "The ability to do combat without having extra-ability."
        }
    ]
}
```

GET /powers

```
http://localhost:3000/powers
```

```
[
    {
        "id": 1,
        "name": "Super Strong",
        "description": "The ability to have ability to lift, throw and stuff. Caused by gamma radiation overload."
    },
    {
        "id": 2,
        "name": "Manipulate Lightning",
        "description": "The ability to create and manipulate lightning."
    },
    {
        "id": 3,
        "name": "Flight",
        "description": "The ability to move through air by generating anti-gravitons thus negate the pull of gravity and fly, usually at incredibly fast speeds."
    },
    {
        "id": 4,
        "name": "Marksman",
        "description": "The ability to shoot arrows at incredible speeds to hit you target."
    },
    {
        "id": 5,
        "name": "Fighting",
        "description": "The ability to do combat without having extra-ability."
    },
    {
        "id": 6,
        "name": "Super Smart",
        "description": "The ability to use your own intelligence to create gadgets that can be used to help in combat."
    },
    {
        "id": 7,
        "name": "Super Reflex",
        "description": "The ability to react to situations with great speed."
    }
]
```

GET /powers/:id

```
{
    "id": 1,
    "name": "Super Strong",
    "description": "The ability to have ability to lift, throw and stuff. Caused by gamma radiation overload."
}
```

PATCH /powers/:id

- It accepts a JSON body with the following format: { "description": "Super Strength" }

POST /hero_powers

- It accepts a JSON body with the following format: { "strength": "Strong", "hero_id": 1, "power_id": 1 }
- Strength can be Strong, Weak, or Average

```
{
    "strength": "Strong",
    "hero_id": 1,
    "power_id": 1
}
```

## Bonus Deliverables

## Heroes

POST /heroes

- Creates a new Hero.

PATCH /heroes/:id

- Updates the heroes details.

DELETE /heroes/:id

- Deletes heroes from the Database.

## Powers

POST /powers

- Creates a new Power for heroes.

DELETE /powers/:id

- Deletes the PowerS from the Database.

## HeroPower

PATCH /hero_powers/:id

- Updates the HeroPower

DELETE /hero_powers/:id

- Deletes the HeroPower from the Database.

## Contributions

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## License and Copyright.

[MIT license](https://opensource.org/licenses/MIT)

Copyright (c) [2022] [Felix Barosio]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Author Info

- [Felix Barosio](https://github.com/Felix-Barosio)
