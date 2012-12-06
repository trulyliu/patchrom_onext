.class public Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;,
        Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field private static final ADD_PLAYLIST:J = -0x4L

.field private static final ALL_SONGS_PLAYLIST:I = -0x2

.field private static final CHANGE_WEEKS:I = 0x1e

.field private static final DELETE_ALL_PLAYLISTS:I = 0x23

.field private static final DELETE_ALL_PLAYLISTS_MESSAGE:I = 0x0

.field private static final DELETE_CURRENT_PLAYLIST:I = 0x1b

.field private static final DELETE_PLAYLISTS:I = 0x22

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final EDIT_PLAYLIST:I = 0x1c

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISH_DELAY:I = 0x64

.field private static final NEW_PLAYLIST:I = 0x21

.field private static final PLAYLIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final QUERY_TOKEN_GET_PLAYLIST:I = 0x3e9

.field private static final QUERY_TOKEN_PLAY_RECENT_PLAYLIST:I = 0x3e8

.field private static final RECENT_PLAYLIST:Ljava/lang/String; = "-5"

.field private static final RECENT_PLAYLIST_ID:I = -0x5

.field private static RECENT_PLAYLIST_POSITION:I = 0x0

.field private static final RENAME_PLAYLIST:I = 0x1d

.field private static final SELECT_ALL:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "[PlaylistBrowserActivityGrid]"

.field private static final UNSELECT_ALL:I = 0x20


