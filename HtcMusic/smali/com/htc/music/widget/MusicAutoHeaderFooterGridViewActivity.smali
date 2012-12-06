.class public abstract Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    }
.end annotation


# static fields
.field public static final GRID_VIEW_ITEM_CLICK:I = 0x0

.field public static final GRID_VIEW_ITEM_DELETE:I = 0x2

.field public static final GRID_VIEW_ITEM_LONG_CLICK:I = 0x1

.field protected static final QUERY_TOKEN_CHILD_BASE:I = 0x3e8

.field protected static final QUERY_TOKEN_GET_CURSOR:I = 0x0

.field protected static final QUERY_TOKEN_GET_EXTRA_CURSOR:I = 0x1

.field protected static final QUERY_TOKEN_PLAY_ALL:I = 0x3

.field protected static final QUERY_TOKEN_PLAY_ALL_ASYNC_QUERY:I = 0x2

.field protected static final QUERY_TOKEN_SHUFFLE_ALL:I = 0x4

.field public static TAG:Ljava/lang/String; = null

.field public static final TYPE_ALBUM_TITLE:I = 0x0

.field public static final TYPE_ARTIST_TITLE:I = 0x1

.field public static final TYPE_FOLDER_TITLE:I = 0x4

.field public static final TYPE_GENRE_TITLE:I = 0x2

.field public static final TYPE_PLAYLIST_TITLE:I = 0x3


