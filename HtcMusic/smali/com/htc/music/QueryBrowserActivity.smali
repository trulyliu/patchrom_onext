.class public Lcom/htc/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_QUERYBROWSER_ACTIVITY:Ljava/lang/String; = "com.htc.music.query_browser_activity"

.field private static final ADD_TO_QUEUE:I = 0x1

.field private static final EXPLORE_ALBUM:I = 0x6

.field private static final EXPLORE_ARTIST:I = 0x4

.field private static final PLAY_ALBUM:I = 0x5

.field private static final PLAY_ARTIST:I = 0x3

.field private static final PLAY_NEXT:I = 0x2

.field private static final PLAY_NOW:I = 0x0

.field private static final REQUERY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[QueryBrowserActivity]"


# instance fields
.field private mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 347
    new-instance v0, Lcom/htc/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/QueryBrowserActivity$1;-><init>(Lcom/htc/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v0, Lcom/htc/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/QueryBrowserActivity$2;-><init>(Lcom/htc/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 626
    iput-object v1, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 628
    iput-object v1, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/QueryBrowserActivity;)Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 444
    if-nez p2, :cond_0

    .line 445
    const-string p2, ""

    .line 447
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "artist"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "title"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "data1"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "data2"

    aput-object v5, v4, v0

    .line 457
    .local v4, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 460
    .local v3, search:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 461
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 462
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return-object v11

    :cond_1
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 464
    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method private startActivityByIntent(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const-string v5, "[QueryBrowserActivity]"

    const-string v6, "startActivityByIntent"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-nez p1, :cond_1

    .line 145
    const-string v4, "[QueryBrowserActivity]"

    const-string v5, "startActivityByIntent : intent = null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return v3

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.music.BROWSE_VIEWER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v2, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-class v3, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v2}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    move v3, v4

    .line 157
    goto :goto_0

    .line 192
    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    const-string v5, "com.htc.music.query_browser_activity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    const-string v3, "albumid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, albumId:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v2       #i:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/albumtrack"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v3, "albumid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v2}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    move v3, v4

    .line 201
    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 387
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 388
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 390
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 373
    :pswitch_0
    if-nez p2, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 103
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->startActivityByIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "startActivityByIntent success"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 320
    const-string v2, "[QueryBrowserActivity]"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 334
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 335
    iget-boolean v2, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 341
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "QueryBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy, fail to unregisterReceiver(mScanListener), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 403
    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 404
    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v4, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v6, "mime_type"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, selectedType:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/album"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v4, "artistid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v1}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 415
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v4, "album"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, albumId:Ljava/lang/String;
    const-string v4, "[QueryBrowserActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to launch album detail view. albumId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/albumtrack"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v4, "albumid"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v1}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    .end local v0           #albumId:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    if-ltz p3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-ltz v4, :cond_4

    .line 423
    const/4 v4, 0x1

    new-array v2, v4, [I

    long-to-int v4, p4

    aput v4, v2, v7

    .line 424
    .local v2, list:[I
    invoke-static {p0, v2, v7}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[II)I

    goto/16 :goto_0

    .line 426
    .end local v2           #list:[I
    :cond_4
    const-string v4, "QueryBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid position/id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 130
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 133
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/htc/music/QueryBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 432
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 315
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 316
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 307
    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 18
    .parameter "name"
    .parameter "service"

    .prologue
    .line 207
    const-string v1, "[QueryBrowserActivity]"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v11, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v1, "file"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Lcom/htc/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 215
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 219
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, path:Ljava/lang/String;
    const-string v1, "content://media/external/audio/media/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, id:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v15, v1, [I

    const/4 v1, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v15, v1

    .line 224
    .local v15, list:[I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[II)I

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    .line 298
    .end local v13           #id:Ljava/lang/String;
    .end local v15           #list:[I
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v16       #path:Ljava/lang/String;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, "content://media/external/audio/albums/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, albumId:Ljava/lang/String;
    const-string v1, "[QueryBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. albumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v12, i:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "albumid"

    invoke-virtual {v12, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/high16 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 238
    .end local v9           #albumId:Ljava/lang/String;
    .end local v12           #i:Landroid/content/Intent;
    :cond_2
    const-string v1, "content://media/external/audio/artists/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v12       #i:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/album"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "artistid"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/high16 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 248
    .end local v12           #i:Landroid/content/Intent;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_3
    const-string v1, "com.htc.music.query_browser_activity"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    const-string v1, "albumid"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 250
    .restart local v9       #albumId:Ljava/lang/String;
    const-string v1, "[QueryBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. albumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v12       #i:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "albumid"

    invoke-virtual {v12, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 259
    .end local v9           #albumId:Ljava/lang/String;
    .end local v12           #i:Landroid/content/Intent;
    :cond_4
    const-string v1, "query"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 261
    const v1, 0x7f03003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->setContentView(I)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v1, :cond_6

    .line 267
    new-instance v1, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f03003f

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v7, v3, [I

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 278
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_0

    .line 282
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/htc/music/QueryBrowserActivity;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getConstraint()Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, constraint:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1, v10}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .end local v10           #constraint:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 301
    const-string v0, "[QueryBrowserActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method
