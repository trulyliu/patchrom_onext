.class public abstract Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.super Lcom/htc/music/carmode/MusicMaActivity;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    }
.end annotation


# static fields
.field protected static final DIALOG_CREATE_PLAYLIST:I = 0x64

.field public static final GRID_VIEW_ITEM_CLICK:I = 0x0

.field public static final GRID_VIEW_ITEM_DELETE:I = 0x3

.field public static final GRID_VIEW_ITEM_LONG_CLICK:I = 0x1

.field protected static final QUERY_TOKEN_CHILD_BASE:I = 0x3e8

.field protected static final QUERY_TOKEN_GET_CURSOR:I = 0x0

.field protected static final QUERY_TOKEN_GET_EXTRA_CURSOR:I = 0x2

.field protected static final QUERY_TOKEN_PLAY_ALL:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field public static final TYPE_ALBUM_TITLE:I = 0x0

.field public static final TYPE_ARTIST_TITLE:I = 0x1

.field public static final TYPE_GENRE_TITLE:I = 0x2

.field public static final TYPE_PLAYLIST_TITLE:I = 0x3


# instance fields
.field private final libraryStringResId:[[I

.field private mAsyncQuerying:Z

.field protected mChildClickedIndex:I

.field private mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field protected mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAlbumId:Ljava/lang/String;

.field protected mCurrentAlbumName:Ljava/lang/String;

.field protected mCurrentArtistId:Ljava/lang/String;

.field protected mCurrentArtistName:Ljava/lang/String;

.field protected mCurrentFolderId:Ljava/lang/String;

.field protected mCurrentFolderName:Ljava/lang/String;

.field protected mCurrentGenreId:Ljava/lang/String;

.field protected mCurrentGenreName:Ljava/lang/String;

.field protected mCurrentPlaylistId:Ljava/lang/String;

.field protected mCurrentPlaylistName:Ljava/lang/String;

.field protected mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

.field protected mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field protected mGlobalClickedIndex:I

.field protected mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field protected mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

.field protected mGridViewHandler:Landroid/os/Handler;

.field protected mGridViewInitFinish:Z

.field protected mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field protected mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

.field protected mGridViewRefreshDisable:Z

.field protected mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

.field private mInherentIndentity:Ljava/lang/String;

.field protected mIsActivityDestroyed:Z

.field mIsUpdateGridView:Z

.field private mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field protected mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

.field protected mParentClickedIndex:I

.field protected mParentCursor:Landroid/database/Cursor;

.field protected mPlaylistUri:Ljava/lang/String;

.field protected mReScanHandler:Landroid/os/Handler;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field private mServiceBound:Z

.field private mStopping:Z

.field protected mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

.field mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

.field protected mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

.field private prevScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "[CarMusicAutoHeaderFooterGridViewActivity]"

    sput-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicMaActivity;-><init>()V

    .line 72
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 73
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    .line 82
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->prevScrollState:I

    .line 85
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$1;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    .line 110
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$2;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 147
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 148
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 149
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 151
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    .line 175
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    .line 176
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    .line 400
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    .line 443
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    .line 449
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$4;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 463
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    .line 480
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$6;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    .line 570
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$7;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 601
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 618
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$8;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 772
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    .line 825
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$9;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1052
    return-void

    .line 400
    nop

    :array_0
    .array-data 0x4
        0x19t 0x0t 0x6t 0x7ft
        0x1at 0x0t 0x6t 0x7ft
        0x1bt 0x0t 0x6t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x16t 0x0t 0x6t 0x7ft
        0x17t 0x0t 0x6t 0x7ft
        0x18t 0x0t 0x6t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x24t 0x0t 0x6t 0x7ft
        0x25t 0x0t 0x6t 0x7ft
        0x26t 0x0t 0x6t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x20t 0x0t 0x6t 0x7ft
        0x21t 0x0t 0x6t 0x7ft
        0x22t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->prevScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->prevScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->resetExpandableParamsAfterCollapseChildIRT()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->updateGridView(Z)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 634
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-ne p1, v2, :cond_0

    .line 674
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-nez v2, :cond_1

    .line 637
    new-instance v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-nez v2, :cond_2

    .line 640
    new-instance v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 642
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 644
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v2, :cond_3

    .line 645
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor : unregisterContentObserver success"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-eqz v2, :cond_4

    .line 653
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor : unregisterDataSetObserver success"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 661
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 662
    .local v1, origin:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 664
    if-eqz p1, :cond_5

    .line 665
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 666
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 667
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor : registerContentObserver &  registerDataSetObserver success"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 671
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_6
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    .end local v1           #origin:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCursor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 656
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 657
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCursor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isCollapseWithScroll()Z
    .locals 6

    .prologue
    .line 712
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 713
    .local v0, firstVisible:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v1

    .line 714
    .local v1, lastVisible:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    .line 716
    .local v3, parentIndex:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int v2, v4, v5

    .line 718
    .local v2, offset:I
    add-int/lit8 v0, v0, -0xa

    .line 719
    if-gez v0, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 722
    :cond_0
    add-int/2addr v1, v2

    .line 723
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 724
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 726
    :cond_1
    if-lt v3, v0, :cond_2

    if-gt v3, v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private resetExpandableParamsAfterCollapseChildIRT()V
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    .line 612
    .local v0, params:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 614
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 616
    :cond_0
    return-void
.end method

.method private updateGridView(Z)V
    .locals 6
    .parameter "isUpdateInUiThread"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 775
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 776
    :cond_0
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGridView : mIsActivityDestroyed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGridView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :goto_0
    return-void

    .line 780
    :cond_1
    monitor-enter p0

    .line 781
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    if-eqz v1, :cond_2

    .line 782
    monitor-exit p0

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 783
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    .line 784
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 789
    :cond_3
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView : set medialist to gridview"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaListAfterPrepare()Z

    .line 791
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 814
    :goto_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 815
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 817
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v1, :cond_5

    .line 818
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->reset()V

    .line 820
    :cond_5
    monitor-enter p0

    .line 821
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    .line 822
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 793
    :cond_6
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGridView : update medialist and notify gridview data change, isUpdateInUiThread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    if-eqz p1, :cond_8

    .line 795
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 797
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaListAfterPrepare()Z

    move-result v0

    .line 798
    .local v0, isContentChanged:Z
    if-eqz v0, :cond_7

    .line 799
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 803
    :goto_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_1

    .line 801
    :cond_7
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate()V

    goto :goto_2

    .line 805
    .end local v0           #isContentChanged:Z
    :cond_8
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaListAfterPrepare()Z

    move-result v0

    .line 806
    .restart local v0       #isContentChanged:Z
    if-eqz v0, :cond_9

    .line 807
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 811
    :goto_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_1

    .line 809
    :cond_9
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate()V

    goto :goto_3
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 866
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract asyncQueryParentCursor()V
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getParentCursor()Landroid/database/Cursor;
.end method

.method protected abstract getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected init(Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "c"
    .parameter "startIntroAnimation"

    .prologue
    const/4 v5, 0x1

    .line 730
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v2, :cond_1

    .line 732
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "mGridView == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v2, :cond_0

    .line 740
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->changeCursor(Landroid/database/Cursor;)V

    .line 741
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->showMessageView(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 742
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : showMessageView"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->reset()V

    goto :goto_0

    .line 748
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 750
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->prepareAndCompareParentMediaList()Z

    move-result v0

    .line 752
    .local v0, isContentChange:Z
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 753
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : collapse the expanded gridview"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isCollapseWithScroll()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 755
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v2, v3, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 769
    :cond_3
    :goto_1
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_4
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setSelection(I)V

    .line 758
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    goto :goto_1

    .line 761
    :cond_5
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : push update gridview event to render thread"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    .line 763
    .local v1, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 764
    :cond_6
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push update gridview event to render thread fail, thread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->updateGridView(Z)V

    goto :goto_1
.end method

.method public isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 840
    const/4 v1, 0x0

    .local v1, merged:Landroid/database/Cursor;
    move-object v0, p1

    .line 841
    check-cast v0, Landroid/database/Cursor;

    .line 842
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 843
    if-eqz p2, :cond_1

    .line 844
    new-instance v1, Landroid/database/MergeCursor;

    .end local v1           #merged:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 851
    .restart local v1       #merged:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v1

    .line 846
    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 848
    :cond_2
    if-eqz p2, :cond_0

    .line 849
    move-object v1, p2

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 367
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onBackPressed()V

    .line 368
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 292
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->resetSDErrorLayout()V

    .line 299
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    .line 183
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v2, "action_complete_one_download"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "action_revert_current_album"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onDestroy()V

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    .line 253
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->release()V

    .line 263
    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-eqz v1, :cond_1

    .line 268
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->release()V

    .line 273
    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 276
    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->destroy()V

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 282
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_5

    .line 285
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->destroy()V

    .line 287
    :cond_5
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 270
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onGridViewItemClick(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemDelete(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemDeleteComplete()V
.end method

.method protected abstract onGridViewItemLongClick(Landroid/os/Message;)V
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 230
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->freeInvisibleResource()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->onPause()V

    .line 235
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 205
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 207
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->onResume()V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 222
    :cond_3
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 303
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceConnected] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 315
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceDisconnected] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onStart()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 201
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    .line 241
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    .line 246
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onStop()V

    .line 247
    return-void
.end method

.method protected prepareAndCompareParentMediaList()Z
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareAndCompareForParentMediaList(Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 892
    iget-boolean v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v4, :cond_3

    .line 893
    if-eqz p3, :cond_0

    .line 894
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 895
    const/4 p3, 0x0

    .line 897
    :cond_0
    instance-of v3, p2, Landroid/database/Cursor;

    if-eqz v3, :cond_2

    move-object p3, p2

    .line 898
    check-cast p3, Landroid/database/Cursor;

    .line 899
    if-eqz p3, :cond_1

    .line 900
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 901
    const/4 p3, 0x0

    .line 903
    :cond_1
    const/4 p2, 0x0

    .line 940
    .end local p2
    :cond_2
    :goto_0
    return v2

    .line 908
    .restart local p2
    :cond_3
    const/4 v0, 0x0

    .line 909
    .local v0, merged:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    move v2, v3

    .line 940
    goto :goto_0

    .line 911
    :pswitch_0
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v1, p2

    .line 912
    .local v1, where:Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[processOnQueryComplete] where="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";cursor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p3, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_2

    .line 915
    invoke-virtual {p0, v0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 917
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 918
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 919
    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 911
    .end local v1           #where:Ljava/lang/String;
    .restart local p2
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 924
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 925
    invoke-virtual {p0, v0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 927
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 928
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 929
    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 933
    :pswitch_2
    sget-object v3, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {p0, p3, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/util/MusicUtils$LaunchUI;)I

    .line 934
    if-eqz p3, :cond_2

    .line 935
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAsyncQueryStatus(Z)V
    .locals 0
    .parameter "isQuerying"

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 608
    return-void
.end method

.method protected abstract setEmptyView()V
.end method

.method protected setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 1094
    return-void
.end method

.method protected abstract setTitle()V
.end method

.method protected setTitleWithCount(II)Ljava/lang/String;
    .locals 8
    .parameter "type"
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 416
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 420
    const-string v4, ""

    .line 440
    :goto_0
    return-object v4

    .line 423
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 424
    .local v1, normalTitle:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v2, v4, v6

    .line 425
    .local v2, oneCountTitle:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v0, v4, v7

    .line 427
    .local v0, countsTlte:I
    if-lez p2, :cond_2

    .line 429
    if-ne p2, v6, :cond_1

    if-lez v2, :cond_1

    .line 430
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 432
    .end local v3           #tempString:Ljava/lang/String;
    :cond_1
    if-le p2, v6, :cond_2

    if-lez v0, :cond_2

    .line 433
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    .restart local v3       #tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 437
    .end local v3           #tempString:Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_3

    .line 438
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 440
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected showMessageView(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 686
    if-nez p1, :cond_2

    .line 687
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->showDatabaseError()V

    .line 688
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->closeContextMenu()V

    .line 689
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 691
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isActivityResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 695
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 697
    :cond_1
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    return v0

    .line 699
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 700
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 701
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 702
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 704
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setEmptyView()V

    .line 705
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor.getCount() == 0"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 708
    goto :goto_0
.end method
