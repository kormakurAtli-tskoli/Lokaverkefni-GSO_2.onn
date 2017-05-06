CREATE TABLE flokkur(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);
INSERT INTO
    flokkur(nafn)
VALUES
    ("Sóló"),
    ("Hljómsveit"),
    ("Dúó");

CREATE TABLE utgefandi(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);
INSERT INTO
    utgefandi(nafn)
VALUES
    ("Columbia Records"),
    ("Cleveland International Records"),
    ("EMI Records");
    
CREATE TABLE tegund(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);
INSERT INTO
    tegund(nafn)
VALUES
    ("Folk Rock"),
    ("Hard Rock"),
    ("Progressive Rock"),
    ("Rock"),
    ("Pop/Soul");
    
CREATE TABLE flytjandi(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    faedingardagur INT,
    lysing VARCHAR(555),
    danardagur INT,
    flokkur_flytjanda INT,
    FOREIGN KEY (flokkur_flytjanda) REFERENCES flokkur(ID)
);
INSERT INTO
    flytjandi(nafn,faedingardagur,lysing,danardagur,flokkur_flytjanda)
VALUES
    ("Simon & Garfunkel",1957,"Simon & Garfunkel er dúó sem samanstendur af Paul Simon og Art Garfunkel. Þeir voru eitt af bestu böndunum í kringum 1960. Vinsælustu lögin þeirra eru án efa Mrs. Robinson og Sound Of Silence",1970,3),
    ("Aerosmith",1970,"Aerosmith er amerísk rokkhljómsveit sem stundum er kölluð 'The Bad Boys from Boston'. Hljómsveitin samanstendur af Steven Tyler, Joe Perry, Brad Whitford, Tom Hamilton og Joey Kramer. Vinsælustu lögin þeirra hljóta að vera Dream On, sem var samplað af Eminem fyrir lagið Sing For The Moment, og I  Don't Wanna Miss A Thing.",NULL,2),
    ("George Michael",1963,"Georgios Kyriacos Panayiotou, betur þekktur sem George Michael, (fæddur í London) var breskur tónlistarmaður. Hann reis til frægðar með tvíeykinu Wham! á 9. áratugnum og hélt svo áfram með sólóferil.",2016,1),
    ("Meat Loaf",1947,"Meat Loaf, Marvin Lee Aday, Michael Lee Aday eru þrjú nöfn sem þessi einstaki tónlistarmaður hefur. Hann hefur unnið margoft með Jim Steinman, sem skrifaði til dæmis Holding out for a Hero með Bonnie Tyler.",NULL,1),
    ("Queen",1970,"Queen var bresk rokkhljómsveit sem kom fram á sjónarsviðið 1970. Hún var stofnuð af Freddie Mercury söngvara sveitarinnar, Roger Taylor trommuleikara og Brian May gítarleikara í London sama ár. Félagarnir fengu ýmsa bassaleikara til liðs við sig áður en John Deacon var ráðinn bassaleikari sveitarinnar 1971. Hljómsveitin var með allra vinsælustu rokk-hljómsveitunum á áttunda og níunda áratugnum og frá henni hafa komið heimsþekkt lög á borð við „Bohemian Rhapsody“, „We Will Rock You“ og „Killer Queen“.",NULL,2);

CREATE TABLE diskur(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    utgafudagur INT,
    utgefandi INT,
    flytjandi INT,
    FOREIGN KEY (utgefandi) REFERENCES utgefandi(ID),
    FOREIGN KEY (flytjandi) REFERENCES flytjandi(ID)
);
INSERT INTO
    diskur(nafn,utgafudagur,utgefandi,flytjandi)
VALUES
    ("Sounds of Silence",19640301,1,1),
    ("Parsley, Sage, Rosemary and Thyme",19651201,1,1),
    ("News of the World",19771028,3,5),
    ("Aerosmith",19730105,1,2),
    ("Faith",19871030,1,3),
    ("Bat Out of Hell",19771021,2,4),
    ("Toys in the Attic",19750408,1,2),
    ("Music from Another Dimension!",20121106,1,2);

CREATE TABLE lag(
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    lengd_sek INT,
    texti TEXT,
    diskur INT,
    flytjandi INT,
    tegund INT,
    FOREIGN KEY (diskur) REFERENCES diskur(ID),
    FOREIGN KEY (flytjandi) REFERENCES flytjandi(ID),
    FOREIGN KEY (tegund) REFERENCES tegund(ID)
);
INSERT INTO
    lag(nafn,lengd_sek,texti,diskur,flytjandi,tegund)
