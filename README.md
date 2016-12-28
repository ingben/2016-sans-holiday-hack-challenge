# 2016-sans-holiday-hack-challenge

## About

This is a write-up for the [2016 SANS Holiday Hack Challenge](https://holidayhackchallenge.com/2016/index.html).

## Part 1: A Most Curious Business Card

You start of in a room. Talk to Jessica and Josh to get some info and the first
two quests. Browse the room for Santa's business card (it is lying in front of the
fireplace).

![Santa's business card](screens/sans-1.png)

This gives us two pieces of information to have a look at:
* Santa's Twitter account `@santawclaus`
* Santa's Instagram account `@santawclaus` 

We will check out the Twitter account first.

![Santa's Twitter account](screens/twitter-santawclaus-1.png)

Santa's tweets look a bit odd. Since the first question directly asks for a secret message in them, we decided to pull them all down via the Twitter API.

Turns out that there is a Python package for talking to Twitter called [tweepy](https://github.com/tweepy/tweepy). They do offer a solid [documentation](http://tweepy.readthedocs.io/en/v3.5.0/). The most challenging part was to actually create the necessary Twitter API credentials [here](https://apps.twitter.com/). With that out of the way, a small python script like the following will pull all 350 tweets from `@santawclaus`.

```python
import tweepy

consumer_key='<YOUR CONSUMER KEY>'
consumer_secret='<YOUR CONSUMER SECRET>'
access_token='<YOUR ACCESS TOKEN>'
access_token_secret='<YOUR ACCESS TOKEN SECRET>'

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

all_tweets = api.user_timeline('santawclaus', count=200)

max_id = all_tweets[-1].id - 1

all_tweets.extend(api.user_timeline('santawclaus', count=200, max_id=max_id))

for tweet in all_tweets:
    print tweet.text
```

The code is a bit messy. Since the maximum count that you can specify is 200, we have to call the API twice. The `max_id` parameter ensures that we get only older tweets in the second call compared to the first one.

The result looks like so on the terminal:

```
SANTAELFHOHOHOCHRISTMASSANTACHRISTMASPEACEONEARTHCHRISTMASELFSANTAELFHOHOHO
GOODWILLTOWARDSMENSANTAPEACEONEARTHHOHOHOJOYSANTAGOODWILLTOWARDSMENJOYJOYQQ
GOODWILLTOWARDSMENGOODWILLTOWARDSMENJOYHOHOHOJOYELFELFPEACEONEARTHJOYHOHOHO
GOODWILLTOWARDSMENSANTACHRISTMASCHRISTMASPEACEONEARTHNORTHPOLEHOHOHOELFELFQ
JOYNORTHPOLECHRISTMASPEACEONEARTHNORTHPOLEJOYGOODWILLTOWARDSMENELFCHRISTMAS
CHRISTMASGOODWILLTOWARDSMENELFHOHOHOCHRISTMASPEACEONEARTHPEACEONEARTHJOYELF
HOHOHOGOODWILLTOWARDSMENNORTHPOLEGOODWILLTOWARDSMENSANTAPEACEONEARTHELFELFQ
GOODWILLTOWARDSMENP???????????????????????????????4CHRISTMASJOYELFELFSANTAQ
NORTHPOLEHOHOHOELFf...............................]PEACEONEARTHHOHOHOSANTAQ
SANTASANTAJOYELFQQf...............................]PEACEONEARTHCHRISTMASELF
CHRISTMASELFELFJOYf...............................]HOHOHOSANTAHOHOHOELFJOYQ
SANTASANTAJOYJOYQQf...............................]GOODWILLTOWARDSMENHOHOHO
NORTHPOLEELFELFELFf...............................]PEACEONEARTHHOHOHOSANTAQ
NORTHPOLECHRISTMASf...............................]PEACEONEARTHCHRISTMASJOY
PEACEONEARTHSANTAQf...............................]PEACEONEARTHNORTHPOLEELF
JOYCHRISTMASSANTAQf...............................]CHRISTMASHOHOHOCHRISTMAS
NORTHPOLEHOHOHOJOYf...............................]PEACEONEARTHPEACEONEARTH
SANTAELFELFJOYJOYQf.......aaaaaa/....._aaaaa......]PEACEONEARTHNORTHPOLEELF
GOODWILLTOWARDSMENf.......QQWQWQf.....]ELFWQ......]HOHOHOHOHOHOCHRISTMASJOY
NORTHPOLESANTAJOYQf.......HOHOHOf.....]JOYQQ......]CHRISTMASCHRISTMASHOHOHO
NORTHPOLEELFJOYJOYf.......SANTAQf.....]JOYQQ......]NORTHPOLEPEACEONEARTHELF
SANTAPEACEONEARTHQf.......HOHOHOf.....]SANTA......]PEACEONEARTHCHRISTMASELF
ELFSANTASANTAJOYQQf.......HOHOHOf.....]JOYQW......]CHRISTMASPEACEONEARTHJOY
JOYHOHOHONORTHPOLEf.......SANTAQ[.....)ELFQE......]PEACEONEARTHPEACEONEARTH
HOHOHOCHRISTMASJOYf.......$WJOYQ(......$WQQ(......]GOODWILLTOWARDSMENSANTAQ
JOYPEACEONEARTHELFf.......)JOYQ@........??'.......]SANTAPEACEONEARTHHOHOHOQ
JOYJOYPEACEONEARTHL........?$QV'..................]CHRISTMASJOYNORTHPOLEJOY
SANTAJOYCHRISTMASQk...............................jGOODWILLTOWARDSMENJOYJOY
GOODWILLTOWARDSMENW...............................jJOYNORTHPOLEJOYELFSANTAQ
HOHOHOSANTAJOYELFQQ...............................GOODWILLTOWARDSMENHOHOHOQ
CHRISTMASSANTASANTA;................;............=JOYNORTHPOLEPEACEONEARTHQ
GOODWILLTOWARDSMENQL...............)L............jHOHOHOHOHOHOCHRISTMASELFQ
CHRISTMASHOHOHOELFQQ...............dQ,..........&lt;GOODWILLTOWARDSMENHOHOHOQQ
GOODWILLTOWARDSMENQQL.............&lt;QQm,........_HOHOHOHOHOHOCHRISTMASELFELF
SANTACHRISTMASELFELFQc..........._mJOYQc......aPEACEONEARTHCHRISTMASSANTAQQ
CHRISTMASPEACEONEARTHQw........._mSANTAWmwaawGOODWILLTOWARDSMENSANTAJOYELFQ
PEACEONEARTHELFSANTAELFQw,,..__yHOHOHOELFQWQQWGOODWILLTOWARDSMENHOHOHOSANTA
ELFHOHOHONORTHPOLEELFJOYWGOODWILLTOWARDSMENCHRISTMASSANTACHRISTMASJOYSANTAQ
ELFELFHOHOHOHOHOHOHOHOHONORTHPOLEJOYHOHOHOGOODWILLTOWARDSMENELFELFELFSANTAQ
ELFHOHOHOJOYPEACEONEARTHPEACEONEARTHJOYGOODWILLTOWARDSMENJOYELFPEACEONEARTH
GOODWILLTOWARDSMENJOYGOODWILLTOWARDSMENGOODWILLTOWARDSMENSANTAELFJOYJOYJOYQ
ELFSANTAPEACEONEARTHJOYJOYQQDT????????????????????4NORTHPOLEPEACEONEARTHELF
NORTHPOLENORTHPOLESANTAQWT^.......................]NORTHPOLEELFHOHOHOJOYELF
HOHOHOHOHOHOCHRISTMASQQP`.........................]JOYGOODWILLTOWARDSMENELF
ELFPEACEONEARTHSANTAQQ(...........................]HOHOHOSANTACHRISTMASJOYQ
JOYJOYCHRISTMASELFJOY(............................]GOODWILLTOWARDSMENHOHOHO
CHRISTMASELFELFELFQQf.............................]HOHOHONORTHPOLEJOYELFJOY
SANTACHRISTMASJOYQQD..............................]HOHOHOHOHOHOSANTASANTAQQ
HOHOHOELFSANTAELFQQ(..............................]GOODWILLTOWARDSMENHOHOHO
GOODWILLTOWARDSMENW...............................]NORTHPOLEHOHOHOHOHOHOJOY
CHRISTMASHOHOHOJOYF...............................]GOODWILLTOWARDSMENSANTAQ
CHRISTMASCHRISTMAS[.........._aaaaaaaaaaaaaaaaaaaajPEACEONEARTHELFNORTHPOLE
SANTANORTHPOLEELFQ(........jJOYQWQWWQWWQWWWWWWWWWGOODWILLTOWARDSMENHOHOHOQQ
ELFPEACEONEARTHELF;.......jWWSANTAGOODWILLTOWARDSMENSANTAGOODWILLTOWARDSMEN
ELFJOYNORTHPOLEJOY`.......QWGOODWILLTOWARDSMENGOODWILLTOWARDSMENCHRISTMASQQ
PEACEONEARTHJOYELF.......]WPEACEONEARTHCHRISTMASNORTHPOLEPEACEONEARTHHOHOHO
CHRISTMASJOYHOHOHO.......]HOHOHOELFGOODWILLTOWARDSMENPEACEONEARTHCHRISTMASQ
JOYCHRISTMASJOYELF.......]PEACEONEARTHCHRISTMASGOODWILLTOWARDSMENELFHOHOHOQ
JOYPEACEONEARTHJOY.......)WGOODWILLTOWARDSMENSANTANORTHPOLEJOYPEACEONEARTHQ
CHRISTMASHOHOHOELF........$WPEACEONEARTHNORTHPOLESANTAPEACEONEARTHSANTAJOYQ
JOYHOHOHOELFELFJOY;.......-QWCHRISTMASGOODWILLTOWARDSMENPEACEONEARTHJOYELFQ
HOHOHOCHRISTMASJOY(........-?$QWJOYCHRISTMASSANTACHRISTMASCHRISTMASHOHOHOQQ
ELFJOYELFCHRISTMASf...............................]PEACEONEARTHNORTHPOLEJOY
ELFHOHOHOSANTAELFQh...............................]GOODWILLTOWARDSMENHOHOHO
SANTACHRISTMASELFQQ,..............................]PEACEONEARTHPEACEONEARTH
GOODWILLTOWARDSMENQL..............................]HOHOHOELFCHRISTMASSANTAQ
GOODWILLTOWARDSMENQQ,.............................]PEACEONEARTHELFHOHOHOJOY
NORTHPOLESANTAHOHOHOm.............................]HOHOHOGOODWILLTOWARDSMEN
PEACEONEARTHCHRISTMASg............................]ELFHOHOHOSANTANORTHPOLEQ
NORTHPOLECHRISTMASJOYQm,..........................]NORTHPOLECHRISTMASSANTAQ
SANTASANTACHRISTMASSANTAw,........................]GOODWILLTOWARDSMENSANTAQ
GOODWILLTOWARDSMENHOHOHOWQga,,....................]PEACEONEARTHPEACEONEARTH
PEACEONEARTHJOYCHRISTMASELFWCHRISTMASGOODWILLTOWARDSMENJOYPEACEONEARTHSANTA
PEACEONEARTHPEACEONEARTHCHRISTMASJOYSANTAPEACEONEARTHCHRISTMASELFHOHOHOELFQ
GOODWILLTOWARDSMENNORTHPOLECHRISTMASPEACEONEARTHHOHOHOELFJOYNORTHPOLEELFELF
JOYGOODWILLTOWARDSMENSANTACHRISTMASJOYPEACEONEARTHHOHOHOELFCHRISTMASHOHOHOQ
HOHOHOCHRISTMASHOHOHOSANTANORTHPOLEPEACEONEARTHJOYPEACEONEARTHJOYJOYHOHOHOQ
JOYELFGOODWILLTOWARDSMENSANTAQBTT???TT$SANTASANTAPEACEONEARTHNORTHPOLEJOYQQ
SANTACHRISTMASCHRISTMASJOYWP"`.........-"9NORTHPOLEPEACEONEARTHCHRISTMASELF
SANTAELFELFELFSANTAJOYQQWP`...............-4JOYSANTANORTHPOLEJOYSANTASANTAQ
ELFELFELFHOHOHOHOHOHOQQ@'..................."$CHRISTMASELFSANTANORTHPOLEELF
ELFCHRISTMASSANTAELFQQP`.....................-$WELFWPEACEONEARTHSANTASANTAQ
SANTANORTHPOLEJOYELFQE........................-$SANTAELFWGOODWILLTOWARDSMEN
NORTHPOLEELFELFELFQQ@`.........................-QWPEACEONEARTHPEACEONEARTHQ
PEACEONEARTHJOYJOYQQ(...........................]CHRISTMASHOHOHOELFSANTAJOY
HOHOHOCHRISTMASELFQP.............................$NORTHPOLEJOYQWJOYWJOYWELF
SANTACHRISTMASJOYQQ(.............................]WSANTAWPEACEONEARTHJOYELF
HOHOHOSANTAJOYELFQW............_aaaas,............QWCHRISTMASQWHOHOHOSANTAQ
SANTAPEACEONEARTHQf........._wELFWWWWQQw,.........3ELFHOHOHOJOYJOYSANTAELFQ
CHRISTMASSANTAELFQ[........&lt;HOHOHOELFELFQc........]CHRISTMASPEACEONEARTHELF
CHRISTMASCHRISTMAS(......._PEACEONEARTHJOY/.......)NORTHPOLESANTAELFQWELFWQ
PEACEONEARTHSANTAQ`.......dNORTHPOLEHOHOHOm.......:NORTHPOLEWCHRISTMASJOYQQ
PEACEONEARTHELFELF........SANTANORTHPOLEJOY;.......SANTASANTAJOYQWSANTAJOYQ
PEACEONEARTHSANTAQ.......]ELFSANTAJOYJOYELF[.......GOODWILLTOWARDSMENSANTAQ
GOODWILLTOWARDSMEN.......]ELFNORTHPOLEJOYQQf.......ELFSANTAJOYHOHOHOQQWELFQ
GOODWILLTOWARDSMEN.......]ELF.......]JOYELF[.......PEACEONEARTHPEACEONEARTH
HOHOHOJOYNORTHPOLE.......]JOY.......]SANTAQ'.......SANTASANTAQQWNORTHPOLEQQ
CHRISTMASNORTHPOLE:......)WQQ.......]SANTAD........NORTHPOLESANTAELFWELFJOY
ELFCHRISTMASSANTAQ;......-JOY.......]ELFQW'.......:PEACEONEARTHCHRISTMASJOY
CHRISTMASSANTAELFQ[.......WQQ.......]ELFD'........=HOHOHOGOODWILLTOWARDSMEN
ELFELFSANTAJOYELFQL.......]QQ.......]ELF..........]PEACEONEARTHQWCHRISTMASQ
NORTHPOLESANTAELFQm.......+QQ.......]ELF;.........jWNORTHPOLENORTHPOLEELFWQ
JOYELFHOHOHOSANTAQQ.................]JOY[.........mCHRISTMASCHRISTMASQQWELF
NORTHPOLENORTHPOLEQ[................]JOYL........_PEACEONEARTHSANTASANTAELF
SANTANORTHPOLEJOYQQm................]ELFk........dHOHOHOPEACEONEARTHQQWJOYQ
PEACEONEARTHHOHOHOQQc...............]JOYm.......]PEACEONEARTHHOHOHOWHOHOHOQ
CHRISTMASHOHOHOJOYQQm...............]ELFQ......_GOODWILLTOWARDSMENNORTHPOLE
JOYELFNORTHPOLEJOYELFL..............]JOYQ;....&lt;SANTAHOHOHONORTHPOLEELFSANTA
PEACEONEARTHELFHOHOHOQ,.............]JOYQ[...wPEACEONEARTHELFSANTAWHOHOHOQQ
CHRISTMASELFELFELFJOYQ6.............]ELFQL_wPEACEONEARTHHOHOHOCHRISTMASELFQ
HOHOHOJOYNORTHPOLEQWELFwaaaaaaaaaaaajPEACEONEARTHGOODWILLTOWARDSMENSANTAQWQ
CHRISTMASELFPEACEONEARTHWWWQWWQWWWWELFELFSANTANORTHPOLESANTAELFQQWJOYHOHOHO
CHRISTMASNORTHPOLEHOHOHOHOHOHOCHRISTMASGOODWILLTOWARDSMENNORTHPOLEHOHOHOWQQ
GOODWILLTOWARDSMENNORTHPOLENORTHPOLESANTANORTHPOLEJOYSANTAELFELFWCHRISTMASQ
GOODWILLTOWARDSMENHOHOHOHOHOHONORTHPOLEELFSANTAELFNORTHPOLEPEACEONEARTHELFQ
PEACEONEARTHELFELFQWPEACEONEARTHPEACEONEARTHHOHOHOPEACEONEARTHWNORTHPOLEWQQ
ELFPEACEONEARTHCHRISTMASELFPEACEONEARTHJOYNORTHPOLEGOODWILLTOWARDSMENSANTAQ
SANTASANTASANTAJOYELFJOYWGOODWILLTOWARDSMENPEACEONEARTHSANTAWPEACEONEARTHQQ
PEACEONEARTHSANTAJOYGOODWILLTOWARDSMENSANTACHRISTMASELFCHRISTMASELFJOYQWELF
CHRISTMASCHRISTMASELFELFHOHOHOWJOYWNORTHPOLESANTACHRISTMASWSANTAJOYQQWJOYQQ
ELFJOYSANTAJOYJOYQQWJOYWPEACEONEARTHNORTHPOLEHOHOHOHOHOHONORTHPOLEELFJOYELF
ELFNORTHPOLEJOYSANTANORTHPOLECHRISTMASQQWPEACEONEARTHJOYQWHOHOHOJOYWJOYELFQ
NORTHPOLECHRISTMASHOHOHOSANTAWPEACEONEARTHGOODWILLTOWARDSMENCHRISTMASHOHOHO
GOODWILLTOWARDSMENSANTACHRISTMASSANTAQQWELFHOHOHOSANTAQQWJOYSANTAQWSANTAJOY
JOYNORTHPOLEJOYPEACEONEARTHWELFELFQQWNORTHPOLEQWHOHOHONORTHPOLEELFELFHOHOHO
CHRISTMASSANTASANTAWJOYWCHRISTMASHOHOHONORTHPOLEJOYQQWHOHOHOSANTAWNORTHPOLE
PEACEONEARTHSANTASANTAPEACEONEARTHNORTHPOLEJOYJOYJOYELFCHRISTMASHOHOHOSANTA
SANTASANTACHRISTMASJOYJOYJOYELFJOYQWHOHOHOJOYQWPEACEONEARTHELFQQWCHRISTMASQ
GOODWILLTOWARDSMENELFPEACEONEARTHHOHOHOCHRISTMASELFQWHOHOHOWCHRISTMASHOHOHO
CHRISTMASELFELFPEACEONEARTHWELFQQWHOHOHOQQWCHRISTMASELFJOYNORTHPOLEHOHOHOQQ
SANTAPEACEONEARTHQQWJOYWCHRISTMASHOHOHOPEACEONEARTHGOODWILLTOWARDSMENJOYQWQ
JOYJOYHOHOHOELFELFP???????????????????????????????4SANTAQQWPEACEONEARTHELFQ
NORTHPOLENORTHPOLEf...............................]PEACEONEARTHQQWHOHOHOWQQ
CHRISTMASJOYHOHOHOf...............................]ELFGOODWILLTOWARDSMENELF
NORTHPOLEELFELFELFf...............................]PEACEONEARTHHOHOHOQQWELF
NORTHPOLEHOHOHOELFf...............................]CHRISTMASJOYQWSANTASANTA
SANTAJOYNORTHPOLEQf...............................]SANTAHOHOHOWJOYCHRISTMAS
GOODWILLTOWARDSMENf...............................]PEACEONEARTHHOHOHOQWJOYQ
ELFPEACEONEARTHELFf...............................]GOODWILLTOWARDSMENHOHOHO
JOYCHRISTMASELFELFf...............................]GOODWILLTOWARDSMENSANTAQ
GOODWILLTOWARDSMENf...............................]NORTHPOLEPEACEONEARTHJOY
ELFSANTAHOHOHOELFQf.......aaaaaa/....._aaaaa......]GOODWILLTOWARDSMENWELFQQ
NORTHPOLEHOHOHOELFf.......QWWWWQf.....]QQWWQ......]HOHOHOHOHOHOQQWJOYSANTAQ
SANTANORTHPOLEJOYQf.......HOHOHOf.....]JOYQQ......]HOHOHOHOHOHONORTHPOLEELF
NORTHPOLEJOYJOYELFf.......JOYELFf.....]SANTA......]NORTHPOLEHOHOHONORTHPOLE
SANTASANTASANTAELFf.......JOYELFf.....]SANTA......]NORTHPOLENORTHPOLEELFELF
GOODWILLTOWARDSMENf.......JOYJOYf.....]JOYQW......]PEACEONEARTHHOHOHOQWELFQ
GOODWILLTOWARDSMENf.......HOHOHO[.....)JOYQE......]HOHOHOELFHOHOHOQQWJOYJOY
JOYNORTHPOLEELFELFf.......$WELFQ(......$WQQ(......]PEACEONEARTHNORTHPOLEELF
NORTHPOLEJOYELFJOYf.......)ELFQ@........??'.......]CHRISTMASPEACEONEARTHJOY
SANTAPEACEONEARTHQL........?$QV'..................]HOHOHOGOODWILLTOWARDSMEN
JOYELFPEACEONEARTHk...............................jJOYSANTACHRISTMASWJOYJOY
SANTAPEACEONEARTHQW...............................jSANTAGOODWILLTOWARDSMENQ
CHRISTMASSANTAELFQQ...............................HOHOHOPEACEONEARTHSANTAQQ
ELFCHRISTMASELFELFQ;................;............=NORTHPOLENORTHPOLEJOYELFQ
NORTHPOLEJOYSANTAQQ[...............)L............jPEACEONEARTHJOYHOHOHOQQWQ
CHRISTMASHOHOHOJOYQm...............dQ,..........&lt;GOODWILLTOWARDSMENQWSANTAQ
SANTACHRISTMASSANTAQL.............&lt;QQm,........_JOYELFGOODWILLTOWARDSMENELF
HOHOHOSANTASANTAJOYQQc..........._mELFQc......aGOODWILLTOWARDSMENSANTAJOYWQ
CHRISTMASHOHOHOJOYJOYQw........._mELFQQWmwaawGOODWILLTOWARDSMENNORTHPOLEELF
NORTHPOLEELFPEACEONEARTHw,,..__yELFJOYJOYQWQWQWGOODWILLTOWARDSMENCHRISTMASQ
JOYNORTHPOLEELFNORTHPOLEWGOODWILLTOWARDSMENNORTHPOLEJOYJOYJOYSANTAQQWELFWQQ
JOYSANTAELFHOHOHOQQWNORTHPOLENORTHPOLEGOODWILLTOWARDSMENSANTASANTAHOHOHOJOY
ELFHOHOHOCHRISTMASCHRISTMASELFPEACEONEARTHHOHOHOELFCHRISTMASHOHOHOELFJOYELF
JOYPEACEONEARTHJOYNORTHPOLEGOODWILLTOWARDSMENHOHOHONORTHPOLEHOHOHOELFELFJOY
HOHOHOPEACEONEARTHELFJOYJOYQV?"~....--"?$CHRISTMASELFWPEACEONEARTHQWHOHOHOQ
CHRISTMASCHRISTMASJOYELFWW?`.............-?CHRISTMASHOHOHOQWELFWSANTAJOYWQQ
SANTAPEACEONEARTHQQWELFQP`.................-4HOHOHOWCHRISTMASNORTHPOLESANTA
CHRISTMASNORTHPOLEJOYQW(.....................)WGOODWILLTOWARDSMENNORTHPOLEQ
GOODWILLTOWARDSMENJOYW'.......................)WSANTAJOYQQWNORTHPOLEHOHOHOQ
JOYNORTHPOLEHOHOHOJOY(.........................)PEACEONEARTHSANTAELFWJOYWQQ
GOODWILLTOWARDSMENQQf...........................4PEACEONEARTHELFQWCHRISTMAS
NORTHPOLEHOHOHOELFQW`...........................-HOHOHOWCHRISTMASCHRISTMASQ
GOODWILLTOWARDSMENQf.............................]JOYJOYSANTAELFWCHRISTMASQ
HOHOHONORTHPOLEJOYQ`.............................-HOHOHOELFQWCHRISTMASSANTA
ELFELFELFJOYHOHOHOE.........._wwQWQQmga,..........$GOODWILLTOWARDSMENJOYWQQ
NORTHPOLECHRISTMASf........_yJOYWSANTAQQg,........]PEACEONEARTHPEACEONEARTH
SANTANORTHPOLEJOYQ[......._ELFELFSANTAELFQ,.......]CHRISTMASSANTASANTAWJOYQ
CHRISTMASCHRISTMAS;.......dPEACEONEARTHJOYk.......=JOYJOYHOHOHOQWJOYWHOHOHO
ELFNORTHPOLEELFELF......._HOHOHOCHRISTMASQQ,.......NORTHPOLEQWSANTASANTAELF
PEACEONEARTHJOYJOY.......]PEACEONEARTHJOYQQ[.......GOODWILLTOWARDSMENELFJOY
HOHOHOELFNORTHPOLE.......]PEACEONEARTHSANTAf.......NORTHPOLEHOHOHOHOHOHOELF
ELFSANTAELFHOHOHOQ.......]NORTHPOLEHOHOHOQQ[.......GOODWILLTOWARDSMENHOHOHO
CHRISTMASCHRISTMAS.......)PEACEONEARTHJOYQQ(.......HOHOHOHOHOHOSANTAWHOHOHO
SANTASANTAELFJOYQQ........HOHOHOCHRISTMASQ@.......:NORTHPOLEELFQWSANTASANTA
CHRISTMASCHRISTMAS;.......]PEACEONEARTHELF[.......&lt;HOHOHOSANTANORTHPOLEQQWQ
HOHOHOPEACEONEARTH[........4HOHOHOJOYELFQf........]PEACEONEARTHHOHOHOHOHOHO
CHRISTMASCHRISTMASL........."HWJOYSANTAD^.........jNORTHPOLENORTHPOLEHOHOHO
GOODWILLTOWARDSMENm............"!???!"`...........NORTHPOLEHOHOHOWJOYQWELFQ
CHRISTMASJOYELFELFQ/.............................]WNORTHPOLECHRISTMASHOHOHO
SANTAJOYCHRISTMASQQk.............................dPEACEONEARTHELFELFHOHOHOQ
SANTAPEACEONEARTHJOY/...........................&lt;NORTHPOLECHRISTMASHOHOHOQQ
ELFSANTASANTASANTAQQm...........................mJOYELFSANTAPEACEONEARTHELF
CHRISTMASCHRISTMASELFk.........................jGOODWILLTOWARDSMENQWJOYWELF
ELFJOYCHRISTMASJOYJOYQL.......................jNORTHPOLENORTHPOLEJOYJOYJOYQ
ELFELFJOYSANTAJOYELFELFg,..................._yGOODWILLTOWARDSMENQQWSANTAELF
PEACEONEARTHJOYELFQWSANTAc.................aQWCHRISTMASHOHOHOSANTAJOYHOHOHO
SANTAJOYJOYPEACEONEARTHELFQa,..........._wQWWHOHOHOSANTAJOYELFQQWJOYSANTAQQ
HOHOHOELFJOYPEACEONEARTHQQWJOYmwwaaaawyJOYWCHRISTMASHOHOHOPEACEONEARTHJOYWQ
ELFCHRISTMASSANTASANTASANTAJOYQQWWWWQWGOODWILLTOWARDSMENJOYELFQWCHRISTMASQQ
ELFCHRISTMASSANTASANTASANTAJOYQQWWWWQWGOODWILLTOWARDSMENJOYELFQWCHRISTMASQQ
SANTAHOHOHOELFPEACEONEARTHGOODWILLTOWARDSMENJOYPEACEONEARTHSANTASANTAJOYWQQ
HOHOHOJOYELFJOYELFQWGOODWILLTOWARDSMENPEACEONEARTHGOODWILLTOWARDSMENELFELFQ
NORTHPOLEJOYJOYELFHOHOHOWPEACEONEARTHNORTHPOLECHRISTMASHOHOHOQWELFJOYQQWJOY
GOODWILLTOWARDSMENSANTAJOYNORTHPOLENORTHPOLEHOHOHOHOHOHOGOODWILLTOWARDSMENQ
CHRISTMASJOYSANTANORTHPOLEV?"-....................]GOODWILLTOWARDSMENQWJOYQ
GOODWILLTOWARDSMENSANTAW?`........................]GOODWILLTOWARDSMENSANTAQ
HOHOHOELFJOYJOYELFQWQQD'..........................]HOHOHONORTHPOLEQWHOHOHOQ
PEACEONEARTHHOHOHOJOYP`...........................]SANTAJOYELFWHOHOHOHOHOHO
PEACEONEARTHHOHOHOQQD`............................]JOYPEACEONEARTHSANTAELFQ
PEACEONEARTHHOHOHOQW'.............................]CHRISTMASJOYELFQWHOHOHOQ
ELFPEACEONEARTHELFQf..............................]PEACEONEARTHELFNORTHPOLE
SANTACHRISTMASJOYQQ`..............................]NORTHPOLEQQWNORTHPOLEQWQ
CHRISTMASHOHOHOELFE...............................]SANTAGOODWILLTOWARDSMENQ
GOODWILLTOWARDSMENf...............................]GOODWILLTOWARDSMENSANTAQ
ELFCHRISTMASELFJOY[.........amWNORTHPOLEGOODWILLTOWARDSMENJOYJOYJOYQWELFWQQ
PEACEONEARTHJOYJOY(......._QQWHOHOHOWJOYWPEACEONEARTHPEACEONEARTHNORTHPOLEQ
NORTHPOLEELFELFJOY`.......mSANTAQQWCHRISTMASQQWGOODWILLTOWARDSMENQQWHOHOHOQ
JOYSANTANORTHPOLEQ`......=CHRISTMASPEACEONEARTHSANTANORTHPOLENORTHPOLESANTA
NORTHPOLESANTAJOYQ.......]NORTHPOLEPEACEONEARTHELFHOHOHOGOODWILLTOWARDSMENQ
ELFNORTHPOLESANTAQ.......]GOODWILLTOWARDSMENQWELFJOYPEACEONEARTHCHRISTMASQQ
HOHOHONORTHPOLEJOY.......]GOODWILLTOWARDSMENJOYJOYQWPEACEONEARTHJOYWSANTAWQ
PEACEONEARTHJOYELF.......-QWSANTAELFWSANTAWHOHOHOPEACEONEARTHCHRISTMASELFQQ
CHRISTMASSANTAJOYQ........]SANTASANTASANTAGOODWILLTOWARDSMENPEACEONEARTHELF
ELFHOHOHOCHRISTMAS;........?ELFJOYPEACEONEARTHELFQWGOODWILLTOWARDSMENHOHOHO
GOODWILLTOWARDSMEN[.........-"????????????????????4ELFCHRISTMASHOHOHOQQWELF
SANTASANTAJOYSANTAL...............................]HOHOHOQWJOYELFQQWJOYJOYQ
NORTHPOLECHRISTMASQ...............................]NORTHPOLEELFQWJOYJOYELFQ
SANTANORTHPOLEELFQWc..............................]GOODWILLTOWARDSMENSANTAQ
JOYSANTACHRISTMASQQm..............................]ELFNORTHPOLECHRISTMASELF
CHRISTMASSANTASANTAQL.............................]PEACEONEARTHWJOYJOYQQWQQ
ELFNORTHPOLEHOHOHOJOYc............................]SANTACHRISTMASJOYELFJOYQ
SANTAELFHOHOHOJOYJOYQQc...........................]PEACEONEARTHSANTAQQWJOYQ
GOODWILLTOWARDSMENSANTAw,.........................]NORTHPOLEHOHOHONORTHPOLE
NORTHPOLENORTHPOLEQWSANTAa,.......................]PEACEONEARTHWSANTAWJOYQQ
SANTACHRISTMASHOHOHOELFELFQQgwaaaaaaaaaaaaaaaaaaaajCHRISTMASJOYPEACEONEARTH
SANTAHOHOHOPEACEONEARTHSANTAQWWWWWWWWWWWWWWWWWWWWHOHOHOELFJOYCHRISTMASELFQQ
NORTHPOLESANTASANTANORTHPOLESANTAPEACEONEARTHCHRISTMASELFHOHOHOELFJOYWJOYQQ
JOYELFJOYNORTHPOLEPEACEONEARTHJOYGOODWILLTOWARDSMENPEACEONEARTHELFELFELFELF
SANTAJOYCHRISTMASQQWELFWGOODWILLTOWARDSMENSANTANORTHPOLENORTHPOLEJOYWSANTAQ
JOYPEACEONEARTHSANTAGOODWILLTOWARDSMENJOYPEACEONEARTHJOYELFJOYCHRISTMASJOYQ
PEACEONEARTHJOYHOHOHOJOYHOHOHONORTHPOLEHOHOHOGOODWILLTOWARDSMENPEACEONEARTH
SANTASANTAELFJOYQQP???????????????????????????????4PEACEONEARTHJOYQWSANTAQQ
ELFELFHOHOHOHOHOHOf...............................]GOODWILLTOWARDSMENJOYELF
SANTAJOYELFELFELFQf...............................]CHRISTMASNORTHPOLESANTAQ
SANTAHOHOHOELFJOYQf...............................]GOODWILLTOWARDSMENELFELF
GOODWILLTOWARDSMENf...............................]CHRISTMASCHRISTMASJOYQWQ
JOYSANTAELFJOYELFQf...............................]PEACEONEARTHSANTAWHOHOHO
CHRISTMASCHRISTMASf...............................]GOODWILLTOWARDSMENSANTAQ
PEACEONEARTHSANTAQf...............................]HOHOHOHOHOHOJOYWHOHOHOWQ
JOYELFHOHOHOJOYELFf...............................]GOODWILLTOWARDSMENHOHOHO
SANTANORTHPOLEJOYQf...............................]PEACEONEARTHNORTHPOLEELF
HOHOHOGOODWILLTOWARDSMENSANTAWJOYQ@'.............sPEACEONEARTHELFWCHRISTMAS
GOODWILLTOWARDSMENHOHOHOCHRISTMASF............._yWWPEACEONEARTHELFELFJOYWQQ
SANTAGOODWILLTOWARDSMENQQWELFQQ@'.............sQWGOODWILLTOWARDSMENJOYJOYQQ
NORTHPOLECHRISTMASNORTHPOLEQQWF............._yQWELFELFELFSANTASANTAHOHOHOQQ
NORTHPOLECHRISTMASELFQQWELFQ@'.............aWCHRISTMASELFPEACEONEARTHQQWELF
SANTAHOHOHOHOHOHOJOYWSANTAQ?............._yQWPEACEONEARTHCHRISTMASQQWJOYJOY
CHRISTMASSANTACHRISTMASQQ@'.............aJOYNORTHPOLESANTAELFHOHOHOSANTAELF
SANTACHRISTMASNORTHPOLEW?............._yCHRISTMASCHRISTMASCHRISTMASHOHOHOQQ
PEACEONEARTHHOHOHOQWQQD'.............aHOHOHOHOHOHONORTHPOLEHOHOHOELFWHOHOHO
HOHOHOCHRISTMASELFELF!............._mGOODWILLTOWARDSMENCHRISTMASSANTASANTAQ
JOYPEACEONEARTHELFQD'.............aCHRISTMASPEACEONEARTHSANTAHOHOHOWSANTAQQ
NORTHPOLEJOYHOHOHOF.............."????????????????4PEACEONEARTHQQWHOHOHOELF
HOHOHOELFSANTAELFQf...............................]SANTAQWJOYWNORTHPOLEELFQ
HOHOHOPEACEONEARTHf...............................]PEACEONEARTHPEACEONEARTH
JOYPEACEONEARTHELFf...............................]HOHOHOSANTASANTASANTAELF
GOODWILLTOWARDSMENf...............................]PEACEONEARTHNORTHPOLEJOY
NORTHPOLEHOHOHOELFf...............................]HOHOHOCHRISTMASWSANTAELF
ELFSANTACHRISTMASQf...............................]SANTAJOYJOYQWSANTAJOYWQQ
HOHOHONORTHPOLEJOYf...............................]PEACEONEARTHSANTAHOHOHOQ
GOODWILLTOWARDSMENf...............................]CHRISTMASCHRISTMASSANTAQ
PEACEONEARTHELFJOYf...............................]PEACEONEARTHJOYELFQQWJOY
JOYSANTAPEACEONEARTHSANTAWQQWQQWGOODWILLTOWARDSMENCHRISTMASJOYSANTASANTAJOY
ELFNORTHPOLESANTAELFHOHOHOJOYGOODWILLTOWARDSMENNORTHPOLECHRISTMASQWJOYWELFQ
HOHOHOCHRISTMASSANTAJOYCHRISTMASHOHOHOSANTAELFQQWJOYHOHOHOJOYJOYELFJOYELFQQ
CHRISTMASJOYJOYHOHOHOHOHOHOJOYPEACEONEARTHSANTAELFGOODWILLTOWARDSMENELFELFQ
HOHOHOELFHOHOHOJOYNORTHPOLEHOHOHOCHRISTMASQ???????4GOODWILLTOWARDSMENELFELF
NORTHPOLECHRISTMASQQWELFWELFWPEACEONEARTHQQ.......]HOHOHOCHRISTMASQWELFELFQ
JOYJOYGOODWILLTOWARDSMENSANTAELFQWNORTHPOLE.......]PEACEONEARTHCHRISTMASJOY
JOYELFCHRISTMASELFHOHOHOPEACEONEARTHJOYJOYQ.......]GOODWILLTOWARDSMENHOHOHO
NORTHPOLESANTAELFQQWGOODWILLTOWARDSMENELFQQ.......]CHRISTMASCHRISTMASJOYQWQ
HOHOHOSANTAELFNORTHPOLEPEACEONEARTHELFQWELF.......]SANTAHOHOHOELFSANTAELFQQ
HOHOHOSANTAPEACEONEARTHELFWJOYWSANTAQWELFQQ.......]NORTHPOLENORTHPOLEWELFQQ
SANTAHOHOHOELFELFNORTHPOLENORTHPOLEWELFJOYQ.......]GOODWILLTOWARDSMENSANTAQ
GOODWILLTOWARDSMENHOHOHOWGOODWILLTOWARDSMEN.......]SANTASANTAHOHOHOQWHOHOHO
SANTANORTHPOLESANTAWGOODWILLTOWARDSMENELFQQ.......]CHRISTMASPEACEONEARTHJOY
ELFHOHOHONORTHPOLEP????????????????????????.......]CHRISTMASSANTAQQWJOYELFQ
PEACEONEARTHSANTAQf...............................]ELFHOHOHOSANTAELFJOYELFQ
ELFCHRISTMASELFELFf...............................]GOODWILLTOWARDSMENSANTAQ
PEACEONEARTHHOHOHOf...............................]GOODWILLTOWARDSMENJOYJOY
CHRISTMASNORTHPOLEf...............................]HOHOHONORTHPOLEQWJOYELFQ
ELFPEACEONEARTHELFf...............................]GOODWILLTOWARDSMENSANTAQ
JOYJOYELFSANTAELFQf...............................]SANTANORTHPOLEELFSANTAWQ
JOYHOHOHOSANTAJOYQf...............................]PEACEONEARTHNORTHPOLEELF
SANTAELFELFHOHOHOQf...............................]CHRISTMASPEACEONEARTHELF
HOHOHONORTHPOLEELFf...............................]NORTHPOLEHOHOHOJOYWSANTA
PEACEONEARTHELFJOY6aaaaaaaaaaaaaaaaaaaaaaaa.......]PEACEONEARTHHOHOHOSANTAQ
CHRISTMASELFELFJOYQQWWWWWWWWWWWWWWWWWWWWWQQ.......]NORTHPOLENORTHPOLESANTAQ
NORTHPOLECHRISTMASHOHOHONORTHPOLEHOHOHOJOYQ.......]PEACEONEARTHELFQQWHOHOHO
JOYPEACEONEARTHJOYCHRISTMASPEACEONEARTHELFQ.......]NORTHPOLEJOYPEACEONEARTH
NORTHPOLECHRISTMASPEACEONEARTHHOHOHOSANTAQQ.......]PEACEONEARTHCHRISTMASELF
HOHOHOHOHOHONORTHPOLEELFCHRISTMASHOHOHOELFQ.......]HOHOHONORTHPOLEELFSANTAQ
NORTHPOLEJOYHOHOHOQQWPEACEONEARTHCHRISTMASQ.......]ELFHOHOHOELFSANTAJOYQQWQ
ELFJOYJOYJOYNORTHPOLEJOYPEACEONEARTHSANTAQQ.......]CHRISTMASELFELFQQWHOHOHO
SANTASANTACHRISTMASNORTHPOLENORTHPOLEELFJOY.......]PEACEONEARTHPEACEONEARTH
ELFPEACEONEARTHJOYQWJOYJOYSANTAHOHOHOJOYELF.......]GOODWILLTOWARDSMENJOYQWQ
JOYCHRISTMASJOYCHRISTMASJOYWNORTHPOLEJOYJOYaaaaaaajCHRISTMASPEACEONEARTHJOY
PEACEONEARTHCHRISTMASPEACEONEARTHWELFWSANTAWWWWWWCHRISTMASJOYNORTHPOLEJOYQQ
SANTACHRISTMASSANTAELFJOYQWNORTHPOLEELFSANTAELFQQP]NORTHPOLESANTAJOYWJOYWQQ
ELFJOYCHRISTMASNORTHPOLEWPEACEONEARTHNORTHPOLEQ@^.]HOHOHOHOHOHOELFCHRISTMAS
HOHOHOELFSANTASANTAWNORTHPOLENORTHPOLEJOYQWELFP`..]CHRISTMASPEACEONEARTHJOY
CHRISTMASJOYPEACEONEARTHJOYSANTAQWCHRISTMASQ@"....]JOYGOODWILLTOWARDSMENJOY
GOODWILLTOWARDSMENJOYJOYWHOHOHOHOHOHOQQWELFP`.....]GOODWILLTOWARDSMENELFELF
ELFSANTAHOHOHOGOODWILLTOWARDSMENCHRISTMASW".......]PEACEONEARTHELFQQWELFWQQ
GOODWILLTOWARDSMENNORTHPOLEPEACEONEARTHQP`........]GOODWILLTOWARDSMENSANTAQ
CHRISTMASHOHOHOELFQWJOYWSANTAJOYWELFQQW"..........]GOODWILLTOWARDSMENELFELF
JOYHOHOHOGOODWILLTOWARDSMENHOHOHOELFQP`...........]NORTHPOLENORTHPOLEHOHOHO
PEACEONEARTHGOODWILLTOWARDSMENWJOYQW".............]HOHOHOHOHOHONORTHPOLEJOY
ELFPEACEONEARTHJOYCHRISTMASHOHOHOQP`..............]PEACEONEARTHSANTAWELFWQQ
NORTHPOLEHOHOHOJOYELFSANTAQQWJOYW!................yPEACEONEARTHCHRISTMASELF
CHRISTMASELFELFJOYP?????????????`...............sPEACEONEARTHJOYJOYSANTAELF
JOYHOHOHOELFHOHOHOf..........................._mWQWNORTHPOLECHRISTMASHOHOHO
GOODWILLTOWARDSMENf..........................jCHRISTMASNORTHPOLESANTAJOYJOY
NORTHPOLEHOHOHOELFf........................_JOYPEACEONEARTHELFJOYJOYWJOYWQQ
GOODWILLTOWARDSMENf......................_yGOODWILLTOWARDSMENCHRISTMASELFQQ
NORTHPOLENORTHPOLEf.....................:GOODWILLTOWARDSMENSANTASANTAELFJOY
ELFNORTHPOLEJOYJOYf......................-9NORTHPOLEPEACEONEARTHCHRISTMASQQ
NORTHPOLEELFSANTAQf........................?WGOODWILLTOWARDSMENHOHOHOSANTAQ
GOODWILLTOWARDSMENf..........................4WJOYPEACEONEARTHHOHOHOWELFWQQ
PEACEONEARTHSANTAQf...........................-$SANTACHRISTMASHOHOHOELFJOYQ
HOHOHOELFJOYJOYJOY6aaaaaaaaaaaaa,...............?WWPEACEONEARTHPEACEONEARTH
JOYELFHOHOHOJOYSANTAWWWWWWWWWWWQQc...............-4NORTHPOLEHOHOHOQWJOYELFQ
NORTHPOLEGOODWILLTOWARDSMENSANTAWWg,..............]GOODWILLTOWARDSMENSANTAQ
NORTHPOLEHOHOHOELFHOHOHOCHRISTMASELFc.............]HOHOHOELFSANTAWCHRISTMAS
PEACEONEARTHJOYJOYNORTHPOLESANTAJOYWWg,...........]GOODWILLTOWARDSMENJOYQWQ
ELFHOHOHOELFHOHOHOCHRISTMASCHRISTMASJOYc..........]HOHOHOJOYELFQWCHRISTMASQ
PEACEONEARTHSANTAJOYWCHRISTMASJOYSANTAWWw,........]PEACEONEARTHHOHOHOELFELF
CHRISTMASJOYPEACEONEARTHSANTAPEACEONEARTHQc.......]PEACEONEARTHSANTAELFQWQQ
NORTHPOLEPEACEONEARTHJOYNORTHPOLEJOYELFQQWWw......]PEACEONEARTHWHOHOHOJOYQQ
GOODWILLTOWARDSMENQWHOHOHOQWNORTHPOLEELFELFQQ/....]PEACEONEARTHNORTHPOLEJOY
ELFGOODWILLTOWARDSMENCHRISTMASJOYWJOYWSANTAJOYg...]SANTASANTAHOHOHOJOYQWJOY
NORTHPOLEPEACEONEARTHGOODWILLTOWARDSMENELFELFQWQ,.]PEACEONEARTHNORTHPOLEJOY
CHRISTMASCHRISTMASJOYSANTAWGOODWILLTOWARDSMENQQWQwjPEACEONEARTHSANTAQWJOYQQ
ELFPEACEONEARTHJOYJOYJOYWSANTAQQWPEACEONEARTHCHRISTMASGOODWILLTOWARDSMENJOY
CHRISTMASJOYJOYJOYQWGOODWILLTOWARDSMENSANTAQQWGOODWILLTOWARDSMENJOYWHOHOHOQ
PEACEONEARTHSANTACHRISTMASSANTAELFELFQQWJOYWGOODWILLTOWARDSMENHOHOHOHOHOHOQ
PEACEONEARTHELFELFSANTAQWJOYNORTHPOLEPEACEONEARTHELFSANTAHOHOHOPEACEONEARTH
NORTHPOLECHRISTMASELFNORTHPOLEELFJOYQWCHRISTMASGOODWILLTOWARDSMENNORTHPOLEQ
JOYJOYSANTAJOYSANTACHRISTMASJOYQWPEACEONEARTHNORTHPOLECHRISTMASJOYHOHOHOELF
JOYPEACEONEARTHELFQWELFWCHRISTMASSANTASANTANORTHPOLEQWPEACEONEARTHJOYWJOYWQ
```

