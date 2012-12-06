.class public Lcom/htc/music/online/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final CURRENT_CUSTOMIZATION_TYPE:I = 0x1

.field public static final CUSTOMIZATION_TYPE_NONE:I = 0x1

.field public static final CUSTOMIZATION_TYPE_SINA:I = 0x2

.field public static final KEY_FAVORITE_SONG:Ljava/lang/String; = "favorite_song"

.field public static final KEY_IS_NEED_ASYNC_LOADING:Ljava/lang/String; = "need_async_loading"

.field public static final KEY_RELATED_WEIBO:Ljava/lang/String; = "related_weibo"

.field public static final KEY_SHARE_ALBUM:Ljava/lang/String; = "music.intent.extra.album"

.field public static final KEY_SHARE_ARTIST:Ljava/lang/String; = "music.intent.extra.artist"

.field public static final KEY_SHARE_IMAGE:Ljava/lang/String; = "music.intent.extra.image"

.field public static final KEY_SHARE_IS_COLLECTION:Ljava/lang/String; = "music.intent.extra.is_collection"

.field public static final KEY_SHARE_REAL_URL:Ljava/lang/String; = "music.intent.extra.real_url"

.field public static final KEY_SHARE_TRACK:Ljava/lang/String; = "music.intent.extra.track"

.field public static final KEY_SHARE_URL:Ljava/lang/String; = "music.intent.extra.share_url"

.field public static final KEY_SONGLIST_URL:Ljava/lang/String; = "songlist_url"

.field public static final KEY_SONG_DETAIL:Ljava/lang/String; = "song_detail"

.field public static final KEY_SONG_ID:Ljava/lang/String; = "song_id"

.field public static final KEY_USE_COMMON_TEXT:Ljava/lang/String; = "use_common_text"

.field private static final NETWORK_3GWAP:Ljava/lang/String; = "3gwap"

.field public static SINA_TEST_CUSTOMIZATION_FLAG:Z = false

.field public static SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = null

.field public static SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "[Util]"

.field public static TEST_FAVORITE_FEATURE_FLAG:Z

.field private static loadingDialog:Lcom/htc/app/HtcProgressDialog;

.field private static querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/online/Util;->SINA_TEST_CUSTOMIZATION_FLAG:Z

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    .line 67
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    sput-object v0, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    .line 68
    const-string v0, "com.htc.friendstream.sinaweiboplugin.share.SSnsShare"

    sput-object v0, Lcom/htc/music/online/Util;->SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/htc/music/online/Util$1;

    invoke-direct {v0}, Lcom/htc/music/online/Util$1;-><init>()V

    sput-object v0, Lcom/htc/music/online/Util;->querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p0

    .line 104
    check-cast v0, Landroid/app/Activity;

    .line 105
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 106
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 107
    .local v1, noNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 115
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #noNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return-object v1

    .line 112
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    const-string v2, "[Util]"

    const-string v3, "[checkNetworkAvailable] activity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBundleFromSongDetail(Lcom/htc/music/online/sinamusic/WrapperSongDetail;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 9
    .parameter "songDetail"
    .parameter "context"

    .prologue
    .line 293
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v1, shareMusicBundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongId()I

    move-result v4

    .line 297
    .local v4, songId:I
    const-string v7, "song_id"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongName()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, songName:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 301
    const-string v7, "music.intent.extra.track"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSingerName()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, singerName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 307
    const-string v7, "music.intent.extra.artist"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongImage()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, songImage:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 314
    const-string v7, "music.intent.extra.image"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongDetailUrl()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, songDetailUrl:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 320
    const-string v7, "music.intent.extra.share_url"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, albmumName:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 326
    const-string v7, "music.intent.extra.album"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0           #albmumName:Ljava/lang/String;
    .end local v2           #singerName:Ljava/lang/String;
    .end local v3           #songDetailUrl:Ljava/lang/String;
    .end local v4           #songId:I
    .end local v5           #songImage:Ljava/lang/String;
    .end local v6           #songName:Ljava/lang/String;
    :cond_0
    :goto_4
    return-object v1

    .line 303
    .restart local v4       #songId:I
    .restart local v6       #songName:Ljava/lang/String;
    :cond_1
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .restart local v2       #singerName:Ljava/lang/String;
    :cond_2
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] singerName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v7, "music.intent.extra.artist"

    const v8, 0x7f06003d

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .restart local v5       #songImage:Ljava/lang/String;
    :cond_3
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songImage is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 322
    .restart local v3       #songDetailUrl:Ljava/lang/String;
    :cond_4
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] songDetailUrl is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 328
    .restart local v0       #albmumName:Ljava/lang/String;
    :cond_5
    const-string v7, "[Util]"

    const-string v8, "[shareMusicInfo] albmumName is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v7, "music.intent.extra.album"

    const v8, 0x7f06003e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static getBundleFromSongListDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Landroid/os/Bundle;
    .locals 7
    .parameter "songlistDetail"

    .prologue
    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, shareMusicBundle:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 345
    const-string v5, "music.intent.extra.is_collection"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistName()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, songName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 349
    const-string v5, "music.intent.extra.track"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistOwnerName()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, singerName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 356
    const-string v5, "music.intent.extra.artist"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistPhoto()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, songImage:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 363
    const-string v5, "music.intent.extra.image"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistDetailUrl()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, songDetailUrl:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 370
    const-string v5, "music.intent.extra.share_url"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v1           #singerName:Ljava/lang/String;
    .end local v2           #songDetailUrl:Ljava/lang/String;
    .end local v3           #songImage:Ljava/lang/String;
    .end local v4           #songName:Ljava/lang/String;
    :cond_0
    :goto_3
    return-object v0

    .line 351
    .restart local v4       #songName:Ljava/lang/String;
    :cond_1
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .restart local v1       #singerName:Ljava/lang/String;
    :cond_2
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] singerName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    .restart local v3       #songImage:Ljava/lang/String;
    :cond_3
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songImage is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 372
    .restart local v2       #songDetailUrl:Ljava/lang/String;
    :cond_4
    const-string v5, "[Util]"

    const-string v6, "[shareMusicInfo] songDetailUrl is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 380
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 383
    return-object v0