# instance fields
.field private final libraryStringResId:[[I

.field private mAsyncQuerying:Z

.field protected mChildClickedIndex:I

.field private mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field protected mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

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

.field protected mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

.field protected mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field protected mDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field protected mGlobalClickedIndex:I

.field protected mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field protected mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

.field protected mGridViewHandler:Landroid/os/Handler;

.field protected mGridViewInitFinish:Z

.field protected mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field protected mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

.field protected mGridViewRefreshDisable:Z

.field protected mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

.field private mInherentIndentity:Ljava/lang/String;

.field protected mIsActivityDestroyed:Z

.field protected mIsSeriveBinded:Z

.field mIsUpdateGridView:Z

.field private mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field protected mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

.field protected mNeedBindSerive:Z

.field private mOnlyCollapseChildListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field protected mParentClickedIndex:I

.field protected mParentCursor:Landroid/database/Cursor;

.field mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field protected mPlaylistUri:Ljava/lang/String;

.field protected mReScanHandler:Landroid/os/Handler;

.field private mRequeryWhenResume:Z

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field protected mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

.field mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

.field protected mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

.field private prevScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "[MusicAutoHeaderFooterGridViewActivity]"

    sput-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;-><init>()V

    .line 76
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prevScrollState:I

    .line 79
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mRequeryWhenResume:Z

    .line 81
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 82
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsSeriveBinded:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 93
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 94
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    .line 95
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    .line 145
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 174
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 175
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 176
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 177
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 179
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 201
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$4;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 380
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mOnlyCollapseChildListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 391
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 468
    const/4 v0, 0x5

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

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    .line 513
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$7;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    .line 519
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$8;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 533
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$9;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    .line 550
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    .line 648
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$11;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 683
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 825
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    .line 879
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$12;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$12;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1135
    return-void

    .line 468
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

    :array_4
    .array-data 0x4
        0x27t 0x0t 0x6t 0x7ft
        0x1ft 0x0t 0x6t 0x7ft
        0x1et 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prevScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prevScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->resetExpandableParamsAfterCollapseChildIRT()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->updateGridView(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mRequeryWhenResume:Z

    return p1
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 693
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-ne p1, v2, :cond_0

    .line 733
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-nez v2, :cond_1

    .line 696
    new-instance v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 698
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-nez v2, :cond_2

    .line 699
    new-instance v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 701
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 703
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v2, :cond_3

    .line 704
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor : unregisterContentObserver success"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-eqz v2, :cond_4

    .line 712
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor : unregisterDataSetObserver success"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 720
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 721
    .local v1, origin:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 723
    if-eqz p1, :cond_5

    .line 724
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 725
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 726
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor : registerContentObserver &  registerDataSetObserver success"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 730
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 732
    :cond_6
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "changeCursor-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v1           #origin:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCursor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 716
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCursor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isCollapseWithScroll()Z
    .locals 6

    .prologue
    .line 352
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 353
    .local v0, firstVisible:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v1

    .line 354
    .local v1, lastVisible:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    .line 356
    .local v3, parentIndex:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int v2, v4, v5

    .line 358
    .local v2, offset:I
    add-int/lit8 v0, v0, -0xa

    .line 359
    if-gez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 362
    :cond_0
    add-int/2addr v1, v2

    .line 363
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    .line 366
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
    .line 376
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 377
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 378
    return-void
.end method

.method private updateGridView(Z)V
    .locals 6
    .parameter "isUpdateInUiThread"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 828
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 829
    :cond_0
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGridView : mIsActivityDestroyed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGridView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :goto_0
    return-void

    .line 833
    :cond_1
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView : set medialist to gridview"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    monitor-enter p0

    .line 836
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    if-eqz v1, :cond_2

    .line 837
    monitor-exit p0

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 838
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    .line 839
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 844
    :cond_3
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView : set medialist to gridview"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaListAfterPrepare()Z

    .line 846
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 868
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 869
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 871
    :cond_4
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v1, :cond_5

    .line 872
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->reset()V

    .line 874
    :cond_5
    monitor-enter p0

    .line 875
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsUpdateGridView:Z

    .line 876
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 848
    :cond_6
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

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

    .line 849
    if-eqz p1, :cond_8

    .line 850
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 852
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaListAfterPrepare()Z

    move-result v0

    .line 853
    .local v0, isContentChanged:Z
    if-eqz v0, :cond_7

    .line 854
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 858
    :goto_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_1

    .line 856
    :cond_7
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate()V

    goto :goto_2

    .line 860
    .end local v0           #isContentChanged:Z
    :cond_8
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaListAfterPrepare()Z

    move-result v0

    .line 861
    .restart local v0       #isContentChanged:Z
    if-eqz v0, :cond_9

    .line 862
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 865
    :goto_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_1

    .line 864
    :cond_9
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate()V

    goto :goto_3
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z
.end method

.method protected abstract asyncQueryParentCursor()V
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 450
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

    const/4 v4, 0x0

    .line 771
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v2, :cond_1

    .line 773
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "mGridView == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v2, :cond_0

    .line 782
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->changeCursor(Landroid/database/Cursor;)V

    .line 783
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showMessageView(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : showMessageView"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iput-boolean v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 786
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->reset()V

    goto :goto_0

    .line 791
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 793
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    if-eqz v2, :cond_3

    .line 794
    iput-boolean v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 795
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v2, :cond_0

    .line 796
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->reset()V

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prepareAndCompareParentMediaList()Z

    move-result v0

    .line 805
    .local v0, isContentChange:Z
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 806
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : collapse the expanded gridview"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isCollapseWithScroll()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 808
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v2, v3, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 822
    :cond_4
    :goto_1
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setSelection(I)V

    .line 811
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCollapseChildAndUpdateListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    goto :goto_1

    .line 814
    :cond_6
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : push update gridview event to render thread"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v1

    .line 816
    .local v1, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mUpdateGridViewIRTEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 817
    :cond_7
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init :  push update gridview event to render thread fail, thread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-direct {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->updateGridView(Z)V

    goto :goto_1
.end method

.method public isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 894
    const/4 v1, 0x0

    .local v1, merged:Landroid/database/Cursor;
    move-object v0, p1

    .line 895
    check-cast v0, Landroid/database/Cursor;

    .line 896
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 897
    if-eqz p2, :cond_1

    .line 898
    new-instance v1, Landroid/database/MergeCursor;

    .end local v1           #merged:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 905
    .restart local v1       #merged:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v1

    .line 900
    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 902
    :cond_2
    if-eqz p2, :cond_0

    .line 903
    move-object v1, p2

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isCollapseWithScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mOnlyCollapseChildListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 420
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setSelection(I)V

    .line 413
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mOnlyCollapseChildListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    goto :goto_0

    .line 419
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->resetSDErrorLayout()V

    .line 349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v1, "action_complete_one_download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "action_revert_current_album"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 578
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 579
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v4

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->enableShuffleAllMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    const/16 v0, 0x9

    const v1, 0x7f060006

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->enablePlayAllMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    const/16 v0, 0xc

    const v1, 0x7f060007

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 588
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 0

    .prologue
    .line 571
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onDeletionCompleted()V

    .line 572
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onGridViewItemDeleteComplete()V

    .line 574
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onDestroy()V

    .line 301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    .line 302
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-virtual {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->release()V

    .line 311
    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-eqz v1, :cond_1

    .line 316
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->release()V

    .line 321
    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 324
    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v1, :cond_4

    .line 330
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->destroy()V

    .line 332
    :cond_4
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_5

    .line 333
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->destroy()V

    .line 334
    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 336
    :cond_5
    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 337
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

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

    .line 317
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 318
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

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

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 620
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 645
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 636
    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 639
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 620
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method protected onPlaybackServiceConnection()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 598
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 603
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 604
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 606
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_1

    .line 608
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 609
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 610
    if-eqz v1, :cond_2

    .line 611
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 613
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 598
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onResume()V

    .line 238
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 239
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->onResume()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mRequeryWhenResume:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : requery media data, mRequeryWhenResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mRequeryWhenResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    :cond_3
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mRequeryWhenResume:Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    .line 253
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "media scanner is scanning"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 273
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Fail to bind service. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onStart()V

    .line 279
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsSeriveBinded:Z

    .line 287
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 288
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 290
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->freeInvisibleResource()V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->onPause()V

    .line 295
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onStop()V

    .line 296
    return-void
.end method

.method protected abstract playAllAction(Z)Z
.end method

.method protected prepareAndCompareParentMediaList()Z
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareAndCompareForParentMediaList(Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 949
    iget-boolean v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v5, :cond_3

    .line 950
    if-eqz p3, :cond_0

    .line 951
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 p3, 0x0

    .line 954
    :cond_0
    instance-of v3, p2, Landroid/database/Cursor;

    if-eqz v3, :cond_2

    move-object p3, p2

    .line 955
    check-cast p3, Landroid/database/Cursor;

    .line 956
    if-eqz p3, :cond_1

    .line 957
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 958
    const/4 p3, 0x0

    .line 960
    :cond_1
    const/4 p2, 0x0

    .line 1007
    .end local p2
    :cond_2
    :goto_0
    return v4

    .line 965
    .restart local p2
    :cond_3
    const/4 v1, 0x0

    .line 966
    .local v1, merged:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    move v4, v3

    .line 1007
    goto :goto_0

    .line 968
    :pswitch_0
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object v2, p2

    .line 969
    .local v2, where:Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[processOnQueryComplete] where="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";cursor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0, p3, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 971
    if-eqz v1, :cond_2

    .line 972
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 974
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 975
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 976
    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 968
    .end local v2           #where:Ljava/lang/String;
    .restart local p2
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 981
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 982
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 984
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 985
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 986
    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 990
    :pswitch_2
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-virtual {p0, p3, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 994
    .restart local p2
    :pswitch_3
    if-eqz p2, :cond_5

    instance-of v5, p2, Landroid/database/Cursor;

    if-eqz v5, :cond_5

    .line 995
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    check-cast p2, Landroid/database/Cursor;

    .end local p2
    aput-object p2, v5, v3

    aput-object p3, v5, v4

    invoke-direct {v0, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p3
    .local v0, cursor:Landroid/database/Cursor;
    move-object p3, v0

    .line 998
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local p3
    :cond_5
    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    move v3, v4

    :cond_6
    invoke-static {p0, p3, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Z)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 1000
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->triggerPlayAllAction()V

    .line 1001
    :cond_7
    if-eqz p3, :cond_2

    .line 1002
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setAsyncQueryStatus(Z)V
    .locals 0
    .parameter "isQuerying"

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 690
    return-void
.end method

.method protected abstract setEmptyView()V
.end method

.method protected setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V
    .locals 0
    .parameter "mediaType"

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMediaType:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 1177
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

    .line 485
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 490
    const-string v4, ""

    .line 510
    :goto_0
    return-object v4

    .line 493
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 494
    .local v1, normalTitle:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v2, v4, v6

    .line 495
    .local v2, oneCountTitle:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v0, v4, v7

    .line 497
    .local v0, countsTlte:I
    if-lez p2, :cond_2

    .line 499
    if-ne p2, v6, :cond_1

    if-lez v2, :cond_1

    .line 500
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 502
    .end local v3           #tempString:Ljava/lang/String;
    :cond_1
    if-le p2, v6, :cond_2

    if-lez v0, :cond_2

    .line 503
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    .restart local v3       #tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 507
    .end local v3           #tempString:Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_3

    .line 508
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 510
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

    .line 744
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 745
    if-nez p1, :cond_2

    .line 746
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showDatabaseError()V

    .line 747
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->closeContextMenu()V

    .line 748
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 750
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isActivityResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 754
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 756
    :cond_1
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_0
    return v0

    .line 758
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 759
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 761
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 763
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setEmptyView()V

    .line 764
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor.getCount() == 0"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 767
    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 261
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    return-void
.end method
