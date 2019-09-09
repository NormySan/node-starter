DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` integer NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `biography` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (1,'J.K. Rowling','Joanne Rowling, better known by her pen name J. K. Rowling, is a British novelist, screenwriter, producer, and philanthropist. She is best known for writing the Harry Potter fantasy series, which has won multiple awards and sold more than 500 million copies, becoming the best-selling book series in history. The Harry Potter books have also been the basis for the popular film series of the same name, over which Rowling had overall approval on the scripts and was a producer on the final films. She has also written under the pen name Robert Galbraith.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (2,'Michael Crichton','John Michael Crichton was an American author, screenwriter, and film director and producer best known for his work in the science fiction, thriller, and medical fiction genres. His books have sold over 200 million copies worldwide, and over a dozen have been adapted into films.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (3,'Brandon Sanderson','Brandon Sanderson is an American fantasy and science fiction writer. He is best known for the Cosmere universe, in which most of his fantasy novels (most notably the Mistborn series and The Stormlight Archive) are set. He is also known for finishing Robert Jordan\'s epic fantasy series The Wheel of Time. Sanderson was raised in Lincoln, Nebraska before attending Brigham Young University, where he received degrees in English literature and creative writing.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (4,'J.R.R. Tolkien','J.R.R. Tolkien was born on 3rd January 1892. After serving in the First World War, he became best known for The Hobbit and The Lord of the Rings, selling 150 million copies in more than 40 languages worldwide. Awarded the CBE and an honorary Doctorate of Letters from Oxford University, he died in 1973 at the age of 81.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (5,'Suzanne Collins','Suzanne Collins is an American television writer and author. She is known as the author of The New York Times best-selling series The Underland Chronicles and The Hunger Games trilogy.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (6,'Harper Lee','Nelle Harper Lee was an American novelist widely known for To Kill a Mockingbird, published in 1960. Immediately successful, it won the 1961 Pulitzer Prize and has become a classic of modern American literature. Though Lee had only published this single book, in 2007 she was awarded the Presidential Medal of Freedom for her contribution to literature. Additionally, Lee received numerous honorary degrees, though she declined to speak on those occasions. She was also known for assisting her close friend Truman Capote in his research for the book In Cold Blood (1966). Capote was the basis for the character Dill in To Kill a Mockingbird.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (7,'Arthur Golden','Golden was born in Chattanooga, Tennessee, the son of Ruth (née Sulzberger) and Ben Hale Golden. His mother was Jewish and his father a gentile. Through his mother he is a member of the Ochs-Sulzberger family. His mother was a daughter of long-time Times publisher Arthur Hays Sulzberger and granddaughter of Times owner and publisher Adolph Ochs. His parents divorced when he was eight years old. His father died five years after. He was raised in Lookout Mountain, Georgia and attended Lookout Mountain Elementary School in Lookout Mountain, Tennessee. He spent his middle and high school years at the Baylor School (then a boys-only school for day and boarding students) in Chattanooga, graduating in 1974. He attended Harvard University and received a degree in art history, specializing in Japanese art. In 1980, he earned an M.A. in Japanese history at Columbia University, and also learned Mandarin Chinese. After a summer at Peking University in Beijing, China, he worked in Tokyo. When he returned to the United States, he earned an M.A. in English at Boston University. He currently lives in Brookline, Massachusetts.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (9,'Oscar Wilde','Oscar Fingal O\'Flahertie Wills Wilde was an Irish poet and playwright. After writing in different forms throughout the 1880s, he became one of London\'s most popular playwrights in the early 1890s. He is best remembered for his epigrams and plays, his novel The Picture of Dorian Gray, and the circumstances of his criminal conviction for "gross indecency", imprisonment, and early death at age 46.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (11,'Mark Twain','Samuel Langhorne Clemens, known by his pen name Mark Twain, was an American writer, humorist, entrepreneur, publisher, and lecturer. He was lauded as the "greatest humorist this country has produced", and William Faulkner called him "the father of American literature". His novels include The Adventures of Tom Sawyer (1876) and its sequel, the Adventures of Huckleberry Finn (1884), the latter often called "The Great American Novel".');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (12,'Sona Charaipotra','Sona Charaipotra is an American entertainment and lifestyle journalist. She is the and author of young adult fiction. She is best known for her YA lit column on Parade.com and her YA series Tiny Pretty Things.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (13,'Dhonielle Clayton','Dhonielle Clayton is the co-author of the Tiny Pretty Things series. She grew up in the Washington, DC suburbs on the Maryland side and spent most of her time under her grandmother’s table with a stack of books. A former teacher and middle school librarian, Dhonielle is co-founder of CAKE Literary—a creative development company whipping up decidedly diverse books for a wide array of readers—and COO of the non-profit, We Need Diverse Books. She\'s got a serious travel bug and loves spending time outside of the USA, but makes her home in New York City, where she can most likely be found hunting for the best slice of pizza.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (14,'Jay Kristoff','Jay Kristoff is the #1 international, New York Times and USA Today bestselling author of THE NEVERNIGHT CHRONICLE, THE ILLUMINAE FILES and THE LOTUS WAR. He is the winner of six Aurealis Awards, an ABIA, has over half a million books in print and is published in over thirty five countries, most of which he has never visited. He is as surprised about all of this as you are. He is 6’7 and has approximately 12,000 days to live.');
INSERT INTO `authors` (`id`,`name`,`biography`) VALUES (15,'Amie Kaufman','Amie Kaufman is a New York Times and internationally bestselling author of young adult fiction. Her multi-award winning work is slated for publication in over 30 countries, and is in development for film and TV. Raised in Australia and occasionally Ireland, Amie has degrees in history, literature, law and conflict resolution. She lives in Melbourne with her husband, their rescue dog, and an extremely large personal library.');
DROP TABLE IF EXISTS `authors_books`;
CREATE TABLE `authors_books` (
  `id` integer NOT NULL AUTO_INCREMENT,
  `author_id` integer NOT NULL,
  `book_id` integer NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (author_id) REFERENCES authors (id),FOREIGN KEY (book_id) REFERENCES books (id)
);

INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (1,1,1);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (2,2,2);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (3,1,3);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (4,4,9);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (5,4,10);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (6,5,11);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (7,6,12);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (8,9,14);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (9,12,16);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (10,13,16);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (11,14,18);
INSERT INTO `authors_books` (`id`,`author_id`,`book_id`) VALUES (12,15,18);
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` integer NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `isbn` char(13) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (1,'Harry Potter and the Chamber of Secrets','9781408855669','The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he\'s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike

And strike it does. For in Harry\'s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockhart, a spirit named Moaning Myrtle who haunts the girls\' bathroom, and the unwanted attentions of Ron Weasley\'s younger sister, Ginny.

But each of these seem minor annoyances when the real trouble begins, and someone -- or something -- starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects . . . Harry Potter himself?');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (2,'Jurassic Park','9780345538987','An astonishing technique for recovering and cloning dinosaur DNA has been discovered. Now humankind’s most thrilling fantasies have come true. Creatures extinct for eons roam Jurassic Park with their awesome presence and profound mystery, and all the world can visit them—for a price.

Until something goes wrong. . . .

In Jurassic Park, Michael Crichton taps all his mesmerizing talent and scientific brilliance to create his most electrifying technothriller.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (3,'Fantastic Beasts and Where to Find Them','9781408708989','An approved textbook at Hogwarts School of Witchcraft and Wizardry since publication, Newt Scamander\'s masterpiece has entertained wizarding families through the generations. Fantastic Beasts and Where to Find Them is an indispensable introduction to the magical beasts of the Wizarding World. Scamander\'s years of travel and research have created a tome of unparalleled importance. Some of the beasts will be familiar to readers of the Harry Potter books - the Hippogriff, the Basilisk, the Hungarian Horntail ... Others will surprise even the most ardent amateur Magizoologist. This is an essential companion to the Harry Potter stories, and includes a new foreword from J.K. Rowling (writing as Newt Scamander) and six new beasts!');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (8,'Skyward','9781473217850','Defeated, crushed, and driven almost to extinction, the remnants of the human race are trapped on a planet that is constantly attacked by mysterious alien starfighters. Spensa, a teenage girl living among them, longs to be a pilot. When she discovers the wreckage of an ancient ship, she realizes this dream might be possible—assuming she can repair the ship, navigate flight school, and (perhaps most importantly) persuade the strange machine to help her. Because this ship, uniquely, appears to have a soul.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (9,'The Lord of the Rings','9780007525546','One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them

In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.

From Sauron\'s fastness in the Dark Tower of Mordor, his power spread far and wide. Sauron gathered all the Great Rings to him, but always he searched for the One Ring that would complete his dominion.

When Bilbo reached his eleventy-first birthday he disappeared, bequeathing to his young cousin Frodo the Ruling Ring and a perilous quest: to journey across Middle-earth, deep into the shadow of the Dark Lord, and destroy the Ring by casting it into the Cracks of Doom.

The Lord of the Rings tells of the great quest undertaken by Frodo and the Fellowship of the Ring: Gandalf the Wizard; the hobbits Merry, Pippin, and Sam; Gimli the Dwarf; Legolas the Elf; Boromir of Gondor; and a tall, mysterious stranger called Strider.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (10,'The Hobbit','9780261102217','In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.

Written for J.R.R. Tolkien’s own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics (1998), and includes a note on the text by Douglas A. Anderson (2001). Unforgettable!');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (11,'The Hunger Games','9780439023481','Could you survive on your own, in the wild, with everyone out to make sure you don\'t live to see the morning?

In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV. Sixteen-year-old Katniss Everdeen, who lives alone with her mother and younger sister, regards it as a death sentence when she is forced to represent her district in the Games. But Katniss has been close to dead before - and survival, for her, is second nature. Without really meaning to, she becomes a contender. But if she is to win, she will have to start making choices that weigh survival against humanity and life against love.

New York Times bestselling author Suzanne Collins delivers equal parts suspense and philosophy, adventure and romance, in this searing novel set in a future with unsettling parallels to our present.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (12,'To Kill a Mockingbird','9780446310789','The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.

Compassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (13,'Memoirs of a Geisha','9780739326220','A literary sensation and runaway bestseller, this brilliant debut novel presents with seamless authenticity and exquisite lyricism the true confessions of one of Japan\'s most celebrated geisha.

In Memoirs of a Geisha, we enter a world where appearances are paramount; where a girl\'s virginity is auctioned to the highest bidder; where women are trained to beguile the most powerful men; and where love is scorned as illusion. It is a unique and triumphant work of fiction - at once romantic, erotic, suspenseful - and completely unforgettable.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (14,'The Picture of Dorian Gray','9781847493729','Written in his distinctively dazzling manner, Oscar Wilde’s story of a fashionable young man who sells his soul for eternal youth and beauty is the author’s most popular work. The tale of Dorian Gray’s moral disintegration caused a scandal when it ﬁrst appeared in 1890, but though Wilde was attacked for the novel’s corrupting inﬂuence, he responded that there is, in fact, “a terrible moral in Dorian Gray.” Just a few years later, the book and the aesthetic/moral dilemma it presented became issues in the trials occasioned by Wilde’s homosexual liaisons, which resulted in his imprisonment. Of Dorian Gray’s relationship to autobiography, Wilde noted in a letter, “Basil Hallward is what I think I am: Lord Henry what the world thinks me: Dorian what I would like to be—in other ages, perhaps.”');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (15,'The Adventures of Huckleberry Finn','9780142437179','A nineteenth-century boy from a Mississippi River town recounts his adventures as he travels down the river with a runaway slave, encountering a family involved in a feud, two scoundrels pretending to be royalty, and Tom Sawyer\'s aunt who mistakes him for Tom.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (16,'Tiny Pretty Things','9780062342409','Black Swan meets Pretty Little Liars in this soapy, drama-packed novel featuring diverse characters who will do anything to be the prima at their elite ballet school.

Gigi, Bette, and June, three top students at an exclusive Manhattan ballet school, have seen their fair share of drama. Free-spirited new girl Gigi just wants to dance—but the very act might kill her. Privileged New Yorker Bette\'s desire to escape the shadow of her ballet-star sister brings out a dangerous edge in her. And perfectionist June needs to land a lead role this year or her controlling mother will put an end to her dancing dreams forever.

When every dancer is both friend and foe, the girls will sacrifice, manipulate, and backstab to be the best of the best.');
INSERT INTO `books` (`id`,`title`,`isbn`,`description`) VALUES (18,'Aurora Rising','9781524720964','From the internationally bestselling authors of THE ILLUMINAE FILES comes an epic new science fiction adventure.

The year is 2380, and the graduating cadets of Aurora Academy are being assigned their first missions. Star pupil Tyler Jones is ready to recruit the squad of his dreams, but his own boneheaded heroism sees him stuck with the dregs nobody else in the Academy would touch…

A cocky diplomat with a black belt in sarcasm
A sociopath scientist with a fondness for shooting her bunkmates
A smart-ass techwiz with the galaxy’s biggest chip on his shoulder
An alien warrior with anger management issues
A tomboy pilot who’s totally not into him, in case you were wondering

And Ty’s squad isn’t even his biggest problem—that’d be Aurora Jie-Lin O’Malley, the girl he’s just rescued from interdimensional space. Trapped in cryo-sleep for two centuries, Auri is a girl out of time and out of her depth. But she could be the catalyst that starts a war millions of years in the making, and Tyler’s squad of losers, discipline-cases and misfits might just be the last hope for the entire galaxy.

They\'re not the heroes we deserve. They\'re just the ones we could find. Nobody panic.');
DROP TABLE IF EXISTS `books_genres`;
CREATE TABLE `books_genres` (
  `id` integer NOT NULL AUTO_INCREMENT,
  `book_id` integer NOT NULL,
  `genre_id` integer NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (book_id) REFERENCES books (id),FOREIGN KEY (genre_id) REFERENCES genres (id)
);

INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (1,18,1);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (2,18,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (3,18,3);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (4,16,1);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (5,16,5);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (6,16,6);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (7,16,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (8,15,7);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (9,15,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (10,14,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (11,14,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (12,14,8);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (13,13,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (14,13,9);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (15,12,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (16,12,7);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (17,11,1);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (18,11,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (19,10,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (20,10,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (21,10,7);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (22,9,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (23,9,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (24,9,7);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (25,8,1);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (26,8,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (27,8,3);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (28,3,1);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (29,3,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (30,3,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (31,2,3);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (32,2,4);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (33,2,10);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (34,1,1);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (35,1,2);
INSERT INTO `books_genres` (`id`,`book_id`,`genre_id`) VALUES (36,1,4);
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `id` integer NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `genres` (`id`,`name`) VALUES (1,'Young Adult');
INSERT INTO `genres` (`id`,`name`) VALUES (2,'Fantasy');
INSERT INTO `genres` (`id`,`name`) VALUES (3,'Science Fiction');
INSERT INTO `genres` (`id`,`name`) VALUES (4,'Fiction');
INSERT INTO `genres` (`id`,`name`) VALUES (5,'Contemporary');
INSERT INTO `genres` (`id`,`name`) VALUES (6,'Mystery');
INSERT INTO `genres` (`id`,`name`) VALUES (7,'Classics');
INSERT INTO `genres` (`id`,`name`) VALUES (8,'Horror');
INSERT INTO `genres` (`id`,`name`) VALUES (9,'Romance');
INSERT INTO `genres` (`id`,`name`) VALUES (10,'Thriller');