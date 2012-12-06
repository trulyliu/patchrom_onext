.class public Lcom/htc/music/online/sinamusic/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNTPACKAGENAME:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final ACCOUNTTYPE:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final FEATURENAME:Ljava/lang/String; = "SupportGallery"

.field public static final HTTPADDTOFAVOURITE:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/song_collect.php"

.field public static final HTTPDELFROMFAVOURITE:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/song_collect_del.php"

.field public static final HTTPFRIENDSONGLIST:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/get_fr_songlist.php"

.field public static final HTTPGETSELFSONGLIST:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/get_my_songlist.php"

.field public static final HTTPGETSONGDETAIL:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/get_song_info.php"

.field public static final HTTPMUSICCATGORY:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/music_online.php"

.field public static final HTTPRECOMMENDSONG:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/get_wpp_songs.php"

.field public static final HTTPSEARCHSONG:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/search.php"

.field public static final HTTPSELFFAVOURITESONG:Ljava/lang/String; = "http://music.weibo.com/yueku/cooperate/htc/user_collect_songs.php"

.field public static final HTTPUPLOADPLAYLOG:Ljava/lang/String; = "http://music.sina.com.cn/yueku/port/sap_playlog.php"

.field public static final MALBUM:Ljava/lang/String; = "album"

.field public static final MCOFLAG:Ljava/lang/String; = "coFlag"

.field public static final MCONUM:I = 0x49417

.field public static final MID:Ljava/lang/String; = "id"

.field public static final MKEY:Ljava/lang/String; = "key"

.field public static final MLIMIT:Ljava/lang/String; = "limit"

.field public static final MNAME:Ljava/lang/String; = "name"

.field public static final MNUM:Ljava/lang/String; = "num"

.field public static final MOWNERID:Ljava/lang/String; = "ownerId"

.field public static final MPAGE:Ljava/lang/String; = "page"

.field public static final MPLAYLENGH:Ljava/lang/String; = "playlength"

.field public static final MSONG:Ljava/lang/String; = "song"

.field public static final MSONGID:Ljava/lang/String; = "songid"

.field public static final MSTART:Ljava/lang/String; = "start"

.field public static final MTOTALLENGH:Ljava/lang/String; = "totallength"

.field public static final MTYPE:Ljava/lang/String; = "type"

.field public static final OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field public static final OAUTH_TOKEN_SECRET:Ljava/lang/String; = "oauth_token_secret"

.field public static final SINA_SERVICE_OUTOFREGION:Ljava/lang/String; = "-101"

.field public static iflogin:Z

.field public static mHasMore:Z

.field public static mRequestPosition:I

.field public static old_account_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/htc/music/online/sinamusic/Constants;->mRequestPosition:I

    .line 55
    sput-boolean v0, Lcom/htc/music/online/sinamusic/Constants;->mHasMore:Z

    .line 56
    sput-boolean v0, Lcom/htc/music/online/sinamusic/Constants;->iflogin:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/online/sinamusic/Constants;->old_account_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
