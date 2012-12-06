.class public Lcom/htc/music/carmode/CarPlaylistBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarPlaylistBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field private static final ADD_PLAYLIST:J = -0x4L

.field private static final ALL_SONGS_PLAYLIST:I = -0x2

.field private static final CHANGE_WEEKS:I = 0x1e

.field private static final DELETE_CURRENT_PLAYLIST:I = 0x1b

.field private static final DELETE_PLAYLISTS:I = 0x22

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final EDIT_PLAYLIST:I = 0x1c

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISH_DELAY:I = 0x64

.field private static final NEW_PLAYLIST:I = 0x21

.field private static final PLAYLIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final QUERY_TOKEN_PLAY_RECENT_PLAYLIST:I = 0x3e8

.field private static final RECENT_PLAYLIST:Ljava/lang/String; = "-5"

.field private static RECENT_PLAYLIST_POSITION:I = 0x0

.field private static final RENAME_PLAYLIST:I = 0x1d

.field private static final SELECT_ALL:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "[CarPlaylistBrowserActivityGrid]"

.field private static final UNSELECT_ALL:I = 0x20


# instance fields
.field private list:[I

.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field mAlbumCols:[Ljava/lang/String;

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

.field private mPickerMode:I

.field private mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRecentPlayedPos:I

.field private mSelectedId:I

.field mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

.field menuOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->RECENT_PLAYLIST_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    .line 103
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    .line 104
    iput v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    .line 106
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mExitByErrorIntent:Z

    .line 155
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 393
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 785
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v2

    const-string v1, "album_art"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    .line 790
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->menuOpened:Z

    .line 791
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mDelayFinishHandler:Landroid/os/Handler;

    .line 843
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$10;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->RECENT_PLAYLIST_POSITION:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistFirstAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->createNewPlaylist()V

    return-void
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 817
    return-void
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 823
    iget v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-nez v2, :cond_0

    .line 824
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 827
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 828
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 829
    add-int/lit8 v1, v1, -0x1

    .line 831
    :cond_1
    iget v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 832
    add-int/lit8 v1, v1, -0x1

    .line 833
    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    .end local v1           #playlistCount:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    .line 837
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 840
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 841
    return-void
.end method

.method private finishactivity()V
    .locals 4

    .prologue
    .line 974
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 975
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    return-void
.end method

.method private getPickerMode()I
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    return v0
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 568
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const/4 v6, 0x0

    .line 573
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 574
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 576
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 577
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 578
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 578
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 581
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 582
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 588
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 589
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 591
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_2
    return-object v9

    .line 593
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 594
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private getPlaylistFirstAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 12
    .parameter "playlistId"
    .parameter "unknow"

    .prologue
    const/4 v11, 0x0

    .line 658
    const/4 v9, 0x0

    .line 659
    .local v9, ret:Landroid/database/Cursor;
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlistId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 665
    const/4 v8, 0x0

    .line 667
    .local v8, recentPlayed:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v8

    .line 668
    if-eqz v8, :cond_0

    array-length v0, v8

    if-lez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v0, " AND is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 702
    .end local v8           #recentPlayed:[I
    :cond_0
    :goto_0
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_1
    const/4 v6, 0x0

    .line 717
    .local v6, artCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 718
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 719
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #where:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .restart local v10       #where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "album_key"

    move-object v0, p0

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 728
    :goto_2
    if-eqz v9, :cond_1

    .line 729
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v9, 0x0

    .line 733
    :cond_1
    return-object v6

    .line 696
    .end local v6           #artCursor:Landroid/database/Cursor;
    .restart local v8       #recentPlayed:[I
    :catch_0
    move-exception v7

    .line 697
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v0, v1, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 700
    .end local v7           #ex:Landroid/os/RemoteException;
    .end local v8           #recentPlayed:[I
    :cond_2
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "service is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_3
    const-string v0, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "play_order LIMIT 0,1"

    move-object v0, p0

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1

    .line 725
    .restart local v6       #artCursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 292
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 293
    new-instance v2, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    .line 294
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 297
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 298
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 300
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 301
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 302
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewUtil()V

    .line 303
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 304
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 305
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 306
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 307
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 308
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 309
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 310
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    iget-object v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 311
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 312
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 313
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 314
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 315
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 316
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 540
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CAR_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 541
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 542
    new-instance v1, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$8;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 563
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 424
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 450
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$6;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 460
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 362
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 363
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020015

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 364
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 365
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 366
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 367
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 368
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 374
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 375
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020017

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 376
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 377
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 378
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 379
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 380
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 381
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 382
    const v3, 0x7f030011

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 383
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 384
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 385
    iput-object v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 386
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 388
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 389
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 390
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 463
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 465
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$7;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    .line 536
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 537
    return-void
.end method

.method private updateButtonCounter(I)V
    .locals 8
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 955
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 964
    :goto_0
    return-void

    .line 958
    :cond_0
    const v4, 0x7f06004d

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, text:Ljava/lang/String;
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060056

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    :goto_1
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 962
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 963
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 959
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    move v2, v3

    .line 962
    goto :goto_2
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "cookie"

    .prologue
    .line 654
    invoke-virtual {p0, p2, p1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 904
    return-void
.end method

.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 983
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 984
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    .line 985
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 986
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 908
    invoke-direct {p0, v0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "where"

    .prologue
    .line 913
    const/4 v0, 0x0

    return-object v0
.end method

.method initButtonsPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 328
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 329
    :cond_0
    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 330
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 331
    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 332
    .local v2, savePanel:Lcom/htc/widget/HtcFooter;
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 333
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v4, v7, :cond_2

    .line 335
    const v4, 0x20800a6

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 339
    :goto_0
    new-instance v4, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 346
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 347
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 348
    new-instance v4, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;

    invoke-direct {v4, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 358
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Lcom/htc/widget/HtcFooter;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->updateButtonCounter(I)V

    .line 359
    return-void

    .line 337
    .restart local v1       #Save:Lcom/htc/widget/HtcFooterButton;
    .restart local v2       #savePanel:Lcom/htc/widget/HtcFooter;
    .restart local v3       #savePanelStub:Landroid/view/ViewStub;
    :cond_2
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 603
    if-nez p2, :cond_0

    .line 604
    const/4 p2, 0x0

    .line 649
    .end local p2
    :goto_0
    return-object p2

    .line 606
    .restart local p2
    :cond_0
    instance-of v5, p2, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 608
    const-string v5, "[CarPlaylistBrowserActivityGrid]"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v2, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    .line 637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v5, "-5"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    const v5, 0x7f0600c8

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iput v7, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    .line 644
    .end local v4           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 646
    .local v3, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v1, cc:Landroid/database/Cursor;
    move-object p2, v1

    .line 649
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 200
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iput-boolean v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    .line 204
    :cond_0
    if-eqz p1, :cond_4

    .line 205
    const-string v3, "pickermode"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    .line 206
    const-string v3, "AddToPlaylistData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    .line 213
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setVolumeControlStream(I)V

    .line 215
    iput-boolean v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mExitByErrorIntent:Z

    .line 247
    iput-object p0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 248
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v3, v7}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 258
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v3, :cond_5

    .line 259
    const v3, 0x7f030026

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setContentView(I)V

    .line 260
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.recentplayedchanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initButtonsPanel()V

    .line 275
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initGridView()V

    .line 276
    iget v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v3, v6, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->createNewPlaylist()V

    .line 278
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 286
    :cond_2
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    sget-object v3, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->PLAYLIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V

    .line 289
    :cond_3
    return-void

    .line 208
    :cond_4
    const-string v3, "pickermode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    .line 209
    const-string v3, "AddToPlaylistData"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    goto :goto_0

    .line 264
    :cond_5
    const v3, 0x7f030027

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setContentView(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 178
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 990
    const-string v0, "Playlists"

    invoke-static {v4, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 992
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->clickIndexInit(I)V

    .line 993
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    if-ne v0, v1, :cond_0

    .line 995
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v2

    .line 996
    .local v2, recentTrackId:[I
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3e8

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v2           #recentTrackId:[I
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v9

    .line 999
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "[CarPlaylistBrowserActivityGrid]"

    const-string v1, "Unable to get recent played playlist."

    invoke-static {v0, v1, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1002
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v6, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1195
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 1201
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1107
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->menuOpened:Z

    .line 810
    invoke-direct {p0, p2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->applyMenuStatus(Landroid/view/Menu;)V

    .line 812
    invoke-super {p0, p1, p2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 321
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedlist"

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 322
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 324
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 325
    return-void
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 1009
    iget-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v3, :cond_3

    .line 1010
    if-eqz p3, :cond_0

    .line 1011
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1012
    const/4 p3, 0x0

    .line 1014
    :cond_0
    instance-of v3, p2, Landroid/database/Cursor;

    if-eqz v3, :cond_2

    move-object p3, p2

    .line 1015
    check-cast p3, Landroid/database/Cursor;

    .line 1016
    if-eqz p3, :cond_1

    .line 1017
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1018
    const/4 p3, 0x0

    .line 1020
    :cond_1
    const/4 p2, 0x0

    .line 1036
    .end local p2
    :cond_2
    :goto_0
    return v2

    .line 1025
    .restart local p2
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1036
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v2

    goto :goto_0

    .line 1027
    :pswitch_0
    check-cast p2, [I

    .end local p2
    move-object v1, p2

    check-cast v1, [I

    .line 1028
    .local v1, trackList:[I
    invoke-static {p3, v1}, Lcom/htc/music/util/MusicUtils;->getListForCursorByTrackList(Landroid/database/Cursor;[I)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v0

    .line 1029
    .local v0, palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    if-eqz p3, :cond_4

    .line 1030
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1032
    :cond_4
    iget-object v3, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v4, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    sget-object v5, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[I[ILcom/htc/music/util/MusicUtils$LaunchUI;)I

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 923
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->showEmptyView(I)V

    .line 924
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v1, :cond_0

    .line 930
    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 942
    :goto_0
    return-void

    .line 938
    :cond_0
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
