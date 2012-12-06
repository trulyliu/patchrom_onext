.class public Lcom/htc/music/carmode/CarTrackBrowseActivity;
.super Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;
.source "CarTrackBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;,
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
    }
.end annotation


# static fields
.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[CarTrackBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mActivityMainTitle:Ljava/lang/String;

.field mActivitySecondaryTitle:Ljava/lang/String;

.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

.field private mAsyncQuerying:Z

.field private mAudioId:I

.field private mCountTemplate:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDescription:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

.field private mMsg:Ljava/lang/String;

.field mPlaybackServiceConnected:Z

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field mStopping:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

.field private preSearchTime:J

.field private prevScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 96
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 104
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->prevScrollState:I

    .line 115
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    .line 196
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 350
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    .line 449
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1149
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    .line 1150
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityMainTitle:Ljava/lang/String;

    .line 1151
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 1153
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1155
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    .line 1156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J

    .line 1157
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 1168
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    .line 1172
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/util/MemoryCacheBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/carmode/CarTrackBrowseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarTrackBrowseActivity;Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAudioId:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/carmode/CarTrackBrowseActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAudioId:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mSelectedPosition:I

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 12
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 467
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 468
    .local v7, status:I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    .line 469
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showDialog(I)V

    .line 499
    :goto_0
    return-void

    .line 470
    :cond_0
    if-nez v7, :cond_3

    .line 471
    const/4 v4, 0x0

    .line 472
    .local v4, msg:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v6, p1, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 473
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 474
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    sget-object v10, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {p0, v9, p2, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/util/MusicUtils$LaunchUI;)I

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    .line 477
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 478
    move v5, p2

    .line 479
    .local v5, pos:I
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showDialog(I)V

    goto :goto_0

    .line 481
    .end local v5           #pos:I
    :cond_2
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    sget-object v10, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {p0, v9, p2, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/util/MusicUtils$LaunchUI;)I

    goto :goto_0

    .line 485
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v4           #msg:Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v3, intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 487
    const-string v9, "drmtargettomain"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 491
    .local v2, id_idx:I
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, trackId:Ljava/lang/String;
    const-string v9, "track"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v2           #id_idx:I
    :goto_1
    const/4 v9, -0x2

    invoke-virtual {p0, v3, v9}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 493
    .end local v8           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 495
    .restart local v8       #trackId:Ljava/lang/String;
    const-string v9, "track"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f06001c

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, fancyName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    :goto_0
    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_0
    return-object v0

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v2, :cond_2

    .line 628
    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 632
    .local v1, iCount:I
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getListSizeTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "iListSize"

    .prologue
    .line 1191
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, szTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1193
    :cond_0
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1195
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "%1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1196
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1200
    :goto_0
    return-object v1

    .line 1199
    :cond_2
    const-string v1, "[CarTrackBrowserActivity]"

    const-string v2, "getListSizeTitle(), Can\'t find String htc_all_tracks_title_counts or htc_all_tracks_title_one!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v1, ""

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 570
    const/4 v8, 0x0

    .line 571
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    .line 572
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const/4 v6, 0x0

    .line 577
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    new-array v6, v2, [Ljava/lang/String;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 593
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_0
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    if-eqz p1, :cond_3

    .line 600
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/AlbumArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const/4 v8, 0x0

    .line 612
    :goto_1
    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p0, v8}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->init(Landroid/database/Cursor;)V

    .line 616
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 618
    :cond_1
    return-object v8

    .end local v6           #keywords:[Ljava/lang/String;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_2
    move v0, v1

    .line 571
    goto :goto_0

    .line 604
    .restart local v6       #keywords:[Ljava/lang/String;
    .restart local v9       #where:Ljava/lang/StringBuilder;
    :cond_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1103
    if-nez p1, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1144
    :goto_0
    return-object v0

    .line 1106
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1107
    goto :goto_0

    .line 1110
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1111
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 1117
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1119
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1120
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1121
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1122
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1126
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1127
    const/4 p1, 0x0

    .line 1128
    const/4 v0, 0x0

    goto :goto_0

    .line 1131
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1133
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1134
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1135
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1136
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1137
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1143
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1144
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 446
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setMainTitle(I)V

    .line 447
    return-void
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 7
    .parameter "newCursor"

    .prologue
    const/4 v5, 0x1

    .line 384
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-nez v3, :cond_1

    .line 385
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_2

    .line 392
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 394
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 395
    .local v0, c:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v3, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 397
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v3, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showDatabaseError()V

    .line 400
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->closeContextMenu()V

    .line 401
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 405
    :cond_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 406
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 407
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    .line 408
    :cond_4
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    const v3, 0x7f06002a

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showEmptyView(I)V

    goto :goto_0

    .line 414
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->hideEmptyErrorView()V

    .line 416
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 417
    .local v2, listView:Landroid/view/View;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_9

    .line 418
    :cond_6
    const v3, 0x7f030031

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setContentView(I)V

    .line 419
    const v3, 0x7f07003b

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 420
    .local v1, listContentLayout:Landroid/view/ViewGroup;
    if-eqz v1, :cond_7

    .line 421
    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 424
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 425
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v3, :cond_8

    .line 426
    const-string v3, "[CarTrackBrowserActivity]"

    const-string v4, "[init] mTrackList = getListView() is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_8
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 430
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 433
    .end local v1           #listContentLayout:Landroid/view/ViewGroup;
    :cond_9
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    .line 435
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 436
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.music.metachanged"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 438
    :cond_b
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 439
    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityMainTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setMainTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 127
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "description"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    .line 129
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCountTemplate:Ljava/lang/String;

    .line 131
    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setVolumeControlStream(I)V

    .line 133
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const-string v1, "_data"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCursorCols:[Ljava/lang/String;

    .line 144
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 147
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "[CarTrackBrowserActivity]"

    const-string v1, "[onCreate] mTrackList = getListView() is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 158
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030013

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/carmode/CarTrackBrowseActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 165
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 167
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 169
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 171
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setSearchHint(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x1040013

    .line 529
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 530
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 531
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 554
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 533
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060054

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/carmode/CarTrackBrowseActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 541
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/carmode/CarTrackBrowseActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 266
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->quit()V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByTime;->clear()V

    .line 278
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 281
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 285
    :cond_2
    const-string v1, "[CarTrackBrowserActivity]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 288
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 503
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v1, 0x1

    const-string v2, "Songs"

    invoke-static {v1, v2}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 511
    iput p3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mSelectedPosition:I

    .line 513
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    sget-object v2, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {p0, v1, p3, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/util/MusicUtils$LaunchUI;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 337
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->clear()V

    .line 339
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    .line 343
    :cond_1
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 344
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 559
    invoke-super {p0, p1, p2}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 560
    packed-switch p1, :pswitch_data_0

    .line 565
    .end local p2
    :goto_0
    return-void

    .line 562
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 309
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 311
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 313
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 322
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showSpinner(Z)V

    .line 325
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 379
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 381
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1095
    move v1, p2

    .line 1096
    .local v1, start:I
    add-int v0, p2, p3

    .line 1097
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->setVisibleRange(II)V

    .line 1100
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1064
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    iget v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->prevScrollState:I

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-static {p2, v0, v1}, Lcom/htc/music/util/ProfilerPerformanceUtils;->profilerCarLibsScrolling(IILcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->prevScrollState:I

    .line 1068
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1091
    :cond_1
    :goto_0
    return-void

    .line 1070
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1077
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequery(Z)V

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1084
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_4

    .line 1085
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1086
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/DlArtAsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/DlArtAsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/DlArtAsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J

    .line 1057
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1061
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 199
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 234
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 206
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030013

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/carmode/CarTrackBrowseActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 214
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 217
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 230
    :goto_1
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAudioId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v7

    .line 232
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "[CarTrackBrowserActivity]"

    const-string v1, "Remote exception in getAudioId"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 221
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 225
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/AlbumArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/AlbumArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 239
    const-string v0, "[CarTrackBrowserActivity]"

    const-string v1, "onServiceDisconnected... finish."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->finish()V

    .line 241
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    .line 247
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 249
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 255
    return-void
.end method
