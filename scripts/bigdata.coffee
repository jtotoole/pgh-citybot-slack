# Description:
#   We love big data.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   big data - see some big f'ing data

big_data_images = ['http://41.media.tumblr.com/7824350d28e0a481f3720850a76ddd39/tumblr_nfccduss521td9006o1_500.jpg', 'http://36.media.tumblr.com/e30f99cfbff589b2b85104060c7764e9/tumblr_nfcalwKDXi1td9006o1_500.jpg', 'http://41.media.tumblr.com/a353f42b440d7394f09a00eb1035a89a/tumblr_nfcac4h3Xv1td9006o1_500.jpg', 'http://40.media.tumblr.com/363928b7102b00f952aeacfb81e4e19d/tumblr_na7b6l5xSC1td9006o1_500.jpg', 'http://40.media.tumblr.com/7b57c6752cd0275899448e8591b905ca/tumblr_na7b2lPl0e1td9006o1_500.jpg', 'http://36.media.tumblr.com/1fa4ca2d50277b4fec7b8cefd38005ba/tumblr_na7b3xtP8p1td9006o1_500.jpg', 'http://41.media.tumblr.com/7b2b5be9520a1f7a5deebc49a78bc5ce/tumblr_n6ck5rrrBy1td9006o1_500.jpg', 'http://40.media.tumblr.com/aa754a1dc3918af9402d91c2ed76f2cb/tumblr_n6ck1qOY8A1td9006o1_400.jpg', 'http://41.media.tumblr.com/3d0477bad4077debabcdbf29a2df3670/tumblr_n6cjvqfzgr1td9006o1_500.jpg', 'http://40.media.tumblr.com/d99fd5905ec284b5a0096446aa50d1a4/tumblr_n6cjtwYJvV1td9006o1_500.jpg', 'http://40.media.tumblr.com/499cb8762d919197755b029278fac251/tumblr_n6cjrvKXx71td9006o1_500.jpg', 'http://36.media.tumblr.com/63799615fc715a403a2ea827644d4e01/tumblr_n6cjqlMyzS1td9006o1_500.jpg', 'http://40.media.tumblr.com/c7484fb9fc62ecd96c914f640e00ab25/tumblr_n6cjp0ysXF1td9006o1_500.jpg', 'http://41.media.tumblr.com/afcc791c0b5ed3f9545bd40fb0276041/tumblr_n6cjmbDk3o1td9006o1_500.jpg', 'https://68.media.tumblr.com/1fa4ca2d50277b4fec7b8cefd38005ba/tumblr_na7b3xtP8p1td9006o1_500.jpg', 'https://68.media.tumblr.com/fc8a97b7267066923374298c3ae48aab/tumblr_n6ckbeQeF21td9006o1_1280.png']

data_lake_images = ['https://d1.awsstatic.com/Data%20Lake/320x320-what-is-a-data-lake.b32634fa96e91bb5670b885be9428a2c0c40c76d.png', 'https://www.datamation.com/imagesvr_ce/701/Data%20Lakes.jpg', 'https://solutionsreview.com/data-management/files/2016/09/oie_21193056axbflFKu.jpg', 'http://www.bankingexchange.com/media/k2/items/cache/1f5a0760a7a260c2ce2985c8250616f9_M.jpg', 'http://staffingtalk.com/static/upload/2014/01/22/486large.jpg']

shuffle = (a) ->
  for i in [a.length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [a[i], a[j]] = [a[j], a[i]]
  a

module.exports = (robot) ->

  robot.hear new RegExp("(^|\\W)big data(\\z|\\W|$)", 'i'), (msg) ->
    msg.send shuffle(big_data_images)[1]
  
  robot.hear new RegExp("(^|\\W)data lakes?(\\z|\\W|$)", 'i'), (msg) ->
    msg.send shuffle(data_lake_images)[1]
    