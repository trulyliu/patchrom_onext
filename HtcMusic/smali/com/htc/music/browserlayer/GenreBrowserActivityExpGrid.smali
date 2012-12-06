.class public Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;,
        Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final QUERY_TOKEN_HAS_UNKNOWN_GENRE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "[GenreBrowserActivityExpGrid]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final UNKNOWN_GENRE:J = -0x1L


# instance fields
.field private final QUERY_TOKEN_GET_CHILD:I

.field private final QUERY_TOKEN_GET_CHILD_WITH_UNKNOW:I

.field mAlbumCols:[Ljava/lang/String;

.field mAlbumTextView:Landroid/view/View;

.field mAllSongsLabel:Ljava/lang/String;

.field private mChildCursor:Landroid/database/Cursor;

.field mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field mDeleteMessage:Landroid/os/Message;

.field mGenreCols:[Ljava/lang/String;

.field mGenreTextView:Landroid/view/View;

.field private mIsHVGA:Z

.field mIsProcessingPrepareReadyEvent:Z

.field private mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

.field private mNonUIHandler:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;

.field private mNonUIHandlerThread:Landroid/os/HandlerThread;

.field mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

.field private mOnPrepareReadyHandler:Landroid/os/Handler;

.field private mOrientation:I

.field mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mQueryChildItemReady:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    .line 83
    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;

    .line 186
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsHVGA:Z

    .line 392
    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreTextView:Landroid/view/View;

    .line 393
    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumTextView:Landroid/view/View;

    .line 395
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 635
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 817
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    .line 1208
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

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    .line 1267
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsProcessingPrepareReadyEvent:Z

    .line 1269
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$10;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$10;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1302
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$11;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    .line 1355
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->QUERY_TOKEN_GET_CHILD:I

    .line 1356
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->QUERY_TOKEN_GET_CHILD_WITH_UNKNOW:I

    .line 1357
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    .line 1437
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    .line 1636
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->triggerPlayAllAction()V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$5800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->playAllActionImpl(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method private getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "genreId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1189
    invoke-direct {p0, p1, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1190
    .local v0, ret:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1191
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "ret == null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1194
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1195
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1196
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1202
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :goto_0
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "unknown != null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_1
    return-object v0

    .line 1200
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2
    .parameter "genreId"
    .parameter "unknown"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    const-string v1, "album COLLATE NOCASE ASC"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/htc/music/util/ContentUtils;->getGenresAlbumCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getGenresAlbumCusror(I)Landroid/database/Cursor;
    .locals 6
    .parameter "parentIndex"

    .prologue
    const/4 v3, 0x0

    .line 1146
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1159
    :goto_0
    return-object v3

    .line 1147
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, genresId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, genre:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1150
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1151
    :cond_1
    const/4 v0, 0x0

    .line 1152
    goto :goto_0

    .line 1154
    :cond_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1158
    .local v3, ret:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1159
    goto :goto_0
.end method

.method private getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1374
    if-eqz p1, :cond_0

    .line 1375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setAsyncQueryStatus(Z)V

    .line 1377
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    const-string v4, "name COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->getGenresCursor(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSelectList()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 821
    const-string v2, "[GenreBrowserActivityExpGrid]"

    const-string v3, "mCurrentGenreId = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 834
    :goto_0
    return-object v0

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 826
    .local v0, list:[I
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v2, :cond_2

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0

    .line 832
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {p0, v2, v1, v3, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method private getUnknownCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 1442
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1443
    .local v0, mc:Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1444
    return-object v0
.end method

.method private initExpGridView()V
    .locals 12

    .prologue
    const v11, 0x205000c

    const/4 v10, 0x0

    .line 281
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 283
    new-instance v4, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    .line 285
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, genreFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, albumFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 289
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 290
    .local v2, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 292
    new-instance v4, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 293
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v4, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 294
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewUtil()V

    .line 295
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 296
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 297
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 298
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 299
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 300
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 301
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 302
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 304
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v5, "common_popupmenu_arrow"

    const v6, 0x2080125

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "music_popupmenu_top"

    const v7, 0x7f020064

    invoke-static {p0, v6, v7}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "music_popupmenu_center"

    const v8, 0x7f020063

    invoke-static {p0, v7, v8}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "music_popupmenu_bottom"

    const v9, 0x7f020062

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewBackground(IIII)V

    .line 309
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const v5, 0x7f030022

    const v6, 0x7f070053

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 310
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 311
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 312
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->child_view_offsetY:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewOffsetY(I)V

    .line 313
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildIndicatorOffsetY(I)V

    .line 314
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMargin(II)V

    .line 315
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->bottom_padding_child:I

    invoke-virtual {v4, v10, v5, v10, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 316
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 317
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v6, v6, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v4, v10, v5, v10, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 318
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 320
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 321
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 322
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 323
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 580
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 581
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 582
    new-instance v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 604
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 456
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$2;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 486
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 496
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 8
    .parameter "genreFolderParam"
    .parameter "albumFolderParam"

    .prologue
    const v7, 0x7f030025

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 326
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 327
    .local v0, coverParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003f

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 328
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 329
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 330
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 331
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 332
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 338
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 339
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020040

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 340
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 341
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 342
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 343
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 344
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 345
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 346
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 347
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 348
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 349
    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 350
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 352
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 353
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 357
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #coverParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 358
    .restart local v0       #coverParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020046

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 359
    const v3, 0x7f020042

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 360
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 361
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 362
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 363
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 364
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 370
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 371
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020047

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 373
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 374
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 375
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 376
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 377
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 378
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 379
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 380
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 381
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 382
    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 383
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 385
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 386
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 387
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 499
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 500
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    .line 576
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 577
    return-void
.end method

.method private mergeUnknown(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1581
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1582
    .local v1, unknown:Landroid/database/Cursor;
    move-object v0, p1

    .line 1583
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1584
    const-string v2, "[GenreBrowserActivityExpGrid]"

    const-string v3, "@@@@ mergeUnknown() - not null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    new-instance v0, Landroid/database/MergeCursor;

    .end local v0           #cur:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1589
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private playAllActionImpl(Z)Z
    .locals 25
    .parameter "forceShuffle"

    .prologue
    .line 1005
    const/4 v15, 0x0

    .line 1006
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v3, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v3, " AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v3, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, whereclause:Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "album_id"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const-string v8, "title COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1016
    .local v23, results:Landroid/database/Cursor;
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "name COLLATE NOCASE ASC"

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v12}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1020
    .local v19, genres:Landroid/database/Cursor;
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 1022
    :cond_1
    if-eqz v23, :cond_2

    .line 1023
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1024
    const/16 v23, 0x0

    .line 1026
    :cond_2
    if-eqz v19, :cond_3

    .line 1027
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1028
    const/16 v19, 0x0

    .line 1030
    :cond_3
    const/4 v3, 0x1

    .line 1094
    :goto_0
    return v3

    .line 1032
    :cond_4
    const/4 v15, 0x0

    .line 1033
    if-nez v19, :cond_7

    const/16 v18, 0x0

    .line 1034
    .local v18, genreCount:I
    :goto_1
    move/from16 v22, v18

    .line 1035
    .local v22, len:I
    if-eqz v23, :cond_5

    .line 1036
    add-int/lit8 v22, v22, 0x1

    .line 1037
    move-object/from16 v15, v23

    .line 1040
    :cond_5
    move/from16 v0, v22

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v16, v0

    .line 1041
    .local v16, cursors:[Landroid/database/Cursor;
    if-eqz v23, :cond_6

    .line 1043
    add-int/lit8 v3, v22, -0x1

    aput-object v23, v16, v3

    .line 1045
    :cond_6
    if-eqz v19, :cond_9

    .line 1046
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1047
    const-string v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1049
    .local v14, colidx:I
    new-instance v24, Ljava/lang/StringBuilder;

    .end local v24           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .restart local v24       #where:Ljava/lang/StringBuilder;
    const-string v3, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v3, " AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1054
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 1055
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1056
    .local v20, gid:I
    const-string v3, "external"

    move/from16 v0, v20

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "album_id"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const-string v8, "album COLLATE NOCASE ASC, track"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1060
    .local v13, c:Landroid/database/Cursor;
    aput-object v13, v16, v21

    .line 1061
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 1054
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 1033
    .end local v13           #c:Landroid/database/Cursor;
    .end local v14           #colidx:I
    .end local v16           #cursors:[Landroid/database/Cursor;
    .end local v18           #genreCount:I
    .end local v20           #gid:I
    .end local v21           #i:I
    .end local v22           #len:I
    :cond_7
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v18

    goto :goto_1

    .line 1063
    .restart local v14       #colidx:I
    .restart local v16       #cursors:[Landroid/database/Cursor;
    .restart local v18       #genreCount:I
    .restart local v21       #i:I
    .restart local v22       #len:I
    :cond_8
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #cursor:Landroid/database/Cursor;
    invoke-direct/range {v15 .. v16}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1066
    .end local v14           #colidx:I
    .end local v21           #i:I
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_9
    const-string v3, "[GenreBrowserActivityExpGrid]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[playAllActionImpl][] cursor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    if-eqz v15, :cond_a

    .line 1068
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "[playAllActionImpl][cursor != null] Post to UI thread to play all. "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    move-object/from16 v17, v15

    .line 1070
    .local v17, finalCursor:Landroid/database/Cursor;
    new-instance v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$9;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;ZLandroid/database/Cursor;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1090
    .end local v17           #finalCursor:Landroid/database/Cursor;
    :cond_a
    if-eqz v19, :cond_b

    .line 1091
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1092
    const/16 v19, 0x0

    .line 1094
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private startAlbumDetailViewActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 625
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 629
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    .line 633
    return-void
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V

    .line 1478
    const/4 v0, 0x0

    return-object v0
.end method

.method protected asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "cursor"
    .parameter "bundle"

    .prologue
    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1366
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 607
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 608
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 609
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 611
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 613
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 616
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 622
    :goto_0
    return-void

    .line 618
    :cond_0
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 619
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 620
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1623
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1628
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1370
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "wherea"

    .prologue
    const/4 v4, 0x0

    .line 1449
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1450
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    const-string v0, " AND is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    const/4 v7, 0x0

    .line 1455
    .local v7, ret:Landroid/database/Cursor;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1456
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1460
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1461
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getUnknownCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1464
    :cond_0
    if-eqz v6, :cond_1

    .line 1465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1466
    const/4 v6, 0x0

    .line 1468
    :cond_1
    return-object v7
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 1105
    sparse-switch p1, :sswitch_data_0

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1107
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList()[I

    move-result-object v0

    .line 1109
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 1110
    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1111
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1116
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->finish()V

    goto :goto_0

    .line 1105
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 190
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 192
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOrientation:I

    .line 197
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 201
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsHVGA:Z

    if-eqz v1, :cond_2

    .line 202
    const/4 v0, 0x3

    .line 206
    .local v0, tempNumColumn:I
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 207
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_landscape_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 214
    :goto_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridViewParameters(IILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    goto :goto_0

    .line 204
    .end local v0           #tempNumColumn:I
    :cond_2
    const/4 v0, 0x4

    .restart local v0       #tempNumColumn:I
    goto :goto_1

    .line 209
    .end local v0           #tempNumColumn:I
    :cond_3
    const/4 v0, 0x2

    .line 210
    .restart local v0       #tempNumColumn:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 211
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    if-eqz p1, :cond_2

    .line 245
    const-string v3, "playlisturi"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 252
    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 254
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isHVGA(Landroid/util/DisplayMetrics;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsHVGA:Z

    .line 255
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setVolumeControlStream(I)V

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    const v3, 0x7f030026

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setContentView(I)V

    .line 265
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 268
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initExpGridView()V

    .line 270
    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->enableSearch()V

    .line 275
    :cond_1
    new-instance v3, Landroid/os/HandlerThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-NonUIHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    .line 276
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 277
    new-instance v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;

    .line 278
    return-void

    .line 247
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 248
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "playlisturi"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 839
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 840
    .local v0, id:I
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList()[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 841
    return-void
.end method

.method public onDeleteAllChildsReadyIRT(II)V
    .locals 2
    .parameter "originalIndex"
    .parameter "adjustedIndex"

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1615
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1616
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1617
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1618
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1619
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 237
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 238
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 658
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 659
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 660
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v8, intent:Landroid/content/Intent;
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "com.htc.media/albumtrack"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v0, "pickermode"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const/16 v0, 0xf

    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 710
    .end local v8           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    const-string v0, "[GenreBrowserActivityExpGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to launch album detail view. albumId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v0, :cond_2

    .line 674
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 675
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.PICK"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "com.htc.media/albumtrack"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v0, "genre"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 681
    .end local v8           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;)V

    goto :goto_0

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 694
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 695
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 696
    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 699
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    .line 701
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/music/util/ContentUtils;->getGenresAlbumQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    goto/16 :goto_0

    .line 705
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 803
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 804
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    const-string v0, "[GenreBrowserActivityExpGrid]"

    const-string v1, "@@@@ mDeleteType:TYPE_GENRE"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const-string v0, "[GenreBrowserActivityExpGrid]"

    const-string v1, "@@@@ mDeleteType:TYPE_ALBUM"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {p0, v0, v2, v1, v2}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 914
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "call onDeletionCompleted()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 916
    .local v1, genresId:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 917
    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 918
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 920
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg2:I

    aput v4, v0, v3

    .line 922
    .local v0, a:[I
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 923
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v3, v0, v6, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 925
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 714
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 715
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 798
    :goto_0
    return-void

    .line 716
    :cond_0
    const/4 v3, 0x0

    .line 717
    .local v3, headerTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_4

    .line 718
    :cond_1
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    .line 722
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 723
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 724
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 725
    .local v4, ids:[I
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 727
    .local v1, dlnaMode:I
    const/4 v2, 0x1

    .line 728
    .local v2, enableSearch:Z
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_5

    .line 729
    :cond_2
    const/4 v2, 0x0

    .line 735
    :cond_3
    :goto_2
    if-nez v2, :cond_8

    .line 736
    if-nez v1, :cond_7

    .line 738
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 744
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_0

    .line 796
    .restart local v4       #ids:[I
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->hideHtcContextMenu()V

    .line 797
    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 720
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #enableSearch:Z
    .end local v4           #ids:[I
    .end local v5           #items:[Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 730
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #enableSearch:Z
    .restart local v4       #ids:[I
    .restart local v5       #items:[Ljava/lang/CharSequence;
    :cond_5
    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const v7, 0x7f06003e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 732
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 752
    :cond_7
    new-array v5, v8, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 757
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v8, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_1

    .restart local v4       #ids:[I
    goto :goto_3

    .line 764
    :cond_8
    if-nez v1, :cond_9

    .line 766
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 773
    .restart local v5       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x5

    new-array v4, v6, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_2

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 782
    :cond_9
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 788
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_3

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 744
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 757
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 773
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 788
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 929
    sparse-switch p1, :sswitch_data_0

    .line 991
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onHtcContextItemSelected(I)Z

    move-result v0

    :goto_1
    return v0

    .line 931
    :sswitch_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 932
    const-string v0, "[GenreBrowserActivityExpGrid]"

    const-string v1, "[onHtcContextItemSelected][PLAY_SELECTION] mCurrentGenreId = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x0

    goto :goto_1

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v0, :cond_3

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V

    :goto_2
    move v0, v11

    .line 946
    goto :goto_1

    .line 941
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v4, "track"

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 948
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 949
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showDialog(I)V

    :goto_3
    move v0, v11

    .line 958
    goto :goto_1

    .line 952
    :cond_4
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 953
    .local v10, intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v10, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 954
    const-string v0, "pickermode"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string v0, "AddToPlaylistData"

    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList()[I

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0, v10, v11}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 960
    .end local v10           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v0, :cond_7

    .line 962
    :cond_5
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 963
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_4
    move v0, v11

    .line 981
    goto/16 :goto_1

    .line 965
    :catch_0
    move-exception v9

    .line 966
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v0, "[GenreBrowserActivityExpGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, long click genre item, NumberFormatException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 967
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 968
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "[GenreBrowserActivityExpGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, long click genre item, RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 972
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_7
    :try_start_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_6

    .line 973
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 975
    :catch_2
    move-exception v9

    .line 976
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v0, "[GenreBrowserActivityExpGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, long click album item, NumberFormatException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 977
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v9

    .line 978
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "[GenreBrowserActivityExpGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, long click album item, RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 983
    .end local v9           #e:Landroid/os/RemoteException;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showDeleteDialog()V

    move v0, v11

    .line 984
    goto/16 :goto_1

    .line 986
    :sswitch_4
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareReadyIRT(I)V
    .locals 3
    .parameter "clickIndex"

    .prologue
    const/4 v2, 0x0

    .line 1334
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    if-nez v1, :cond_2

    .line 1338
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1344
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 1346
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1347
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public playAllAction(Z)Z
    .locals 1
    .parameter "forceShuffle"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->playAll(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;->access$4900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$NonUIHandler;Z)V

    .line 998
    const/4 v0, 0x1

    .line 1001
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 1483
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v0, :cond_3

    .line 1484
    if-eqz p3, :cond_0

    .line 1485
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1486
    const/4 p3, 0x0

    .line 1488
    :cond_0
    instance-of v0, p2, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    move-object p3, p2

    .line 1489
    check-cast p3, Landroid/database/Cursor;

    .line 1490
    if-eqz p3, :cond_1

    .line 1491
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1492
    const/4 p3, 0x0

    .line 1494
    :cond_1
    const/4 p2, 0x0

    .end local p2
    :cond_2
    move v0, v9

    .line 1549
    :goto_0
    return v0

    .line 1499
    .restart local p2
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1549
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0

    .line 1501
    :pswitch_0
    const/4 v8, 0x0

    .line 1503
    .local v8, unknownCursor:Landroid/database/Cursor;
    if-eqz p3, :cond_4

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1504
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getUnknownCursor()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1507
    :cond_4
    if-eqz p3, :cond_5

    .line 1508
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1511
    :cond_5
    invoke-super {p0, v9, p2, v8}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0

    .line 1507
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_6

    .line 1508
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1507
    :cond_6
    throw v0

    .line 1513
    .end local v8           #unknownCursor:Landroid/database/Cursor;
    :pswitch_1
    if-eqz p3, :cond_7

    .line 1514
    iput-object p3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1515
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3ea

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/htc/music/util/ContentUtils;->getGenresAlbumQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v9

    .line 1524
    goto :goto_0

    .line 1519
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1520
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1521
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    goto :goto_1

    .line 1526
    :pswitch_2
    if-eqz p3, :cond_8

    .line 1527
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 1528
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    aput-object p3, v1, v9

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1535
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1536
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 1537
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1538
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1545
    :cond_9
    :goto_3
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryChildItemReady:Z

    move v0, v9

    .line 1546
    goto/16 :goto_0

    .line 1530
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1531
    const/4 p3, 0x0

    goto :goto_2

    .line 1540
    :cond_b
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1541
    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 1499
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1576
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showEmptyView(I)V

    .line 1577
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1556
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1559
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1572
    :goto_0
    return-void

    .line 1568
    :cond_0
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 846
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 849
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 851
    const v4, 0x7f06000f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, f:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 854
    :cond_1
    const v4, 0x7f060040

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, headerTitle:Ljava/lang/String;
    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .end local v3           #headerTitle:Ljava/lang/String;
    .local v1, desc:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v4, :cond_2

    .line 870
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$8;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 907
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 908
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 910
    return-void

    .line 856
    .end local v1           #desc:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    .restart local v3       #headerTitle:Ljava/lang/String;
    goto :goto_0

    .line 860
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #headerTitle:Ljava/lang/String;
    :cond_4
    const v4, 0x7f060011

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 862
    .restart local v2       #f:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 863
    :cond_5
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f06003e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_1

    .line 865
    .end local v1           #desc:Ljava/lang/String;
    :cond_6
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_1
.end method