This allows us to answer the first question: BUGBOUNTY.

Next, it is time to take a first step outside (through the weird looking sack).

![A first look outside](screens/outside-first-time.png)

The next question is about a ZIP file. So in order to make progress, we started
to walk around and literally speak to anybody there is.

First, we talked to Holly Evergreen. She said something about missing pieces that
fell of Santa's sleigh, that we need to talk to the Oracle, and that basically
all of Santa's bug bounty elves are on SantaGram.

Heading towards the left, you will find Sparkle Redberry.

![Sparkle Redberry](screens/sparkle-1.png)

He tells you about the NetWars challenge coins. To gather all of them is a new
quest which you receive from him. Since they do not contribute to the answering
of the questions, we will omit these coins for the rest of the write-up.

If you cross the bridge to the north (and keep going north a bit), you will run
into Wunorse Openslae.

![Wunorse Openslae](screens/wunorse-openslae-1.png)

She mentions that Santa's sleigh is managed by a SCADA interface, for which you
need a Cranberry Pi with a Cranbian Linux. You get a link to a [SANS website](https://pen-testing.sans.org/blog/2016/12/07/mount-a-raspberry-pi-file-system-image)
which details how to mount a raspberry pi image. As of SantaGram, you get the intel
that it is popular, and a hashtag: `#elflife!`.

If you back off to the bridge again, and then go to the right, you will be able
to enter `Elf House #2`.

![Elf House #2 Outside](screens/elf-house-2.png)

Enter it, go up the stairs and through the doorway, and you will find yourself
in this room.

![Elf House #2 Inside Second Room](screens/heatsink-location.png)

On the left of the position of my avatar, there lies a heatsink. Go collect it.
We will need it later on to assemble our Cranberry Pi.

Next, head over all the way to the left until you reach this house.

![Elf House #1 Outside](screens/elf-house-1.png)

Enter it. Then talk to Sugarplum Mary.

![Sugarplum Mary](screens/sugarplum-mary-1.png)

She is a PHP developer (and apparently loves it). You will get a link to another
[SANS website](https://pen-testing.sans.org/blog/2016/12/07/getting-moar-value-out-of-php-local-file-include-vulnerabilities)
which is about PHP local file inclusion vulnerabilities.

Besides PHP stuff, there is also a secret in this room. You can just walk through
the fireplace and enter a small chamber. There you will find the Cranberry PI board.

![Cranberry Pi Board Location](screens/pi-board-location.png)

Heading back all the way to the right, you will find the big tree.

![The Big Tree](screens/the-big-tree-1.png)

Inside, you will find Tom Hessman who apparently is an oracle.

![Tom Hessman](screens/tom-hessman-1.png)

He offers you to tell you whether a certain IP address is in scope or not. I guess this is a safety net so that SANS cannot be blamed for people going crazy with offensive security while blaming the SANS holiday hack challenge :D

If we go further north, there is a snow man. He holds a power cord, which we can collect.

![Snow man power cord](screens/power-cord-location.png)

Up the three, you will enter the NetWars room.

![NetWars](screens/netwars-1.png)

You can leave it on the right side. Follow the path and enter the next house.

![Small Tree House](screens/small-tree-house-1.png)

Minty Candycane is the NPC. She talks about tools such as NMAP, John the Ripper
and also provides a link to the [RockYou dictionary](https://wiki.skullsecurity.org/index.php?title=Passwords).

Exit the house again and continue to follow the path. You will go up all the way
to the top of a mountain.

![Bushy Evergreen](screens/bushy-evergreen-1.png)

Talk to Bushy Evergreen on the right. He will provide you with two links regarding Android hacking ([here](https://ibotpeaches.github.io/Apktool/) and [here](https://www.youtube.com/watch?v=mo2yZVRicW0)).

Head over to the left and collect the SD card.

![SD card](screens/sd-card-location.png)

Enter the house, go to the top left corner, and collect the HDMI cable.

![HDMI cable](screens/hdmi-cable-location.png)

Go back to the center of the room and talk to Pepper Minstix.

![Pepper Minstix](screens/pepper-minstix-1.png)

He will provide with links to [Meteor](https://www.meteor.com/), [SANS training on hacking Meteor](https://pen-testing.sans.org/blog/2016/12/06/mining-meteor), [a tool called MetorMiner](https://github.com/nidem/MeteorMiner) and to [TamperMonkey](https://tampermonkey.net/).

Enter the room on the right.

![Shinny Upatree](screens/shinny-upatree-1.png)

You cannot interact with the train (as it requires a Cranberry Pi). Talking to Shinny Upatree in the room gives you a link to a [.pptx](http://www.willhackforsushi.com/presentations/gitd-hackfest.pptx) file.

At this point, we decided that we did enough reconnaissance (by actually walking around and talking to NPCs). Let's get back to the very first intel that we gathered. We checked the Twitter account, but we omitted the Instagram account. Let's to that now.

![Instagram Santawclaus](screens/instagram-santawclaus-1.png)

If you look closely on the left most image, you will get two important pieces of intel:
1. The name `www.northpolewonderland.com` which is printed on the sheet of paper that show the NMAP scan result.
2. The file name `SantaGram_v4.2.zip`

If you browse to http://www.northpolewonderland.com/, you will see Santa's business card again. If you browse to http://www.northpolewonderland.com/SantaGram_v4.2.zip, you can actually download a file.

We first check what type of file we got:

```
file SantaGram_v4.2.zip
SantaGram_v4.2.zip: Zip archive data, at least v2.0 to extract
```

So it seems to be a `ZIP` file indeed. However, it has a password on it.

```
unzip SantaGram_v4.2.zip
Archive:  SantaGram_v4.2.zip
[SantaGram_v4.2.zip] SantaGram_4.2.apk password:
```

Using the secret message from the tweets as password gives us the content. To be fair, at first I went down a completely different road. I tried to break the ZIP password with John the Ripper. We already got a hint to the [RockYou dictionary](https://wiki.skullsecurity.org/index.php?title=Passwords). In order to get a hash out of the ZIP file that we can crack, Google let us to http://www.cybercrimetech.com/2014/07/how-to-cracking-zip-and-rar-protected.html. Using `zip2john`, I got the following hash.

```
SantaGram_v4.2.zip:$pkzip2$1*2*3*0*1df34a*2271ee*ede16a54*0*4b*8*12*ede1*45ec*SantaGram_v4.2.zip*$/pkzip2$:::::SantaGram_v4.2.zip
```

Unfortunately, just throwing john and the rockyou wordlist on the hash did not yield any results. But just calling `john hashfile` did the trick. It took approximately 20minutes on my MacBook Pro to complete.

But be it as it may - directly using the password from the tweets was likely the intended way to do things :)

Digging further, we can now have a deeper look at the `apk` file. Earlier, Bushy Evergreen mentioned `apktool`. Let's give it a try.

```
apktool d SantaGram_4.2.apk
```

This gives us the extracted contents of the file in the folder `SantaGram_4.2`. The next two questions are about contents of the APK file (username/password and the name of the audible component). By browsing the directory structure, we soon found the file `res/raw/discombobulatedaudio1.mp3`. Which seems to be the answer to question 4.

Now for the username and password. We suspected them to be in the code (rather than hidden in some other resources). So we navigated to the folder that contains the `smali` files. We even further navigated to the folder that I guess represents the Java classes that are in the `com.northpolewonderland.santagram` Java package. After that, `grep` did the trick.

In `SantaGram_4.2/smali/com/northpolewonderland/santagram`:
```
grep -C3 -rin "password" .
./b.smali-414-
./b.smali-415-    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
./b.smali-416-
./b.smali:417:    const-string v1, "password"
./b.smali-418-
./b.smali-419-    const-string v2, "busyreindeer78"
./b.smali-420-
--
[...]
```

Inspecting the file, we get the next flag: `username=guest`, `password=busyreindeer78`.

### 1) What is the secret message in Santa's tweets?

BUGBOUNTY

### 2) What is inside the ZIP file distributed by Santa's team?

A file named `SantaGram_4.2.apk`.

## Part 2: Awesome Package Konveyance

### 3) What username and password are embedded in the APK file?

```
username=guest
password=busyreindeer78
```

### 4) What is the name of the audible component (audio file) in the SantaGram APK file?

`discombobulatedaudio1.mp3`

## Part 3: A Fresh-Baked Holiday Pi

### 5) What is the password for the "cranpi" account on the Cranberry Pi system?

### 6) How did you open each terminal door and where had the villain imprisoned Santa?

## Part 4: My Gosh... It's Full of Holes

### 7) ONCE YOU GET APPROVAL OF GIVEN IN-SCOPE TARGET IP ADDRESSES FROM TOM HESSMAN AT THE NORTH POLE, ATTEMPT TO REMOTELY EXPLOIT EACH OF THE FOLLOWING TARGETS:

The Mobile Analytics Server (via credentialed login access)
The Dungeon Game
The Debug Server
The Banner Ad Server
The Uncaught Exception Handler Server
The Mobile Analytics Server (post authentication)
For each of those six items, which vulnerabilities did you discover and exploit?

REMEMBER, YOU ARE AUTHORIZED TO ATTACK ONLY THE IP ADDRESSES THAT TOM HESSMAN IN THE NORTH POLE EXPLICITLY ACKNOWLEDGES AS "IN SCOPE." ATTACK NO OTHER SYSTEMS ASSOCIATED WITH THE HOLIDAY HACK CHALLENGE.

### 8) What are the names of the audio files you discovered from each system above? There are a total of SEVEN audio files (one from the original APK in Question 4, plus one for each of the six items in the bullet list above.)

Please note: Although each system is remotely exploitable, we DO NOT expect every participant to compromise every element of the SantaGram infrastructure. Gain access to the ones you can. Although we will give special consideration to entries that successfully compromise all six vulnerabilities and retrieve their audio files, we happily accept partial answers and point out that they too are eligible for any of the prizes.
