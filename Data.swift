//
//  Data.swift
//  Flash Card
//
//  Created by Student on 04/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import Foundation

var dataset : [String:[String:[String:String]]] =  [
    "English": [
        "Grammar": [
            "What is a noun?": "A noun is a word that represents a person, place, thing, or idea.",
            "Explain adjectives.": "Adjectives are words that describe or modify nouns.",
            "How to use verbs?": "Verbs are action words that express an action or state of being.",
            "Define adverbs.": "Adverbs modify verbs, adjectives, or other adverbs to provide more information.",
            "What is a sentence structure?": "A sentence structure defines the arrangement of words in a sentence."
        ],
        "Literature": [
            "Who wrote 'Romeo and Juliet'?": "William Shakespeare",
            "What is the theme of 'To Kill a Mockingbird'?": "Injustice and morality",
            "Explain 'Hamlet.'": "A tragedy play by Shakespeare about the Prince of Denmark seeking revenge.",
            "What is the main character in 'Moby-Dick'?": "Captain Ahab",
            "What is the setting of 'Pride and Prejudice'?": "Early 19th-century England."
        ],
        "Writing": [
            "What is a thesis statement?": "A one-sentence summary of the main point of an essay or paper.",
            "How to structure a paragraph?": "Topic sentence, supporting details, and a concluding sentence.",
            "Explain persuasive writing.": "Writing that aims to convince the reader of a particular viewpoint.",
            "What is an outline?": "A framework that helps organize and structure the content of a piece of writing.",
            "Define editing.": "Revising and correcting a piece of writing for clarity, coherence, and correctness."
        ],
        "Vocabulary": [
            "Define 'synonym.'": "A word that has a similar meaning to another word.",
            "What is an 'antonym'?": "A word that has the opposite meaning to another word.",
            "Explain 'homonym.'": "Words that sound the same but have different meanings.",
            "What is a 'connotation'?": "An implied or associated meaning of a word beyond its literal definition.",
            "Define 'idiom.'": "An expression whose meaning is not predictable from the usual meanings of its words."
        ]
    ],
    "Science": [
        "Biology": [
            "What is photosynthesis?": "The process by which green plants and some other organisms use sunlight to synthesize foods with the help of chlorophyll and other pigments.",
            "Explain the cell theory.": "The cell is the basic unit of life, and all living things are composed of one or more cells.",
            "What are genes?": "Segments of DNA that carry genetic information and determine characteristics in living organisms.",
            "Define 'ecosystem.'": "A community of living organisms in conjunction with non-living components of their environment.",
            "What is homeostasis?": "The body's ability to maintain a stable internal environment."
        ],
        "Physics": [
            "What is Newton's First Law?": "An object at rest tends to stay at rest, and an object in motion tends to stay in motion with the same speed and in the same direction unless acted upon by an unbalanced force.",
            "Explain kinetic energy.": "The energy an object possesses due to its motion.",
            "What is electromagnetism?": "The force that combines electricity and magnetism.",
            "Define 'quantum mechanics.'": "The branch of physics that deals with atomic and subatomic systems.",
            "What is the 'theory of relativity'?": "Einstein's theory that describes the effects of gravity on the fabric of space and time."
        ],
        "Chemistry": [
            "Define a chemical element.": "A substance that cannot be divided into simpler substances by ordinary chemical processes.",
            "What is a chemical reaction?": "A process that leads to the transformation of one set of chemical substances to another.",
            "Explain 'periodic table.'": "A tabular arrangement of chemical elements, organized by their atomic number, electron configuration, and recurring chemical properties.",
            "What are organic compounds?": "Compounds based on the element carbon, typically associated with living organisms.",
            "Define 'stoichiometry.'": "The calculation of the quantities of reactants and products in chemical reactions."
        ],
        "Astronomy": [
            "What is a galaxy?": "A vast system of stars, gas, dust, and dark matter bound together by gravity.",
            "Explain 'black hole.'": "A region in space with a gravitational field so strong that nothing can escape from it, not even light.",
            "What are constellations?": "Patterns of stars as seen from the Earth and named after various objects, animals, and mythological figures.",
            "Define 'supernova.'": "A stellar explosion that briefly outshines an entire galaxy.",
            "What is the 'big bang theory'?": "The prevailing cosmological model for the observable universe's expansion."
        ]
    ],
    "Math": [
        "Algebra": [
            "What is an equation?": "A mathematical statement that asserts the equality of two expressions.",
            "Explain inequalities.": "Mathematical expressions that represent the relationship between two quantities that are not equal.",
            "How to solve linear equations?": "Isolate the variable by performing inverse operations on both sides.",
            "Define 'quadratic formula.'": "A formula used to find the solutions of a quadratic equation.",
            "What is the 'FOIL' method?": "A method for multiplying two binomials, first, outer, inner, last."
        ],
        "Geometry": [
            "What are the properties of a triangle?": "Triangles have three sides and three angles. Common properties include Pythagoras' theorem and the sum of angles equaling 180 degrees.",
            "Explain 'Pythagorean theorem.'": "In a right-angled triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides.",
            "Define 'circle.'": "A closed curved line in which all points are an equal distance from the center.",
            "What are 'congruent triangles'?": "Triangles that have the same size and shape.",
            "What is 'geometry proof'?": "A step-by-step logical argument that establishes the truth of a statement."
        ],
        "Calculus": [
            "Define 'derivative.'": "The rate of change of a function with respect to a variable.",
            "What is 'integration'?": "The process of finding the integral of a function, often represented as the area under a curve.",
            "Explain 'limits.'": "A fundamental concept in calculus, indicating the value a function approaches as the input gets closer to a certain point.",
            "What is 'differentiation'?": "The process of finding the derivative of a function.",
            "What is a 'critical point'?": "A point on the graph of a function where the derivative is either zero or undefined."
        ],
        "Statistics": [
            "Define 'mean' (average).": "The sum of a set of numbers divided by the count of numbers in the set.",
            "What is 'standard deviation'?": "A measure of the amount of variation or dispersion of a set of values.",
            "Explain 'probability distribution.'": "A function that describes the likelihood of obtaining the possible values that a random variable can take.",
            "Define 'normal distribution.'": "A continuous probability distribution characterized by a symmetric bell-shaped curve.",
            "What is 'correlation'?": "A statistical measure of the degree to which two variables change together."
        ]
    ],
    "Computer": [
        "Programming": [
            "What is a 'variable'?": "A named storage location in a computer's memory.",
            "Explain 'if statement.'": "A control structure that allows for conditional execution of code.",
            "What are 'loops'?": "Statements that allow you to repeatedly execute a block of code.",
            "Define 'function.'": "A reusable block of code that performs a specific task.",
            "What is 'object-oriented programming'?": "A programming paradigm based on objects that can contain data and code."
        ],
        "Data Structures": [
            "What is an 'array'?": "A data structure that stores a collection of elements, each identified by an index or a key.",
            "Explain 'linked list.'": "A linear data structure in which elements are stored in nodes, and each node points to the next node in the sequence.",
            "Define 'stack' and 'queue.'": "Data structures that represent collections of elements with specific rules for adding and removing elements.",
            "What is a 'tree structure'?": "A hierarchical data structure with a root element that has child elements.",
            "Explain 'hash table.'": "A data structure used to store key-value pairs, enabling efficient data retrieval."
        ],
        "Databases": [
            "What is a 'database management system (DBMS)'?": "Software for creating, managing, and maintaining databases.",
            "Explain 'SQL (Structured Query Language).'": "A domain-specific language used for managing and querying relational databases.",
            "What are 'indexes' in databases?": "Structures that improve the speed of data retrieval operations on a database table.",
            "Define 'data normalization.'": "A process of organizing the data in a database to reduce data redundancy.",
            "What is 'ACID' in database transactions?": "A set of properties that guarantee reliable processing of database transactions."
        ],
        "Web Development": [
            "What is 'HTML'?": "Hypertext Markup Language used to create and structure content on the web.",
            "Explain 'CSS.'": "Cascading Style Sheets used to define the presentation of web documents written in HTML.",
            "What is 'JavaScript'?": "A high-level, dynamic, and interpreted programming language used for web development.",
            "Define 'HTTP.'": "Hypertext Transfer Protocol used for transmitting hypermedia documents on the web.",
            "What is 'responsive design'?": "Designing websites that provide an optimal viewing experience across various devices and screen sizes."
        ]
    ]
]