.end method

.method public static getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 5
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"
    .parameter "albumid"
    .parameter "artpath"
    .parameter "context"

    .prologue
    .line 424
    const-string v0, ""

    .line 425
    .local v0, DetailUrl:Ljava/lang/String;
    const-string v1, ""

    .line 426
    .local v1, ShareUrl:Ljava/lang/String;
    const-string v2, ""

    .line 427
    .local v2, onlineArtpath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 428
    .local v4, songid:I
    new-instance v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct {v3}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 429
    .local v3, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-virtual {v3, p0}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3, p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumName(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3, p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v3, p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v3, v2}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v3, v0}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v3, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v3, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 437
    return-object v3
.end method

.method public static gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V
    .locals 6
    .parameter "activity"
    .parameter "song"

    .prologue
    .line 387
    if-nez p0, :cond_0

    .line 388
    const-string v3, "[Util]"

    const-string v4, "[gotoRelatedWeibo] activity cannot be null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 391
    :cond_0
    if-nez p1, :cond_1

    .line 392
    const-string v3, "[Util]"

    const-string v4, "[gotoRelatedWeibo] song cannot be null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 397
    .local v2, manager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_2

    .line 399
    :try_start_0
    sget-object v3, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 400
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mfsinaweibo://weibosquare/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, -0x2

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 406
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v3, "[Util]"

    const-string v4, "[gotoRelatedWeibo] manager cannot be null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    const-string v3, "[Util]"

    const-string v4, "[gotoShareToSinaWeibo], context is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v2, shareIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v3, "android.intent.category.HTC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 281
    sget-object v3, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/htc/music/online/Util;->SINA_WEIBO_SHARE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 284
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 285
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v3, "[Util]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no activity found to match the intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleSnsException(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 2
    .parameter "context"
    .parameter "e"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 241
    sget-object v0, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 242
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local p0
    :pswitch_0
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Network error, please check network connection"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 249
    .restart local p0
    :pswitch_1
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Data error, please retry later"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_2
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Added failed, please retry"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_3
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Invalid parameter, please re-entery this page"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_4
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Friendstream error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :pswitch_5
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException]Token error, please re-login"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :pswitch_6
    const-string v0, "[Util]"

    const-string v1, "[handleSnsException] No Match Data,return is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 72
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 74
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 75
    .local v3, mWifi:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 76
    .local v2, mMobile:Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 77
    .local v0, flag:Z
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    :cond_1
    const/4 v0, 0x1

    .line 84
    :cond_2
    return v0
.end method

.method public static isSinaWeiboClientExists(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 411
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "mfsinaweibo://weibosquare/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 414
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const/4 v3, 0x1

    .line 418
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 9
    .parameter "activity"
    .parameter "intent"
    .parameter "bundle"

    .prologue
    const v8, 0x204026b

    .line 119
    if-nez p2, :cond_0

    .line 120
    const-string v6, "[Util]"

    const-string v7, "[shareMusicInfoToSinaWeibo] bundler is null!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 123
    :cond_0
    if-nez p0, :cond_1

    .line 124
    const-string v6, "[Util]"

    const-string v7, "[shareMusicInfoToSinaWeibo] activity is null!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    const-string v6, "use_common_text"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 130
    .local v3, isLocalMusic:Z
    if-eqz v3, :cond_3

    .line 133
    const-string v6, "music.intent.extra.track"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, songName:Ljava/lang/String;
    const-string v6, "music.intent.extra.artist"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, singerName:Ljava/lang/String;
    const-string v6, "music.intent.extra.album"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, albumName:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 139
    const-string v6, "TAG"

    const-string v7, "start query song !!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v2, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    invoke-direct {v2, p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 141
    .local v2, asyncQuerySong:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    sput-object v6, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 142
    sget-object v6, Lcom/htc/music/online/Util;->querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    invoke-virtual {v2, v5, v4, v6}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->startQuerySong(Ljava/lang/String;Ljava/lang/String;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V

    goto :goto_0

    .line 146
    .end local v2           #asyncQuerySong:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    :cond_2
    const-string v6, "TAG"

    const-string v7, "start query album !!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;

    invoke-direct {v1, p0, p1}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    .local v1, asyncQueryAlbum:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v6

    sput-object v6, Lcom/htc/music/online/Util;->loadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 149
    sget-object v6, Lcom/htc/music/online/Util;->querylOnlineListener:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;

    invoke-virtual {v1, v0, v4, v6}, Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;->startQueryAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;)V

    goto :goto_0

    .line 155
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #asyncQueryAlbum:Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong;
    .end local v4           #singerName:Ljava/lang/String;
    .end local v5           #songName:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p2}, Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