# instance fields
.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field mAlbumCols:[Ljava/lang/String;

.field mBeginIntent:Landroid/content/Intent;

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

.field private mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

.field private mNonUIHandlerThread:Landroid/os/HandlerThread;

.field private mOrientation:I

.field private mPickerMode:I

.field private mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRecentPlayedPos:I

.field private mSelectedId:I

.field mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field mUiHandler:Landroid/os/Handler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

.field menuOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 110
    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 111
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 112
    iput v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 114
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 118
    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    .line 126
    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    .line 169
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 222
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 552
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 944
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_art"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAlbumCols:[Ljava/lang/String;

    .line 950
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 951
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    .line 1015
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    .line 1676
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    .line 1708
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->triggerPlayAllAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 976
    if-nez p1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 978
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_0

    .line 979
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 980
    .local v2, parentCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemSelectedCount()I

    move-result v3

    .line 981
    .local v3, selectCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemDeselectedCount()I

    move-result v0

    .line 983
    .local v0, deselectCount:I
    const/16 v4, 0x20

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 984
    if-eq v2, v0, :cond_3

    move v4, v5

    :goto_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 986
    :cond_2
    const/16 v4, 0x1f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 987
    if-eq v2, v3, :cond_4

    :goto_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v4, v6

    .line 984
    goto :goto_1

    :cond_4
    move v5, v6

    .line 987
    goto :goto_2
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 993
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 994
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 995
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v2, :cond_0

    .line 996
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 999
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1000
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 1001
    add-int/lit8 v1, v1, -0x1

    .line 1003
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 1004
    add-int/lit8 v1, v1, -0x1

    .line 1005
    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    .end local v1           #playlistCount:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    .line 1009
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1012
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1013
    return-void
.end method

.method private finishactivity()V
    .locals 4

    .prologue
    .line 1262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1263
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$13;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$13;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1268
    return-void
.end method

.method private getPickerMode()I
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    return v0
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 726
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const/4 v6, 0x0

    .line 731
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 732
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 733
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 734
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 735
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 736
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 737
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

    .line 736
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 739
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 740
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 746
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 747
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 748
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 749
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_2
    return-object v9

    .line 751
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 752
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private getPlaylistFirstAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 12
    .parameter "playlistId"
    .parameter "unknow"

    .prologue
    const/4 v11, 0x0

    .line 816
    const/4 v9, 0x0

    .line 817
    .local v9, ret:Landroid/database/Cursor;
    const-string v0, "[PlaylistBrowserActivityGrid]"

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

    .line 818
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 823
    const/4 v8, 0x0

    .line 825
    .local v8, recentPlayed:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v8

    .line 826
    if-eqz v8, :cond_0

    array-length v0, v8

    if-lez v0, :cond_0

    .line 829
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

    .line 839
    const-string v0, " AND is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
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

    .line 860
    .end local v8           #recentPlayed:[I
    :cond_0
    :goto_0
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_1
    const/4 v6, 0x0

    .line 875
    .local v6, artCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 876
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 877
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #where:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
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

    .line 879
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "album_key"

    move-object v0, p0

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    :goto_2
    if-eqz v9, :cond_1

    .line 888
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 889
    const/4 v9, 0x0

    .line 892
    :cond_1
    return-object v6

    .line 854
    .end local v6           #artCursor:Landroid/database/Cursor;
    .restart local v8       #recentPlayed:[I
    :catch_0
    move-exception v7

    .line 855
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v0, v1, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 858
    .end local v7           #ex:Landroid/os/RemoteException;
    .end local v8           #recentPlayed:[I
    :cond_2
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "service is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
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

    .line 884
    .restart local v6       #artCursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 447
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 448
    new-instance v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    .line 449
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 452
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 453
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 455
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 456
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 457
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 458
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 459
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 460
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 461
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 462
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 463
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 464
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 465
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 466
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 467
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 468
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 469
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 470
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 698
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 699
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 700
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 721
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 583
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 608
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 618
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 521
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 522
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003f

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 523
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 524
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 525
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 526
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 527
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 533
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 534
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020040

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 535
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 536
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 537
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 538
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 539
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 540
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 541
    const v3, 0x7f030025

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 542
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 543
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 544
    iput-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 545
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 547
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 548
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 549
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 621
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 623
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    .line 694
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 695
    return-void
.end method

.method private updateButtonCounter(I)V
    .locals 8
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1243
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1246
    :cond_0
    const v4, 0x7f06004d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, text:Ljava/lang/String;
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060056

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1249
    :goto_1
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1250
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1251
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1247
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

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

    .line 1250
    goto :goto_2
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "cookie"

    .prologue
    .line 812
    invoke-virtual {p0, p2, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "cursor"
    .parameter "bundle"

    .prologue
    .line 1235
    const/4 v0, 0x0

    return v0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1141
    return-void
.end method

.method public categoryRightAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;Z)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->triggerPlayAllAction()V

    .line 1135
    :cond_0
    return v1
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 1271
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1272
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    .line 1273
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    .line 1274
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 1275
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1145
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "where"

    .prologue
    .line 1150
    const/4 v0, 0x0

    return-object v0
.end method

.method initButtonsPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 487
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 488
    :cond_0
    const v4, 0x7f070040

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 489
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 490
    const v4, 0x7f070041

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 491
    .local v2, savePanel:Lcom/htc/widget/HtcFooter;
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 492
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_2

    .line 494
    const v4, 0x20800a6

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 498
    :goto_0
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 505
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 506
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 507
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 517
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Lcom/htc/widget/HtcFooter;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 518
    return-void

    .line 496
    .restart local v1       #Save:Lcom/htc/widget/HtcFooterButton;
    .restart local v2       #savePanel:Lcom/htc/widget/HtcFooter;
    .restart local v3       #savePanelStub:Landroid/view/ViewStub;
    :cond_2
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 1705
    const/4 v0, 0x1

    return v0
.end method

.method protected mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 761
    if-nez p2, :cond_0

    .line 762
    const/4 p2, 0x0

    .line 807
    .end local p2
    :goto_0
    return-object p2

    .line 764
    .restart local p2
    :cond_0
    instance-of v5, p2, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 766
    const-string v5, "[PlaylistBrowserActivityGrid]"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v2, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 772
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const v5, 0x7f060007

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    .line 795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 796
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v5, "-5"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    const v5, 0x7f0600c8

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iput v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 802
    .end local v4           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 804
    .local v3, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v1, cc:Landroid/database/Cursor;
    move-object p2, v1

    .line 807
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1062
    sparse-switch p1, :sswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1064
    :sswitch_0
    if-nez p2, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1067
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 1073
    :sswitch_1
    if-ne p2, v2, :cond_3

    .line 1074
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v2, :cond_2

    .line 1075
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 1077
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v2, :cond_3

    .line 1078
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->onResume()V

    .line 1093
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v2

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1099
    :sswitch_2
    if-ne p2, v2, :cond_0

    .line 1100
    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1101
    .local v1, playlist:I
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 1102
    .local v0, list:[I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1106
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    if-ne p2, v2, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v2, :cond_4

    .line 1108
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 1110
    :cond_4
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v2, :cond_5

    .line 1111
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->onResume()V

    .line 1125
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    goto :goto_0

    .line 1062
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 206
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 208
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    .line 213
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 281
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 284
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 286
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 288
    :cond_0
    if-eqz p1, :cond_7

    .line 289
    const-string v9, "pickermode"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 290
    const-string v9, "AddToPlaylistData"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 296
    :goto_0
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 298
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 300
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 302
    const/4 v5, -0x1

    .line 304
    .local v5, id:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "playlist"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 374
    .end local v5           #id:I
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v3, f:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v9, "file"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 379
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v9, :cond_2

    new-instance v9, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 384
    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v9, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 393
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_8

    move v6, v7

    .line 395
    .local v6, requestOverlay:Z
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v9

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v9, :cond_9

    .line 396
    const v9, 0x7f030026

    invoke-virtual {p0, v9, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 397
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v9, "com.htc.music.recentplayedchanged"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->enableSearch()V

    .line 416
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v9, :cond_5

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 417
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_4

    .line 418
    new-instance v9, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    :cond_4
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.htc.music.lockscreen_start"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initButtonsPanel()V

    .line 430
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridView()V

    .line 431
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v9, v7, :cond_6

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 432
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    .line 433
    invoke-virtual {p0, v8, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 434
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 441
    :cond_6
    new-instance v7, Landroid/os/HandlerThread;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-NonUIHandler"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    .line 442
    iget-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 443
    new-instance v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    iget-object v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    .line 444
    .end local v3           #f:Landroid/content/IntentFilter;
    .end local v6           #requestOverlay:Z
    :goto_3
    return-void

    .line 292
    :cond_7
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "pickermode"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 293
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "AddToPlaylistData"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    goto/16 :goto_0

    .line 305
    .restart local v5       #id:I
    :catch_0
    move-exception v1

    .line 306
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 307
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 308
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .line 310
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 312
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 313
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #id:I
    .restart local v3       #f:Landroid/content/IntentFilter;
    :cond_8
    move v6, v8

    .line 393
    goto/16 :goto_1

    .line 402
    .restart local v6       #requestOverlay:Z
    :cond_9
    const v9, 0x7f030027

    invoke-virtual {p0, v9, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 403
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v9, :cond_a

    .line 404
    new-instance v9, Lcom/htc/widget/ActionBarText;

    invoke-direct {v9, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 405
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v9, v10}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 408
    :cond_a
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v9, :cond_3

    .line 409
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v9, v11, :cond_b

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    :cond_b
    move v2, v7

    .line 410
    .local v2, enable:Z
    :goto_4
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v9, v2}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto/16 :goto_2

    .end local v2           #enable:Z
    :cond_c
    move v2, v8

    .line 409
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1518
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1519
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1520
    :cond_0
    const/16 v0, 0x1f

    const v1, 0x204014f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1521
    const/16 v0, 0x20

    const v1, 0x2040150

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1545
    :cond_1
    :goto_0
    return v4

    .line 1522
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v0, :cond_4

    .line 1523
    const/16 v0, 0x9

    const v1, 0x7f060006

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1524
    const/16 v0, 0xc

    const v1, 0x7f060007

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1526
    const v0, 0x7f060082

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1530
    const/16 v0, 0x22

    const v1, 0x7f060083

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1532
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDeleteAllPlaylistEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1533
    const/16 v0, 0x23

    const v1, 0x7f060085

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1536
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1540
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 1541
    const v0, 0x204025c

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x208

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    if-eqz v1, :cond_0

    .line 179
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 201
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 200
    :cond_3
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[PlaylistBrowserActivityGrid]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 1279
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1280
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1281
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->switchParentItemSelectedStatus(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1282
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange(I)V

    .line 1346
    :goto_0
    return-void

    .line 1290
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1293
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "playlist"

    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1294
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1302
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1306
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v6, :cond_3

    .line 1307
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1308
    .local v3, shortcut:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v6, "com.htc.media/playlist"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    const-string v4, "playlist"

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1314
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1315
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v6, 0x7f02003a

    invoke-static {p0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1319
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1322
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v1, intent2:Landroid/content/Intent;
    const-string v4, "silder_state"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->sendBroadcast(Landroid/content/Intent;)V

    .line 1325
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finishactivity()V

    goto :goto_0

    .line 1331
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    .end local v3           #shortcut:Landroid/content/Intent;
    :cond_3
    iget v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v6, v4, :cond_4

    .line 1332
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1333
    .restart local v0       #intent:Landroid/content/Intent;
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1334
    .local v2, playlistId:I
    const-string v4, "playlist_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1335
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1336
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto/16 :goto_0

    .line 1338
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #playlistId:I
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1339
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/track"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v6, "playlist"

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v6, "isrecentplayedplaylist"

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ne v7, v8, :cond_5

    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    const-string v4, "InnerActivityType"

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1344
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1342
    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1508
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 1514
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const v10, 0x7f060048

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1353
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1354
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 1357
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1358
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 1360
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v2

    .line 1361
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1362
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1364
    .local v3, ids:[I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    if-gez v5, :cond_2

    .line 1365
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1368
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    const/4 v5, 0x5

    aput v5, v3, v7

    .line 1406
    .restart local v3       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->hideHtcContextMenu()V

    .line 1407
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1417
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 1370
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1371
    .local v1, dlnaMode:I
    if-nez v1, :cond_3

    .line 1373
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f06004a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x7f060084

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1381
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1390
    :cond_3
    new-array v4, v9, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f060084

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1397
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v9, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1381
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 1397
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 15
    .parameter "id"

    .prologue
    .line 1421
    sparse-switch p1, :sswitch_data_0

    .line 1493
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1423
    :sswitch_0
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v0, v0

    const-wide/16 v3, -0x4

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 1425
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 1427
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1428
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v2

    .line 1429
    .local v2, recentTrackId:[I
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3e8

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1431
    .end local v2           #recentTrackId:[I
    :catch_0
    move-exception v10

    .line 1432
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "Exception when playing recent played list."

    invoke-static {v0, v1, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1435
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->PLAY_PLAYLIST_COLS:[Ljava/lang/String;

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v7, v0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;J)V

    goto :goto_0

    .line 1439
    :sswitch_1
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v9

    .line 1440
    .local v9, addToPlaylistData:[I
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1441
    .local v12, intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v12, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1442
    const-string v0, "pickermode"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1443
    const-string v0, "AddToPlaylistData"

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1444
    const/4 v0, 0x1

    invoke-virtual {p0, v12, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1448
    .end local v9           #addToPlaylistData:[I
    .end local v12           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1449
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x3

    iget v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-interface {v0, v1, v3}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1451
    :catch_1
    move-exception v10

    .line 1452
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, long click playlist item, RemoteException e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1456
    .end local v10           #e:Landroid/os/RemoteException;
    :sswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1457
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1460
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v14, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1461
    const v0, 0x7f060033

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1465
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 1466
    .local v11, handler:Landroid/os/Handler;
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v11, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1486
    .end local v11           #handler:Landroid/os/Handler;
    .end local v14           #uri:Landroid/net/Uri;
    :sswitch_4
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1487
    .local v13, intent2:Landroid/content/Intent;
    const-class v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v13, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1489
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const/16 v0, 0x1c

    invoke-virtual {p0, v13, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1421
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xd -> :sswitch_2
        0x1c -> :sswitch_4
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 970
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 972
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 1598
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1671
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 1614
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    goto :goto_0

    .line 1627
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1628
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1629
    const-string v6, "pickermode"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1630
    const/16 v6, 0x22

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1635
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemSelected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1636
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1640
    :pswitch_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemDeselected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1641
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1650
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1651
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, -0x2

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1655
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_6
    iput-boolean v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1658
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1659
    .local v0, deletCount:I
    const-string v6, "[PlaylistBrowserActivityGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE_ALL_PLAYLISTS : delete item = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0005

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1662
    .local v3, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1663
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1664
    .end local v0           #deletCount:I
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1665
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[PlaylistBrowserActivityGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE_ALL_PLAYLISTS error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iput-boolean v11, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    goto/16 :goto_0

    .line 1598
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method protected onPlaybackServiceConnection()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    if-nez v5, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    const/4 v3, 0x1

    .line 243
    .local v3, isPlaylistNotEmpty:Z
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "playlist"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    .local v2, id:I
    const/4 v5, -0x2

    if-ne v2, v5, :cond_3

    .line 252
    sget-object v5, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v6, "title COLLATE NOCASE ASC"

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v1

    .line 254
    .local v1, c:Landroid/database/Cursor;
    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)I

    .line 255
    if-eqz v1, :cond_2

    .line 256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-nez v3, :cond_5

    .line 263
    const-string v5, "[PlaylistBrowserActivityGrid]"

    const-string v6, "Send delay finish message"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 259
    :cond_3
    int-to-long v5, v2

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;J)I

    move-result v5

    if-ltz v5, :cond_4

    const/4 v3, 0x1

    :goto_2
    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    .line 270
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVisible(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1550
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1551
    const/4 v0, 0x0

    .line 1552
    .local v0, enabled:Z
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 1553
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1554
    .local v2, playlistCount:I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v5, :cond_0

    .line 1555
    add-int/lit8 v2, v2, -0x1

    .line 1557
    :cond_0
    if-lez v2, :cond_b

    move v0, v3

    .line 1562
    .end local v2           #playlistCount:I
    :cond_1
    :goto_0
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1563
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 1564
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1565
    :cond_2
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1566
    if-eqz v1, :cond_3

    .line 1567
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1568
    :cond_3
    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1569
    if-eqz v1, :cond_5

    .line 1570
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    move v4, v3

    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1571
    :cond_5
    const/16 v4, 0x22

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1572
    if-eqz v1, :cond_6

    .line 1573
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1577
    :cond_6
    const/16 v4, 0x23

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1578
    if-eqz v1, :cond_7

    .line 1579
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1580
    :cond_7
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1581
    if-eqz v1, :cond_8

    .line 1582
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1583
    :cond_8
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1584
    if-eqz v1, :cond_9

    .line 1585
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1586
    :cond_9
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1587
    if-eqz v1, :cond_a

    .line 1588
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1590
    :cond_a
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 1592
    return v3

    .end local v1           #item:Landroid/view/MenuItem;
    .restart local v2       #playlistCount:I
    :cond_b
    move v0, v4

    .line 1557
    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 473
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 475
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 476
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v1

    .line 477
    .local v1, list:[I
    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    .line 481
    .end local v1           #list:[I
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 483
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 484
    return-void

    .line 479
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "selectedlist"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected playAllAction(Z)Z
    .locals 1
    .parameter "forceShuffle"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->playAll(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->access$1800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;Z)V

    .line 1227
    const/4 v0, 0x1

    .line 1230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1155
    iget-boolean v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v5, :cond_3

    .line 1156
    if-eqz p3, :cond_0

    .line 1157
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1158
    const/4 p3, 0x0

    .line 1160
    :cond_0
    instance-of v5, p2, Landroid/database/Cursor;

    if-eqz v5, :cond_2

    move-object p3, p2

    .line 1161
    check-cast p3, Landroid/database/Cursor;

    .line 1162
    if-eqz p3, :cond_1

    .line 1163
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1164
    const/4 p3, 0x0

    .line 1166
    :cond_1
    const/4 p2, 0x0

    .line 1196
    .end local p2
    :cond_2
    :goto_0
    return v4

    .line 1171
    .restart local p2
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1196
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v4

    goto :goto_0

    .line 1173
    :pswitch_0
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v3, p2

    .line 1174
    .local v3, where:Ljava/lang/String;
    :goto_1
    const-string v5, "[PlaylistBrowserActivityGrid]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[processOnQueryComplete] where="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";cursor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0, p3, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1176
    .local v0, merged:Landroid/database/Cursor;
    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->init(Landroid/database/Cursor;Z)V

    .line 1178
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 1180
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1181
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 1173
    .end local v0           #merged:Landroid/database/Cursor;
    .end local v3           #where:Ljava/lang/String;
    .restart local p2
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1186
    :pswitch_1
    check-cast p2, [I

    .end local p2
    move-object v2, p2

    check-cast v2, [I

    .line 1187
    .local v2, trackList:[I
    invoke-static {p3, v2}, Lcom/htc/music/util/MusicUtils;->getListForCursorByTrackList(Landroid/database/Cursor;[I)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v1

    .line 1188
    .local v1, palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    if-eqz p3, :cond_5

    .line 1189
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1191
    :cond_5
    iget-object v5, v1, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v6, v1, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[I[I)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->triggerPlayAllAction()V

    goto :goto_0

    .line 1171
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10
    .parameter "setEnable"

    .prologue
    const v9, 0x7f060056

    const/high16 v8, 0x208

    const/4 v7, 0x1

    .line 1022
    const/4 v5, 0x0

    .line 1023
    .local v5, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 1025
    :cond_0
    iput v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 1027
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->isActivityResumed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1028
    const-string v6, "[PlaylistBrowserActivityGrid]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 1032
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 1033
    .local v4, parent:Landroid/app/Activity;
    instance-of v6, v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 1034
    check-cast v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 1037
    .local v3, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    if-eqz p1, :cond_3

    .line 1038
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 1040
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1041
    .local v1, enableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1042
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, label:Ljava/lang/String;
    invoke-interface {v3, v1, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1044
    new-instance v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 1056
    .end local v1           #enableAddIcon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 1050
    .end local v2           #label:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1051
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1052
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1053
    .restart local v2       #label:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 1054
    invoke-interface {v3, v0, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1201
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showEmptyView(I)V

    .line 1202
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_0

    .line 1208
    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1209
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1221
    :goto_0
    return-void

    .line 1217
    :cond_0
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