VALUES
    ("Spread Your Wings",274,"Sammy was low
        Just watching the show
        Over and over again
        Knew it was time
        He'd made up his mind
        To leave his dead life behind
        His boss said to him
        Boy you'd better begin
        To get those crazy notions right out of your head
        Sammy who do you think that you are?
        You should've been sweeping up the Emerald Bar

        Spread your wings and fly away
        Fly away, far away
        Spread your little wings and fly away
        Fly away, far away
        Pull yourself together
        'Cos you know you should do better
        That's because you're a free man

        He spends his evenings alone in his hotel room
        Keeping his thoughts to himself, he'd be leaving soon
        Wishing he was miles and miles away
        Nothing in this world, nothing would make him stay

        Since he was small
        Had no luck at all
        Nothing came easy to him
        Now it was time
        He'd made up his mind
        This could be my last chance
        His boss said to him, Now listen boy!
        You're always dreaming
        You've got no real ambition, you won't get very far
        Sammy boy, don't you know who you are?
        Why can't you be happy at the Emerald Bar?
        So honey

        Spread your wings and fly away
        Fly away, far away
        Spread your little wings and fly away
        Fly away, far away
        Pull yourself together
        'Cos you know you should do better
        That's because you're a free man",3,5,4),
    ("We Are the Champions",179,"I've paid my dues
        Time after time.
        I've done my sentence
        But committed no crime.
        And bad mistakes ‒
        I've made a few.
        I've had my share of sand kicked in my face
        But I've come through.

        (And I need just go on and on, and on, and on)

        We are the champions, my friends,
        And we'll keep on fighting 'til the end.
        We are the champions.
        We are the champions.
        No time for losers
        'Cause we are the champions of the world.

        I've taken my bows
        And my curtain calls.
        You brought me fame and fortune, and everything that goes with it.
        I thank you all.
        But it's been no bed of roses,
        No pleasure cruise.
        I consider it a challenge before the whole human race,
        And I ain't gonna lose.

        (And I need just go on and on, and on, and on)

        We are the champions, my friends,
        And we'll keep on fighting 'til the end.
        We are the champions.
        We are the champions.
        No time for losers
        'Cause we are the champions of the world.

        We are the champions, my friends,
        And we'll keep on fighting 'til the end.
        We are the champions.
        We are the champions.
        No time for losers
        'Cause we are the champions.
        [Not in the original version:] Of the world",3,5,4),
    ("We Will Rock You",121,"Buddy you're a boy make a big noise
        Playin' in the street gonna be a big man some day
        You got mud on yo' face
        You big disgrace
        Kickin' your can all over the place
        Singin'

        We will we will rock you
        We will we will rock you

        Buddy you're a young man hard man
        Shoutin' in the street gonna take on the world some day
        You got blood on yo' face
        You big disgrace
        Wavin' your banner all over the place

        We will we will rock you
        (Sing it!)
        We will we will rock you

        Buddy you're an old man poor man
        Pleadin' with your eyes gonna make you some peace some day
        You got mud on your face
        Big disgrace
        Somebody better put you back into your place

        We will we will rock you
        (Sing it!)
        We will we will rock you

        (Everybody)

        We will we will rock you
        We will we will rock you

        (Alright)",3,5,4),
    ("Father Figure",336,"That's all I wanted:
        Something special, something sacred
        In your eyes.
        For just one moment
        To be bold and naked
        At your side.
        Sometimes I think that you never
        Understand me (understand me).
        Maybe this time is forever.
        Say it can be, whoa.
        That's all you wanted:
        Something special, someone sacred
        In your life.
        Just for one moment
        To be warm and naked
        At my side.
        Sometimes I think that you never
        Understand me (understand me).
        But something tells me together
        We'd be happy, oh, oh.
        (baby)
        I will be your father figure.
        (oh, baby)
        Put your tiny hand in mine.
        (I'd love to)
        I will be your preacher teacher.
        (be your daddy)
        Anything you have in mind.
        (it would make me)
        I will be your father figure.
        (very happy)
        I have had enough of crime.
        (please let me)
        I will be the one who loves you
        'Til the end of time (of time).
        That's all I wanted,
        But sometimes love can be mistaken
        For a crime.
        That's all I wanted:
        Just to see my baby's
        Blue eyes shine.
        This time I think that my lover
        Understands me (understands me).
        Please
        If we have faith in each other
        Then we can be
        Strong.
        (baby)
        I will be your father figure.
        Put your tiny hand in mine.
        (my baby)
        I will be your preacher teacher.
        Anything you have in mind.
        I will be your father figure.
        I have had enough of crime.
        I will be the one who loves you
        'Til the end of time.
        If you are the desert
        I'll be the sea.
        If you ever hunger 
        Hunger for me.
        Whatever you ask for
        That's what I'll be.
        So when you remember the ones who have lied,
        Who said that they cared,
        But then laughed as you cried,
        Beautiful darling,
        Don't think of me.
        Because all I ever wanted...
        It's in your eyes, baby, baby.
        And love can't lie.
        No.
        Greet me with the eyes of a child.
        My love is always tellin' me so.
        Heaven is a kiss and a smile.
        Just hold on, hold on.
        And I won't let you go, my baby.
        I will be your father figure.
        Put your tiny hand in mine.
        I will be your preacher teacher.
        Anything you have in mind, baby.
        I will be your father figure.
        And I have had enough of crime.
        I will be the one who loves you—
        So, I am gonna love you—
        'Til the end of time.
        I will be your father.
        (I will be your...)
        I will be your preacher.
        (...father)
        I will be your father.
        I'll be your daddy, whoa.
        I will be the one who loves you
        'Til the end of time.",5,3,5),
    ("Faith",136,"Well I guess it would be nice
        If I could touch your body
        I know not everybody
        Has got a body like you
        But I've got to think twice
        Before I give my heart away
        And I know all the games you play
        Because I play them too
        Oh but I
        Need some time off from that emotion
        Time to pick my heart up off the floor
        Oh when that love comes down
        Without devotion
        Well it takes a strong man baby
        But I'm showing you the door
        ‘Cause I gotta have faith
        I gotta have faith
        ‘Cause I gotta have faith, faith
        ‘Cause I gotta have faith, faith, faith
        Baby,
        I know you're asking me to stay
        Say please, please, please don't go away
        You say I'm giving you the blues
        Maybe
        You mean every word you say
        Can't help but think of yesterday
        And another who tied me down to loverboy rules
        Before this river
        Becomes an ocean
        Before you throw my heart back on the floor
        Oh oh baby I reconsider
        My foolish notion
        Well I need someone to hold me
        But I'll wait for something more
        Yes I've gotta have faith…
        Mmm, I gotta have faith
        ‘Cause I gotta have faith, faith, faith
        I gotta have faith-a-faith-a-faith
        Before this river
        Becomes an ocean
        Before you throw my heart back on the floor
        Oh oh baby I reconsider
        My foolish notion
        Well I need someone to hold me
        But I'll wait for something more
        Cause I gotta have faith
        Mmm I gotta have faith
        Because I got to have faith-a-faith-a-faith
        I gotta have faith-a-faith-a-faith",5,3,5),
    ("For Crying Out Loud",525,"I was lost till you were found
        But I never knew how far down
        I was falling
        Before I reached the bottom
        I was cold and you were fire
        And I never knew how the pyre
        Could be burning
        On the edge of the ice field
        And now the chilly Californian wind
        Is blowing down our bodies again
        And we're sinking deeper and deeper
        In the chilly Californian sand
        Oh I know you belong inside my aching heart
        And can't you see my faded Levis bursting apart
        And don't you here me crying
        'Oh Babe, don't go'
        And don't you hear me screaming
        'How was I to know'
        I'm in the middle of nowhere
        Near the end of the line
        But there's a border to somewhere waiting
        And there's a tankful of time
        Oh give me just another moment
        To see the light of the day
        And take me to another land
        Where I don't have to stay
        And I'm gonna need somebody
        To make me feel like you do
        And I will receive somebody
        With open arms, open eyes
        Open up the sky and let the planet
        That I love shine through
        For crying out loud
        You know I love you
        I was damned and you were saved
        And I never knew how enslaved
        I was kneeling
        In the chains of my master
        I could laugh but you could cry
        And I never knew just how high
        I was flying
        Ah with you right above me
        And now the chilly Californian wind
        Is blowing down our bodies again
        And we're sinking deeper and deeper
        In the chilly Californian sand
        Oh I know you belong inside my aching heart
        And can't you see my faded Levis bursting apart
        And don't you here me crying
        'Oh Babe, don't go'
        And don't you hear me screaming
        'How was I to know'
        I'm in the middle of nowhere
        Near the end of the line
        But there's a border to somewhere waiting
        And there's a tankful of time
        Oh give me just another moment
        To see the light of the day
        And take me to another land
        Where I don't have to stay
        And I'm gonna need somebody
        To make me feel like you do
        And I will receive somebody
        With open arms, open eyes
        Open up the sky and let the planet
        That I love shine through
        For crying out loud
        You know I love you
        For taking in the rain when I'm feeling so dry
        For giving me the answers when I'm asking you why
        My oh my, for that I thank you
        For taking in the sun when I'm feeling so cold
        For giving me a child when my body is old
        Don't you know for that I need you
        For coming to my room when you know I'm alone
        For finding me a highway and for driving me home
        For that I serve you
        For pulling me away when I'm starting to fall
        For revving me up when I'm starting to stall
        And all in all for that I want you
        For taking and for giving and for playing the game
        For praying for my future in the days that remain
        Oh Lord for that I hold you
        Ah but most of all
        For crying out loud
        For that I love you
        When you're crying out loud
        You know I love you",6,4,3),
    ("Paradise by the Dashboard Light",508,"[Boy:]
        I remember every little thing
        As if it happened only yesterday
        Parking by the lake
        And there was not another cat in sight
        And I never had a girl
        Looking any better than you did
        And all the kids at school
        They were wishing they were me that night
        And now our bodies are, oh, so close and tight
        It never felt so good, it never felt so right
        And we're glowing like the metal on the edge of a knife
        Glowing like the metal on the edge of a knife
        C'mon, hold on tight
        C'mon, hold on tight
        Though it's cold and lonely in the deep dark night
        I can see paradise by the dashboard light
        [Girl:]
        Ain't no doubt about it we were doubly blessed
        'Cause we were barely seventeen and we were barely dressed
        [Both:]
        Ain't no doubt about it
        Baby, got to go out and shout it
        Ain't no doubt about it
        We were doubly blessed
        [Boy:]
        'Cause we were barely seventeen
        And we were barely dressed
        Baby, don't you hear my heart
        You got it drowning out the radio
        I've been waiting so long
        For you to come along and have some fun
        And I gotta let you know
        No, you're never gonna regret it
        So open up your eyes,
        I got a big surprise
        It'll feel all right
        Well, I wanna make your motor run
        And now our bodies are, oh, so close and tight
        It never felt so good, it never felt so right
        And we're glowing like the metal on the edge of a knife
        Glowing like the metal on the edge of a knife
        C'mon, hold on tight
        C'mon, hold on tight
        [Both:]
        Though it's cold and lonely in the deep dark night
        I can see paradise by the dashboard light
        Though it's cold and lonely in the deep dark night
        Paradise by the dashboard light
        You got to do what you can
        And let Mother Nature do the rest
        Ain't no doubt about it
        We were doubly blessed
        'Cause we were barely seventeen
        And we were barely
        [3x]
        We're gonna go all the way tonight
        We're gonna go all the way
        And tonight's the night
        [Radio Broadcast:]
        OK, here we go, we got a real pressure cooker going here
        Two down, nobody on, no score, bottom of the ninth
        There's the wind-up, and there it is
        A line shot up the middle, look at him go
        This boy can really fly
        He's rounding first and really turning it on now
        He's not letting up at all, he's gonna try for second
        The ball is bobbled out in the center
        And here comes the throw and what a throw
        He's gonna slide in head first
        Here he comes, he's out
        No, wait, safe, safe at second base
        This kid really makes things happen out there
        Batter steps up to the plate
        Here's the pitch, he's going
        And what a jump he's got
        He's trying for third
        Here's the throw
        It's in the dirt, safe a third
        Holy cow, stolen base
        He's taking a pretty big lead out there
        Almost daring them to pick him off
        The pitcher glances over, winds-up and it's bunted
        Bunted down the third base line
        The suicide squeeze is on
        Here he comes, squeeze play, it's gonna be close
        Here's the throw, here's the play at the plate
        Holy cow, I think he's gonna make it
        [Girl:]
        Stop right there
        I gotta know right now
        Before we go any further
        Do you love me?
        Will you love me forever?
        Do you need me?
        Will you never leave me?
        Will you make me so happy
        For the rest of my life?
        Will you take me away
        And will you make me your wife?
        Do you love me?
        Will you love me forever?
        Do you need me?
        Will you never leave me?
        Will you make me so happy
        For the rest of my life?
        Will you take me away
        And will you make me your wife?
        I gotta know right now
        Before we go any further
        Do you love me?
        Will you love me forever?
        [Boy:]
        Let me sleep on it
        Baby, baby, let me sleep on it
        Let me sleep on it
        And I'll give you an answer in the morning
        Let me sleep on it
        Baby, baby, let me sleep on it
        Let me sleep on it
        And I'll give you an answer in the morning
        Let me sleep on it
        Baby, baby, let me sleep on it
        Let me sleep on it
        And I'll give you an answer in the morning
        [Girl:]
        I gotta know right now
        Do you love me?
        Will you love me forever?
        Do you need me?
        Will you never leave me?
        Will you make me so happy
        For the rest of my life?
        Will you take me away
        And will you make me your wife?
        I gotta know right now
        Before we go any further
        Do you love me?
        And will you love me forever?
        What's it gonna be, boy?
        Come on, I can wait all night.
        What's it gonna be, boy?
        Yes or no?
        What's it gonna be, boy?
        Yes or no?
        [Boy:]
        Let me sleep on it
        Baby, baby, let me sleep on it
        Let me sleep on it
        And I'll give you an answer in the morning
        Let me sleep on it
        [Girl:]
        I gotta know right now
        Do you love me
        Will you love me forever
        Do you need me
        Will you never leave me
        Will you make me so happy
        For the rest of my life
        Will you take me away
        And will you make me your wife
        I gotta know right now
        Before we go any further
        Do you love me
        Will you love me forever
        [Boy:]
        Let me sleep on it
        Baby, baby let me sleep on it
        Let me sleep on it
        And I'll give you an answer in the morning
        I gotta know right now
        Before we go any further
        Do you love me?
        And will you love me forever?
        [Boy:]
        Let me sleep on it
        [Girl:]
        Will you love me forever
        [Boy:]
        I couldn't take it any longer
        Lord I was crazed
        And when the feeling came upon me
        Like a tidal wave
        I started swearing to my god
        And on my mother's grave
        That I would love you to the end of time
        I swore I would love you to the end of time
        So now I'm praying for the end of time
        To hurry up and arrive
        'Cause if I gotta spend another minute with you
        I don't think that I can really survive
        I'll never break my promise or forget my vow
        But God only knows what I can do right now
        I'm praying for the end of time
        It's all I can do (ooh, ooh)
        I'm praying for the end of time
        So I can end my time with you
        [Boy:]
        It was long ago and it was far away,
        And it was so much better than it is today.
        [Girl:]
        It never felt so good, it never felt so right
        And we were glowing like the metal on the edge of a knife.",6,4,3),
    ("Two Out of Three Ain't Bad",323,"Baby we can talk all night
        But that ain't getting us nowhere
        I told you everything I possibly can
        There's nothing left inside of here
        And maybe you can cry all night
        But that'll never change the way that I feel
        The snow is really piling up outside
        I wish you wouldn't make me leave here
        I poured it on and I poured it out
        I tried to show you just how much I care
        I'm tired of words and I'm too hoarse to shout
        But you've been cold to me so long
        I'm crying icicles instead of tears
        And all I can do is keep on telling you
        I want you
        I need you
        But there ain't no way
        I'm ever gonna love you
        Now don't be sad
        'Cause two out of three ain't bad
        Now don't be sad
        'Cause two out of three ain't bad
        You'll never find your gold on a sandy beach
        You'll never drill for oil on a city street
        I know you're looking for a ruby
        In a mountain of rocks
        But there ain't no Coupe de Ville hiding
        At the bottom of a Cracker Jack box
        I can't lie
        I can't tell you that I'm something I'm not
        No matter how I try
        I'll never be able to give you something
        Something that I just haven't got
        There's only one girl that I will ever love
        And that was so many years ago
        And though I know I'll never get her out of my heart
        She never loved me back, ooh I know
        Well I remember how she left me on a stormy night
        Oh she kissed me and got out of our bed
        And though I pleaded and I begged her
        Not to walk out that door
        She packed her bags and turned right away
        And she kept on telling me
        She kept on telling me
        She kept on telling me
        I want you
        I need you
        But there ain't no way
        I'm ever gonna love you
        Now don't be sad
        'Cause two out of three ain't bad
        I want you
        I need you
        But there ain't no way
        I'm ever gonna love you
        Now don't be sad
        'Cause two out of three ain't bad
        Now don't be sad
        'Cause two out of three ain't bad
        Baby we can talk all night
        But that ain't getting us nowhere",6,4,3),
    ("You Took the Words Right Out of My Mouth",304,"It was a hot summer night
        and the beach was burning.
        There was fog crawling over the sand.
        When I listen to your heart
        I hear the whole world turning.
        I see the shooting stars falling
        through your trembling hands.
        You were licking your lips
        and your lipstick shining.
        I was dying just to ask for a taste.
        We were lying together in a silver lining
        by the the light of the moon.
        You know there's not another moment
        Not another moment
        Not another moment to waste.
        You hold me so close that my knees grow weak.
        But my soul is flying high above the ground.
        I'm trying to speak but no matter what I do
        I just can't seem to make any sound.
        And then you took the words right out of my mouth.
        Oh it must have been while you were kissing me.
        You took the words right out of my mouth.
        And I swear it's true,
        I was just about to say I love you.
        And then you took the words right out of my mouth.
        Oh it must have been while you were kissing me.
        You took the words right out of my mouth.
        And I swear it's true,
        I was just about to say I love you.
        Now my body is shaking like a wave on the water
        And I guess that I'm beginning to grin.
        Oh we're finally alone and we can do what we want to.
        The night is young
        And Ain't no-one gonna know where you
        No-one gonna know where you
        No-one's gonna know where you've been.
        You were licking your lips
        and your lipstick shining.
        I was dying just to ask for a taste.
        We were lying together in a silver lining
        by the the light of the moon.
        You know there's not another moment
        Not another moment
        Not another moment to waste.
        And then you took the words right out of my mouth.
        Oh it must have been while you were kissing me.
        You took the words right out of my mouth.
        And I swear it's true,
        I was just about to say I love you.
        And then you took the words right out of my mouth.
        Oh it must have been while you were kissing me.
        You took the words right out of my mouth.
        And I swear it's true,
        I was just about to say I love you.",6,4,3),
    ("Bat Out of Hell",588,"The sirens are screaming and the fires are howling
        Way down in the valley tonight.
        There's a man in the shadows with a gun in his eye
        And a blade shining, oh, so bright.
        There's evil in the air and there's thunder in sky,
        And a killer's on the bloodshot streets.
        Oh, and down in the tunnel where the deadly are rising,
        Oh, I swear I saw a young boy down in the gutter,
        He was starting to foam in the heat.
        Oh, baby, you're the only thing in this whole world,
        That's pure and good and right.
        And wherever you are and wherever you go,
        There's always gonna be some light.
        But I gotta get out,
        I gotta break it out now,
        Before the final crack of dawn.
        So we gotta make the most of our one night together.
        When it's over you know,
        We'll both be so alone.
        Like a bat out of hell
        I'll be gone when the morning comes.
        When the night is over
        Like a bat out of hell
        I'll be gone-gone-gone.
        Like a bat out of hell
        I'll be gone when the morning comes.
        But when the day is done, and the sun goes down,
        And the moonlight's shining through,
        Then like a sinner before the gates of heaven,
        I'll come crawling on back to you.
        I'm gonna hit the highway like a battering ram
        On a silver black phantom bike.
        When the metal is hot and the engine is hungry,
        And we're all about to see the light.
        Nothing ever grows in this rotting old hole.
        And everything is stunted and lost.
        And nothing really rocks
        And nothing really rolls
        And nothing's ever worth the cost.
        And I know that I'm damned if I never get out,
        And maybe I'm damned if I do,
        But with every other beat I've got left in my heart,
        You know I'd rather be damned with you.
        Well, if I gotta be damned you know I wanna be damned
        Dancing through the night with you.
        Well, if I gotta be damned you know I wanna be damned—
        Gotta be damned, you know I wanna be damned—
        Gotta be damned, you know I wanna be damned
        Dancing through the night—
        Dancing through the night—
        Dancing through the night with you.
        Oh, baby, you're the only thing in this whole world,
        That's pure and good and right.
        And wherever you are and wherever you go,
        There's always gonna be some light.
        But I gotta get out,
        I gotta break it out now,
        Before the final crack of dawn.
        So we gotta make the most of our one night together.
        When it's over you know
        We'll both be so alone.
        Like a bat out of hell
        I'll be gone when the morning comes.
        When the night is over
        Like a bat out of hell
        I'll be gone gone gone.
        Like a bat out of hell
        I'll be gone when the morning comes.
        But when the day is done and the sun goes down,
        And the moonlight's shining through,
        Then like a sinner before the gates of heaven,
        I'll come crawling on back to you.
        Then like a sinner before the gates of heaven,
        I'll come crawling on back to you.
        I can see myself tearing up the road
        Faster than any other boy has ever gone.
        And my skin is raw but my soul is ripe.
        No one's gonna stop me now,
        I'm gonna make my escape.
        But I can't stop thinking of you,
        And I never see the sudden curve until it's way too late.
        And I never see the sudden curve 'til it's way too late.
        Then I'm dying at the bottom of a pit in the blazing sun.
        Torn and twisted at the foot of a burning bike.
        And I think somebody somewhere must be tolling a bell.
        And the last thing I see is my heart
        Still beating,
        Breaking out of my body and flying away,
        Like a bat out of hell.
        Then I'm dying at the bottom of a pit in the blazing sun.
        Torn and twisted at the foot of a burning bike.
        And I think somebody somewhere must be tolling a bell.
        And the last thing I see is my heart
        Still beating, still beating,
        Breaking out of my body and flying away,
        Like a bat out of hell.
        Like a bat out of hell.
        Like a bat out of hell.
        Oh, like a bat out of hell!
        Like a bat out of hell!
        Like a bat out of hell!",6,4,3),
    ("The 59th Street Bridge Song ",103,"Slow down, you move too fast
        You got to make the morning last
        Just kicking down the cobblestones
        Looking for fun and feelin' groovy
        Ba da da da da da da, feelin' groovy
        Hello, lamppost, what'cha knowin'?
        I've come to watch your flowers growin'
        Ain't'cha got no rhymes for me?
        Doot-in doo-doo, feelin' groovy
        Ba da da da da da da, feelin' groovy
        I got no deeds to do
        No promises to keep
        I'm dappled and drowsy and ready to sleep
        Let the morning time drop all its petals on me
        Life, I love you
        All is groovy",2,1,1),
    ("The Big Bright Green Pleasure Machine",164,"Do people have a tendency to dump on you?
        Does your group have more cavities than theirs?
        Do all the hippies seem to get the jump on you?
        Do you sleep alone when other sleep in pairs?
        Well there's no need to complain,
        We'll eliminate your pain.
        We can neutralize your brain.
        You'll feel just fine
        Now.
        Buy a big bright green pleasure machine!
        Do figures of authority just shoot you down?
        Is life within the business world a drag?
        Did your boss just mention that you'd better shop around
        To find yourself a more productive bag?
        Are you worried and distressed?
        Can't seem to get no rest?
        Put our product to the test.
        You'll feel just fine
        Now.
        Buy a big bright green pleasure machine!
        You better hurry up and order one.
        Our limited supply is very nearly gone.
        Do you nervously await the blows of cruel fate?
        Do your checks bounce higher than a rubber ball?
        Are you worried 'cause your girlfriend's just a little late?
        Are you looking for a way to chuck it all?
        We can end your daily strife
        At a reasonable price.
        You've seen it advertised in Life.
        You'll feel just fine
        Now.
        Buy a big bright green pleasure machine.",2,1,1),
    ("Patterns",162,"The night sets softly
        With the hush of falling leaves
        Casting shivering shadows
        On the houses through the trees
        And the light from a street lamp
        Paints a pattern on my wall
        Like the pieces of a puzzle
        Or a child's uneven scrawl
        Up a narrow flight of stairs
        In a narrow little room
        As I lie upon my bed
        In the early evening gloom
        Impaled on my wall
        My eyes can dimly see
        The pattern of my life
        And the puzzle that is me
        From the moment of my birth
        To the instant of my death
        There are patterns I must follow
        Just as I must breathe each breath
        Like a rat in a maze
        The path before me lies
        And the pattern never alters
        Until the rat dies
        And the pattern still remains
        On the wall where darkness fell
        And it's fitting that it should
        For in darkness I must dwell
        Like the color of my skin
        Or the day that I grow old
        My life is made of patterns
        That can scarcely be controlled",2,1,1),
    ("A Most Peculiar Man",154,"He was a most peculiar man.
        That's what Mrs. Riordan said and she should know;
        She lived upstairs from him
        She said he was a most peculiar man.
        He was a most peculiar man.
        He lived all alone within a house,
        Within a room, within himself,
        A most peculiar man.
        He had no friends, he seldom spoke
        And no one in turn ever spoke to him,
        'Cause he wasn't friendly and he didn't care
        And he wasn't like them.
        Oh, no! he was a most peculiar man.
        He died last Saturday.
        He turned on the gas and he went to sleep
        With the windows closed so he'd never wake up
        To his silent world and his tiny room;
        And Mrs. Riordan says he has a brother somewhere
        Who should be notified soon.
        And all the people said, What a shame that he's dead,
        But wasn't he a most peculiar man?",1,1,1),
    ("I Am a Rock",170,"A winter's day
        In a deep and dark December
        I am alone
        Gazing from my window
        To the streets below
        On a freshly fallen, silent shroud of snow
        I am a rock
        I am an island
        I've built walls
        A fortress, steep and mighty
        That none may penetrate
        I have no need of friendship
        Friendship causes pain.
        It's laughter and it's loving I disdain.
        I am a rock
        I am an island
        Don't talk of love
        Well, I've heard the words before
        It's sleeping in my memory
        And I won't disturb the slumber
        Of feelings that have died
        If I never loved, I never would have cried
        I am a rock
        I am an island
        I have my books
        And my poetry to protect me
        I am shielded in my armor
        Hiding in my room
        Safe within my womb
        I touch no one and no one touches me
        I am a rock
        I am an island
        And a rock feels no pain
        And an island never cries",1,1,1),
    ("The Sound of Silence",183,"Hello darkness, my old friend
        I've come to talk with you again
        Because a vision softly creeping
        Left its seeds while I was sleeping
        And the vision that was planted in my brain
        Still remains
        Within the sound of silence
        In restless dreams I walked alone
        Narrow streets of cobblestone
        ‘Neath the halo of a streetlamp
        I turned my collar to the cold and damp
        When my eyes were stabbed by the flash of a neon light
        That split the night
        And touched the sound of silence
        And in the naked light I saw
        Ten thousand people, maybe more
        People talking without speaking
        People hearing without listening
        People writing songs that voices never share
        No one dare
        Disturb the sound of silence
        “Fools” said I, “You do not know
        Silence like a cancer grows
        Hear my words that I might teach you
        Take my arms that I might reach you”
        But my words like silent raindrops fell
        And echoed in the wells of silence
        And the people bowed and prayed
        To the neon god they made
        And the sign flashed out its warning
        In the words that it was forming
        And the sign said “The words of the prophets
        Are written on the subway walls
        And tenement halls
        And whispered in the sounds of silence”",1,1,1),
    ("Toys in the Attic",187,"In the attic lights
        Voices scream
        Nothing's seen
        Real's a dream
        Leaving the things that are real behind
        Leaving the things that you love from mind
        All of the things that you learned from fears
        Nothing is left for the years
        Voices scream
        Nothing's seen
        Real's a dream
        Toys, toys, toys in the attic
        Toys, toys, toys in the attic
        Toys, toys, toys in the attic
        Toys, toys, toys in the attic
        Lights
        Voices scream
        Nothing's seen
        Real's a dream
        Leaving the things that are real behind
        Leaving the things that you love from mind
        All of the things that you learned from fears
        Nothing is left for the years
        Voices scream
        Nothing's seen
        Real's a dream
        Toys, toys, toys in the attic
        Toys, toys, toys in the attic
        Toys, toys, toys in the attic
        Toys, toys, toys in the attic",7,2,2),
    ("Make It",221,"Good evening people, welcome to the show!
        Got something here I want you all to know
        When laughin' people bring on primal screams
        You got to think of what it's gonna take to make your dreams!
        Make it!
        Don't break it
        I said make it!
        Don't break it
        Do then ya feel like the world's coming down on you
        You know that history repeats itself!
        But you just learned, so by somebody else
        You know you do, you gotta think up fast
        You gotta figure what it's gonna take to make it last!
        Make it!
        Don’t fake it
        I said make it!
        Don’t fake it
        Then you do
        Better weather, pull yourself together
        Don't be catchin' the blues!
        Better weather, pull yourself together
        What have you got to lose!
        You're only paying your dues!
        Too stinkin’ proud but you’re gonna pay!
        If you’re gone I’ll get you anyway
        Although you know what you’ve been goin’ through!
        Your only dreams feel like a tattoo!
        Make it!
        Don’t break it
        I said make it!
        Don’t break it
        Then you do
        Better weather, pull yourself together
        Don't be catchin' the blues!
        Better weather, pull yourself together
        What have you got to lose!",4,2,2),
    ("Dream On",268,"Every time I look in the mirror
        All these lines on my face getting clearer
        The past is gone
        It went by like dusk to dawn
        Isn't that the way?
        Everybody's got their dues in life to pay
        Yeah, I know nobody knows
        Where it comes and where it goes
        I know it's everybody's sin
        You got to lose to know how to win
        Half my life's in books' written pages
        Live and learn from fools and from sages
        You know it's true
        All the things come back to you
        Sing with me, sing for the year
        Sing for the laughter, sing for the tear
        Sing with me if it's just for today
        Maybe tomorrow the good Lord will take you away
        Yeah, sing with me, sing for the year
        Sing for the laughter, sing for the tear
        Sing with me if it's just for today
        Maybe tomorrow the good Lord will take you away
        Dream on, dream on, dream on,
        Dream yourself a dream come true
        Dream on, dream on, dream on,
        Dream until your dreams come true
        Dream on, dream on, dream on,
        Dream on, dream on,
        Dream on, dream on, ah
        Sing with me, sing for the year
        Sing for the laughter, sing for the tear
        Sing with me if it's just for today
        Maybe tomorrow, the good Lord will take you away
        Sing with me, sing for the year
        Sing for the laughter, sing for the tear
        Sing with me just for today
        Maybe tomorrow, the good Lord will take you away...",4,2,2),
    ("Walk This Way",220,"Backstroke lover
        Always hidin' 'neath the covers
        'Til I talked to your daddy, he say
        He said, You ain't seen nothin'
        'Til you're down on a muffin
        Then you're sure to be a-changin' your ways.
        I met a cheerleader,
        Was a real young bleeder
        Oh, the times I could reminisce
        'Cause the best things of lovin'
        With her sister and her cousin
        Only started with a little kiss
        Like this!
        Seesaw swingin' with the boys in the school
        And your feet flyin' up in the air
        Singing, Hey diddle diddle
        With your kitty in the middle
        Of the swing like you didn't care
        So I took a big chance
        At the high school dance
        With a missy who was ready to play
        Wasn't me she was foolin'
        'Cause she knew what she was doin'
        And I knowed love was here to stay
        When she told me to...
        Walk this way [8x]
        Just gimme a kiss
        Like this!
        Schoolgirl sweetie with a classy kinda sassy
        Little skirt's climbin' way up the knee
        There was three young ladies in the school gym locker
        When I noticed they was lookin' at me
        I was a high school loser, never made it with a lady
        'Til the boys told me somethin' I missed
        Then my next door neighbor with a daughter had a favor
        So I gave her just a little kiss
        Like this!
        Seesaw swingin' with the boys in the school
        And your feet flyin' up in the air
        Singing, Hey diddle diddle
        With your kitty in the middle
        Of the swing like you didn't care
        So I took a big chance
        At the high school dance
        With a missy who was ready to play
        Wasn't me she was foolin'
        'Cause she knew what she was doin'
        When she told me how to walk this way,
        She told me to...
        Walk this way [8x]
        Just gimme a kiss
        Like this!",7,2,2),
    ("Legendary Child",255,"Legendary child
        I'll tell you what I'm talking about

        Making love at 17, yeah we had the luck
        But we traded them toys for other joys
        And we didn't give a...
        (Whoa whoa whoa)

        I took a chance at the high school dance
        Never knowing wrong from right
        And that same show 40 years ago
        Being televised tonight

        Cause getting from inside my head to the Taj Mahal
        I went from never having none to wanna have it all

        I wanna keep that dream alive
        And eat that honey from the hive
        With all the noise and all the glamour
        No surprise, you know I am a

        Legendary child
        I think that what I'm trying to say is

        Sticks and stones may break your bones
        At least they'll rearrange
        I'll drop a dime, and every time
        I get myself a nickel's change
        (Whoa whoa whoa)

        They say we don't know jack
        At the plant we proved them wrong
        We traded in our soul tonight and sold them for a song

        And if Satan had a lady friend, her name was Mary Jane
        I never wondered why she tried to drive us quite insane

        And how we got that golden fleece
        From toking on that pipe of peace
        Yea as far as I can see
        There is a God 'cause I got me a

        Legendary child
        Legendary child

        Legendary child
        Legendary child

        Legendary
        Legendary child
        Legendary",8,2,2);