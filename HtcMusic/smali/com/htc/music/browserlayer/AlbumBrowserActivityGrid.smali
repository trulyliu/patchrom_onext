.class public Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "AlbumBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;
    }
.end annotation


# static fields
.field protected static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field protected static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field protected static final FOLDER_LAYER_NUMBER:I = 0x1

.field protected static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final PLAY_ALL_SORT_ORDER:Ljava/lang/String; = "track"

.field private static final TAG:Ljava/lang/String; = "[AlbumBrowserActivityGrid]"

.field protected static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mDbTable:I

.field private mDescription:Ljava/lang/String;

.field mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

.field private mOrientation:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mShowCompleteAlbumWithoutOtherType:Z

.field mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 90
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    .line 376
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 1033
    if-eqz p1, :cond_0

    .line 1034
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 1036
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    const-string v6, "album COLLATE NOCASE ASC"

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-static/range {v0 .. v8}, Lcom/htc/music/util/ContentUtils;->getAlbumCursorForMultiCondition(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 316
    new-instance v2, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    .line 318
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 321
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 322
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 323
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 324
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 325
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 327
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 328
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 329
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 330
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 331
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 333
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 334
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 335
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 336
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 337
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 338
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 339
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 486
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 487
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 488
    new-instance v1, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 509
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 409
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 434
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 444
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 343
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 344
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020046

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 345
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 346
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 347
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 348
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 349
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 355
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 356
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020047

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 357
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 358
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 359
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 360
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 361
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 362
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 363
    const v3, 0x7f030025

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 364
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 365
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 367
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 369
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 371
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 372
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 373
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 447
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 449
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    .line 482
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 483
    return-void
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "cursor"
    .parameter "where"

    .prologue
    const/4 v6, 0x0

    .line 1013
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1014
    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1018
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    move-object v2, p1

    move-object v5, p2

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-object v6

    .line 1016
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method protected asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    .locals 8
    .parameter "cursor"
    .parameter "bundle"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const-string v1, "force-shuffle"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    const-string v2, "uri"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v2, "where-clause"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "track"

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const/4 v0, 0x1

    return v0

    .line 960
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1025
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 512
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 513
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 515
    return-void
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1029
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 1001
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1002
    sget-object v1, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 1179
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 800
    sparse-switch p1, :sswitch_data_0

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 802
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 804
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 805
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 809
    .local v0, list:[I
    :goto_1
    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 810
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 807
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :cond_2
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v2, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v0

    .restart local v0       #list:[I
    goto :goto_1

    .line 814
    .end local v0           #list:[I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 800
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 187
    const-string v0, "[AlbumBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 189
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mOrientation:I

    .line 194
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    if-eqz p1, :cond_6

    .line 245
    const-string v2, "selectedalbum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 246
    const-string v2, "artistid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 247
    const-string v2, "genreid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 248
    const-string v2, "composer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 249
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 250
    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 251
    const-string v2, "dbTable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 252
    const-string v2, "showcompletealbum"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    .line 264
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 273
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setContentView(I)V

    .line 286
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 288
    new-instance v2, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$1;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.htc.music.lockscreen_start"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v2, :cond_3

    new-instance v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 303
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initGridView()V

    .line 304
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 305
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->enableSearch()V

    .line 308
    :cond_4
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 309
    sget-object v2, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ALBUM_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V

    .line 311
    :cond_5
    return-void

    .line 254
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 255
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 256
    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 257
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 258
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 259
    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 260
    const-string v2, "dbTable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 261
    const-string v2, "showcompletealbum"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    goto/16 :goto_0

    .line 275
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #f:Landroid/content/IntentFilter;
    :cond_7
    const v2, 0x7f030027

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setContentView(I)V

    .line 276
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v2, :cond_0

    .line 277
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 278
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 6
    .parameter "playlistName"

    .prologue
    .line 648
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 650
    .local v0, id:I
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 655
    .local v1, list:[I
    :goto_0
    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 656
    return-void

    .line 653
    .end local v1           #list:[I
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v2, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v1

    .restart local v1       #list:[I
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 239
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumBrowserActivityGrid]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 519
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->clickIndexInit(I)V

    .line 520
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 521
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. currentAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 525
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v1, :cond_0

    .line 530
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    :cond_0
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v1, "dbTable"

    iget v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    .line 548
    :goto_0
    return-void

    .line 539
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 541
    const-string v1, "playlisturi"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string v1, "pickermode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string v1, "dbTable"

    iget v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v1, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    return-void
.end method

.method public onGridViewItemDeleteComplete()V
    .locals 4

    .prologue
    .line 704
    const-string v1, "[AlbumBrowserActivityGrid]"

    const-string v2, "call onDeletionCompleted()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_1

    .line 707
    :cond_0
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicGridViewUtil = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mGridView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    aput v2, v0, v1

    .line 711
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 712
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 552
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->clickIndexInit(I)V

    .line 553
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 555
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 559
    .local v1, dlnaMode:I
    const/4 v2, 0x0

    .line 560
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 561
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 562
    .local v3, ids:[I
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const v6, 0x7f06003e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 563
    :cond_0
    const v5, 0x7f06003e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    if-nez v1, :cond_2

    .line 568
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f060048

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x7f06004a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 575
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .line 634
    .restart local v3       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->hideHtcContextMenu()V

    .line 635
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 637
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 583
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_2
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f060048

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 589
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_0

    .line 598
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 600
    if-nez v1, :cond_4

    .line 602
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f060048

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x7f06004a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x204014d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 610
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x5

    new-array v3, v5, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto :goto_0

    .line 619
    :cond_4
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f060048

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x204014d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 626
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto/16 :goto_0

    .line 575
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 589
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 610
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 626
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 15
    .parameter "id"

    .prologue
    .line 717
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v11

    .line 718
    .local v11, dlnaMode:I
    if-nez v11, :cond_8

    .line 719
    sparse-switch p1, :sswitch_data_0

    .line 794
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 721
    :sswitch_1
    const/4 v0, 0x1

    const-string v1, "Albums"

    invoke-static {v0, v1}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 722
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v4, "track"

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-static/range {v0 .. v9}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v4, "track"

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-static/range {v0 .. v9}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 733
    :sswitch_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 734
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showDialog(I)V

    goto :goto_0

    .line 738
    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 739
    :cond_6
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v10

    .line 743
    .local v10, addToPlayListData:[I
    :goto_3
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v13, intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v13, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 745
    const-string v0, "pickermode"

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    const-string v0, "AddToPlaylistData"

    invoke-virtual {v13, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 747
    const/4 v0, 0x1

    invoke-virtual {p0, v13, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 741
    .end local v10           #addToPlayListData:[I
    .end local v13           #intent:Landroid/content/Intent;
    :cond_7
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v10

    .restart local v10       #addToPlayListData:[I
    goto :goto_3

    .line 752
    .end local v10           #addToPlayListData:[I
    :sswitch_3
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 755
    :catch_0
    move-exception v12

    .line 756
    .local v12, e:Ljava/lang/NumberFormatException;
    const-string v0, "[AlbumBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    .line 758
    .local v12, e:Landroid/os/RemoteException;
    const-string v0, "[AlbumBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    .end local v12           #e:Landroid/os/RemoteException;
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showDeleteDialog()V

    goto/16 :goto_0

    .line 766
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 770
    :cond_8
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 776
    :sswitch_6
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v10

    .line 778
    .restart local v10       #addToPlayListData:[I
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 779
    .restart local v13       #intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v13, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 780
    const-string v0, "pickermode"

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v0, "AddToPlaylistData"

    invoke-virtual {v13, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 782
    const/4 v0, 0x1

    invoke-virtual {p0, v13, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 772
    .end local v10           #addToPlayListData:[I
    .end local v13           #intent:Landroid/content/Intent;
    :sswitch_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v4, "track"

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x11 -> :sswitch_5
    .end sparse-switch

    .line 770
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x11 -> :sswitch_8
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    if-eqz p1, :cond_1

    .line 137
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 138
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 139
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 140
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 141
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 142
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 143
    const-string v0, "dbTable"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 144
    const-string v0, "showcompletealbum"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    .line 145
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 150
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 151
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 153
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setTitle()V

    .line 156
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 208
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "showcompletealbum"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 18
    .parameter "forceShuffle"

    .prologue
    .line 867
    const/4 v1, 0x1

    const-string v2, "Albums"

    invoke-static {v1, v2}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 869
    const/4 v4, 0x0

    .line 870
    .local v4, uri:Landroid/net/Uri;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "is_music>=1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v1, " AND title"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != \'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mShowCompleteAlbumWithoutOtherType:Z

    if-nez v1, :cond_7

    .line 875
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    .line 882
    .local v13, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v13, v1

    if-nez v1, :cond_3

    .line 883
    const-string v1, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .end local v13           #genreId:J
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 932
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 933
    sget-object v4, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 939
    :cond_2
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 942
    .local v10, basicLength:I
    const-string v1, " AND album != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 946
    .local v6, whereClause:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 947
    const-string v1, " AND album = \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 949
    .local v3, bundle:Landroid/os/Bundle;
    const-string v1, "force-shuffle"

    move/from16 v0, p1

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    const-string v1, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v1, "where-clause"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x2

    sget-object v5, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "album COLLATE NOCASE ASC, track"

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x1

    return v1

    .line 886
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #whereClause:Ljava/lang/String;
    .end local v10           #basicLength:I
    .restart local v13       #genreId:J
    :cond_3
    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    invoke-static {v1, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 889
    .end local v13           #genreId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 895
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 896
    .local v11, composer:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v16

    .line 897
    .local v16, unknown:Z
    if-eqz v16, :cond_6

    .line 898
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-static/range {v17 .. v17}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 901
    :cond_6
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 907
    .end local v11           #composer:Ljava/lang/String;
    .end local v16           #unknown:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 908
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 910
    .local v9, albumIdField:I
    if-gez v9, :cond_9

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 914
    :cond_9
    if-ltz v9, :cond_1

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 917
    .local v12, count:I
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const-string v1, "album_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v1, " IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    add-int/lit8 v1, v12, -0x1

    if-ge v15, v1, :cond_a

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 920
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 924
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 935
    .end local v9           #albumIdField:I
    .end local v12           #count:I
    .end local v15           #i:I
    :cond_b
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1138
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showEmptyView(I)V

    .line 1139
    return-void
.end method

.method protected setTitle()V
    .locals 4

    .prologue
    const v3, 0x7f060019

    const/4 v2, 0x0

    .line 1145
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setTitle(Ljava/lang/String;)V

    .line 1165
    .end local v0           #fancyName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1152
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 661
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 664
    :cond_0
    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, f:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    :cond_1
    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f06003e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, desc:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v3, :cond_2

    .line 675
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x2040214

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$8;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    new-instance v5, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$7;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 697
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 698
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 700
    return-void

    .line 670
    .end local v1           #desc:Ljava/lang/String;
    :cond_3
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_0
.end method
