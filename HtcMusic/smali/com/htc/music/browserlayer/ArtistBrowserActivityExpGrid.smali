.class public Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALBUM_ID_TRACK_SORT_ORDER:Ljava/lang/String; = "album_id COLLATE NOCASE ASC, title COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final ARTIST_ID_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist_id COLLATE NOCASE ASC"

.field private static final QUERY_TOKEN_GET_CHILD:I = 0x3e9

.field private static final QUERY_TOKEN_GET_CHILD_WITH_UNKNOW:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "[ArtistBrowserActivityExpGrid]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mAlbumCols:[Ljava/lang/String;

.field mAlbumForArtistCols:[Ljava/lang/String;

.field mAlbumTextView:Landroid/view/View;

.field mAllSongsLabel:Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field mArtistTextView:Landroid/view/View;

.field private mChildCursor:Landroid/database/Cursor;

.field mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field mDeleteMessage:Landroid/os/Message;

.field private mIsHVGA:Z

.field mIsProcessingPrepareReadyEvent:Z

.field private mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

.field mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

.field private mOnPrepareReadyHandler:Landroid/os/Handler;

.field private mOrientation:I

.field mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mQueryChildItemReady:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 93
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const-string v1, "number_of_albums"

    aput-object v1, v0, v4

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistCols:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    const-string v1, "minyear"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 216
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsHVGA:Z

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistTextView:Landroid/view/View;

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumTextView:Landroid/view/View;

    .line 428
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 687
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 875
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    .line 1230
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsProcessingPrepareReadyEvent:Z

    .line 1232
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$9;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1265
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$10;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    .line 1319
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    .line 1516
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_id"

    aput-object v1, v0, v5

    const-string v1, "album_art"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minyear"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumForArtistCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method private getAllSongsByAlbumIdOrder(Landroid/database/Cursor;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    .locals 20
    .parameter "cursor"

    .prologue
    .line 1140
    const/4 v12, 0x0

    .line 1142
    .local v12, listPaire:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1143
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 1144
    .local v7, artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    invoke-virtual {v7}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v19

    if-gtz v19, :cond_0

    .line 1145
    const/16 v19, 0x0

    .line 1206
    .end local v7           #artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :goto_0
    return-object v19

    .line 1150
    .restart local v7       #artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_0
    const-string v19, "album_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1151
    .local v5, albumidColumn:I
    const-string v19, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1154
    .local v18, trackidColumn:I
    if-ltz v5, :cond_1

    if-gez v18, :cond_2

    .line 1155
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 1157
    :cond_2
    if-eqz p1, :cond_b

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-ltz v19, :cond_b

    .line 1158
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1160
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1161
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_4

    .line 1162
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1163
    .local v4, albumid:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .local v17, trackIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v17, :cond_3

    .line 1164
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1166
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #trackIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1167
    .restart local v17       #trackIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1173
    .end local v4           #albumid:I
    .end local v17           #trackIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1174
    .local v16, trackID:[I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    move/from16 v0, v19

    new-array v3, v0, [I

    .line 1175
    .local v3, albumIDForTracks:[I
    const/4 v15, 0x0

    .line 1176
    .local v15, trackCount:I
    invoke-virtual {v7}, Lcom/htc/music/widget/ArtistCursorWrapper;->moveToFirst()Z

    .line 1178
    :goto_3
    invoke-virtual {v7}, Lcom/htc/music/widget/ArtistCursorWrapper;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_a

    .line 1179
    invoke-virtual {v7}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray()[I

    move-result-object v2

    .line 1180
    .local v2, albumID:[I
    if-eqz v2, :cond_5

    array-length v0, v2

    move/from16 v19, v0

    if-gtz v19, :cond_6

    .line 1181
    :cond_5
    invoke-virtual {v7}, Lcom/htc/music/widget/ArtistCursorWrapper;->moveToNext()Z

    goto :goto_3

    .line 1184
    :cond_6
    move-object v6, v2

    .local v6, arr$:[I
    array-length v11, v6

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_4
    if-ge v9, v11, :cond_9

    aget v10, v6, v9

    .line 1185
    .local v10, id:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1186
    .restart local v17       #trackIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v17, :cond_7

    .line 1184
    .end local v9           #i$:I
    :goto_5
    add-int/lit8 v8, v9, 0x1

    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_4

    .line 1189
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1190
    .local v14, tid:I
    aput v14, v16, v15

    .line 1191
    aput v10, v3, v15

    .line 1192
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1194
    .end local v14           #tid:I
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1195
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1197
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #id:I
    .end local v17           #trackIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9       #i$:I
    :cond_9
    invoke-virtual {v7}, Lcom/htc/music/widget/ArtistCursorWrapper;->moveToNext()Z

    goto :goto_3

    .line 1199
    .end local v2           #albumID:[I
    .end local v6           #arr$:[I
    .end local v9           #i$:I
    .end local v11           #len$:I
    :cond_a
    new-instance v12, Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    .end local v12           #listPaire:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    invoke-direct {v12}, Lcom/htc/music/util/MusicUtils$PlayAllListPair;-><init>()V

    .line 1200
    .restart local v12       #listPaire:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    .line 1201
    iput-object v3, v12, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    .end local v3           #albumIDForTracks:[I
    .end local v5           #albumidColumn:I
    .end local v7           #artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v15           #trackCount:I
    .end local v16           #trackID:[I
    .end local v18           #trackidColumn:I
    :cond_b
    move-object/from16 v19, v12

    .line 1206
    goto/16 :goto_0
.end method

.method private getArtistAlbumChildCusror(I)Landroid/database/Cursor;
    .locals 6
    .parameter "parentIndex"

    .prologue
    const/4 v3, 0x0

    .line 1453
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1473
    :goto_0
    return-object v3

    .line 1455
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v1

    .line 1456
    .local v1, artistId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, artist:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1459
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1460
    :cond_1
    const/4 v2, 0x0

    .line 1461
    goto :goto_0

    .line 1466
    :cond_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1472
    .local v3, ret:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1473
    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "artistId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1380
    invoke-direct {p0, p1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1382
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p1, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1383
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 1384
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1385
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1394
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 1389
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1390
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2
    .parameter "artistId"
    .parameter "unknown"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    const-string v1, "album COLLATE NOCASE ASC"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/htc/music/util/ContentUtils;->getArtistAlbumsCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1523
    if-eqz p1, :cond_0

    .line 1524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setAsyncQueryStatus(Z)V

    .line 1526
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumForArtistCols:[Ljava/lang/String;

    const-string v2, "artist_id COLLATE NOCASE ASC"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->getAlbumCursorForArtistPage(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSelectList()[I
    .locals 4

    .prologue
    .line 878
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 879
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    const-string v3, "mCurrentArtistId = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/4 v1, 0x0

    .line 894
    :cond_0
    :goto_0
    return-object v1

    .line 882
    :cond_1
    const/4 v1, 0x0

    .line 884
    .local v1, list:[I
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v2, :cond_3

    .line 887
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v2, v2, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v2, :cond_0

    .line 888
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 889
    .local v0, cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray(I)[I

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbums(Landroid/content/Context;I[I)[I

    move-result-object v1

    .line 890
    goto :goto_0

    .line 892
    .end local v0           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    goto :goto_0
.end method

.method private initExpGridView()V
    .locals 12

    .prologue
    const v11, 0x205000c

    const/4 v10, 0x0

    .line 315
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 317
    new-instance v4, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    .line 319
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 320
    .local v1, artistFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, albumFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v1, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 323
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 324
    .local v2, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 326
    new-instance v4, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 327
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v4, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 328
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewUtil()V

    .line 329
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 330
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 331
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 332
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 333
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 334
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 335
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 336
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 338
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

    .line 343
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const v5, 0x7f030022

    const v6, 0x7f070053

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 344
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 345
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 346
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->child_view_offsetY:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewOffsetY(I)V

    .line 347
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildIndicatorOffsetY(I)V

    .line 348
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMargin(II)V

    .line 349
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->bottom_padding_child:I

    invoke-virtual {v4, v10, v5, v10, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 350
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 351
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v6, v6, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v4, v10, v5, v10, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 353
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 355
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 356
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 357
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 358
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 618
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 619
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 620
    new-instance v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 642
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 489
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$2;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 517
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 527
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 8
    .parameter "artistFolderParam"
    .parameter "albumFolderParam"

    .prologue
    const v7, 0x7f030025

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 361
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 362
    .local v0, coverParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003f

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 363
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 364
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 365
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 366
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 367
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 373
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 374
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020040

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 375
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 376
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 377
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 378
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 379
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 380
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 381
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 382
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 383
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 384
    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 386
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 387
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 388
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 390
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #coverParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 391
    .restart local v0       #coverParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020046

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 392
    const v3, 0x7f020042

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 393
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 394
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 395
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 396
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 397
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 403
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 404
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020047

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 406
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 407
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 408
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 409
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 410
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 411
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 412
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 413
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 414
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 415
    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 416
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 418
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 419
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 420
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 530
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 531
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$4;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    .line 614
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 615
    return-void
.end method

.method private startAlbumDetailViewActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 675
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 678
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string v1, "dbTable"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    .line 685
    return-void
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 1614
    if-eqz p1, :cond_0

    .line 1615
    new-instance v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    invoke-direct {v0, p1}, Lcom/htc/music/widget/ArtistCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .end local p1
    .local v0, cursor:Landroid/database/Cursor;
    move-object p1, v0

    .line 1617
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local p1
    :cond_0
    return-object p1
.end method

.method protected asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "cursor"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1118
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    move v2, v3

    .line 1136
    :goto_0
    return v2

    .line 1121
    :cond_1
    const/4 v1, 0x0

    .line 1123
    .local v1, shuffle:Z
    if-eqz p2, :cond_2

    .line 1124
    const-string v4, "force-shuffle"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1127
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getAllSongsByAlbumIdOrder(Landroid/database/Cursor;)Lcom/htc/music/util/MusicUtils$PlayAllListPair;

    move-result-object v0

    .line 1129
    .local v0, listPaire:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    if-eqz v0, :cond_3

    .line 1130
    iget-object v3, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->list:[I

    iget-object v4, v0, Lcom/htc/music/util/MusicUtils$PlayAllListPair;->albumList:[I

    invoke-static {p0, v3, v4, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[I[IZ)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1132
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->triggerPlayAllAction()V

    .line 1135
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1509
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 656
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 657
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 658
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 660
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 662
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 665
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 671
    :goto_0
    return-void

    .line 667
    :cond_0
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 668
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 669
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1662
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1513
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 1603
    sget-object v1, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistCols:[Ljava/lang/String;

    const-string v3, "artist = \'<unknown>\'"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1606
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 1667
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

    .line 1212
    sparse-switch p1, :sswitch_data_0

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1214
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 1215
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList()[I

    move-result-object v0

    .line 1216
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 1217
    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1218
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1223
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->finish()V

    goto :goto_0

    .line 1212
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
    .line 220
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 222
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOrientation:I

    .line 227
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 232
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsHVGA:Z

    if-eqz v1, :cond_2

    .line 233
    const/4 v0, 0x3

    .line 237
    .local v0, tempNumColumn:I
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 238
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_landscape_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 245
    :goto_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
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

    .line 235
    .end local v0           #tempNumColumn:I
    :cond_2
    const/4 v0, 0x4

    .restart local v0       #tempNumColumn:I
    goto :goto_1

    .line 240
    .end local v0           #tempNumColumn:I
    :cond_3
    const/4 v0, 0x2

    .line 241
    .restart local v0       #tempNumColumn:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 242
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setVolumeControlStream(I)V

    .line 276
    if-eqz p1, :cond_3

    .line 277
    const-string v3, "playlisturi"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 284
    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 285
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 286
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isHVGA(Landroid/util/DisplayMetrics;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsHVGA:Z

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    const v3, 0x7f030026

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setContentView(I)V

    .line 298
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initExpGridView()V

    .line 299
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 303
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->enableSearch()V

    .line 307
    :cond_1
    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    sget-object v3, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V

    .line 312
    :cond_2
    return-void

    .line 279
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 280
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "playlisturi"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 899
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 900
    .local v0, id:I
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList()[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 901
    return-void
.end method

.method public onDeleteAllChildsReadyIRT(II)V
    .locals 2
    .parameter "originalIndex"
    .parameter "adjustedIndex"

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1649
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1650
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1651
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1652
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1653
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 262
    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 269
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 710
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 711
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 712
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v8, intent:Landroid/content/Intent;
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "com.htc.media/albumtrack"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v0, "pickermode"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    const-string v0, "dbTable"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const-string v0, "showcompletealbum"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 719
    const/16 v0, 0xf

    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 762
    .end local v8           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    const-string v0, "[ArtistBrowserActivityExpGrid]"

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

    .line 726
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v0, :cond_2

    .line 727
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 728
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.PICK"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "com.htc.media/albumtrack"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v0, "artist"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v0, "dbTable"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    const-string v0, "showcompletealbum"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 736
    .end local v8           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 742
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;)V

    goto :goto_0

    .line 745
    :cond_4
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 747
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 749
    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 752
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    .line 754
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/htc/music/util/ContentUtils;->getArtistAlbumsQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :goto_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    goto/16 :goto_0

    .line 757
    :cond_6
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 856
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 857
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 858
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    const-string v0, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "@@@@ mDeleteType:TYPE_ARTIST"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v0, :cond_0

    .line 863
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 864
    .local v6, cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray(I)[I

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbums(Landroid/content/Context;I[I)V

    .line 873
    .end local v6           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    const-string v0, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "@@@@ mDeleteType:TYPE_ALBUM"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 870
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 4

    .prologue
    .line 972
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "call onDeletionCompleted()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    .line 974
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 975
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 977
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

    .line 766
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 767
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 852
    :goto_0
    return-void

    .line 768
    :cond_0
    const/4 v3, 0x0

    .line 769
    .local v3, headerTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_5

    .line 770
    :cond_1
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    .line 774
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 775
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 776
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 777
    .local v4, ids:[I
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 779
    .local v1, dlnaMode:I
    const/4 v2, 0x1

    .line 780
    .local v2, enableSearch:Z
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    const v7, 0x7f06003d

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 782
    :cond_3
    const/4 v2, 0x0

    .line 788
    :cond_4
    :goto_2
    if-nez v2, :cond_9

    .line 789
    if-nez v1, :cond_8

    .line 791
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 797
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_0

    .line 850
    .restart local v4       #ids:[I
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->hideHtcContextMenu()V

    .line 851
    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    .line 772
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #enableSearch:Z
    .end local v4           #ids:[I
    .end local v5           #items:[Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 783
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #enableSearch:Z
    .restart local v4       #ids:[I
    .restart local v5       #items:[Ljava/lang/CharSequence;
    :cond_6
    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const v7, 0x7f06003e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 785
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 805
    :cond_8
    new-array v5, v8, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 810
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v8, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_1

    .restart local v4       #ids:[I
    goto :goto_3

    .line 817
    :cond_9
    if-nez v1, :cond_a

    .line 819
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f06004a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 826
    .restart local v5       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x5

    new-array v4, v6, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_2

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 835
    :cond_a
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 841
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_3

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 797
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 810
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 826
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 841
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 23
    .parameter "id"

    .prologue
    .line 981
    sparse-switch p1, :sswitch_data_0

    .line 1090
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onHtcContextItemSelected(I)Z

    move-result v2

    :goto_1
    return v2

    .line 983
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 984
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    const-string v3, "[onHtcContextItemSelected][PLAY_SELECTION] mCurrentArtistId = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_0
    const/4 v2, 0x1

    const-string v3, "Artists"

    invoke-static {v2, v3}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v2, :cond_3

    .line 992
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v2, v2, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v2, :cond_2

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 994
    .local v17, cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray(I)[I

    move-result-object v7

    const/4 v8, 0x2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/htc/music/util/ContentUtils;->getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;

    .line 1004
    .end local v17           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_2
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1001
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v6, "track"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1006
    :sswitch_1
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1007
    const/16 v2, 0x25a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showDialog(I)V

    .line 1017
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1010
    :cond_4
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1011
    .local v19, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1012
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList()[I

    move-result-object v12

    .line 1013
    .local v12, addToPlaylistData:[I
    const-string v2, "pickermode"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1014
    const-string v2, "AddToPlaylistData"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1015
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 1019
    .end local v12           #addToPlaylistData:[I
    .end local v19           #intent:Landroid/content/Intent;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v2, :cond_a

    .line 1021
    :cond_5
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v2, v2, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v2, :cond_8

    .line 1026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v15, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 1027
    .local v15, artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray(I)[I

    move-result-object v7

    const/4 v8, 0x2

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/htc/music/util/ContentUtils;->getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;

    move-result-object v17

    .line 1031
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .local v16, count:I
    if-lez v16, :cond_8

    .line 1032
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1033
    .local v22, trackidCol:I
    const-string v2, "album_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1034
    .local v14, albumidCol:I
    const/16 v20, 0x0

    .line 1036
    .local v20, itemCount:I
    if-ltz v22, :cond_6

    if-gez v14, :cond_7

    .line 1037
    :cond_6
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_TO_QUEUE : trackidCol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", albumidCol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1042
    :cond_7
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 1043
    .local v21, trackid:[I
    move/from16 v0, v16

    new-array v13, v0, [I

    .line 1045
    .local v13, albumid:[I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1046
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1047
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v21, v20

    .line 1048
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v13, v20

    .line 1049
    add-int/lit8 v20, v20, 0x1

    .line 1050
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 1061
    .end local v13           #albumid:[I
    .end local v14           #albumidCol:I
    .end local v15           #artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    .end local v16           #count:I
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v20           #itemCount:I
    .end local v21           #trackid:[I
    .end local v22           #trackidCol:I
    :catch_0
    move-exception v18

    .line 1062
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_TO_QUEUE, long click artist item, NumberFormatException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :cond_8
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1053
    .restart local v13       #albumid:[I
    .restart local v14       #albumidCol:I
    .restart local v15       #artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    .restart local v16       #count:I
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v20       #itemCount:I
    .restart local v21       #trackid:[I
    .restart local v22       #trackidCol:I
    :cond_9
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_8

    .line 1054
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, v21

    invoke-interface {v2, v0, v13}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForTrackAlbumList([I[I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1063
    .end local v13           #albumid:[I
    .end local v14           #albumidCol:I
    .end local v15           #artistCursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    .end local v16           #count:I
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v20           #itemCount:I
    .end local v21           #trackid:[I
    .end local v22           #trackidCol:I
    :catch_1
    move-exception v18

    .line 1064
    .local v18, e:Landroid/os/RemoteException;
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_TO_QUEUE, long click artist item, RemoteException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1068
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_a
    :try_start_2
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_8

    .line 1069
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->addToQueueByDbTable(III)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 1072
    :catch_2
    move-exception v18

    .line 1073
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_TO_QUEUE, long click album item, NumberFormatException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1074
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v18

    .line 1075
    .local v18, e:Landroid/os/RemoteException;
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_TO_QUEUE, long click album item, RemoteException e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1080
    .end local v18           #e:Landroid/os/RemoteException;
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showDeleteDialog()V

    .line 1081
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1083
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v2, :cond_b

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1086
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 981
    nop

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

    .line 1297
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    if-nez v1, :cond_2

    .line 1301
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1307
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 1309
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected playAllAction(Z)Z
    .locals 11
    .parameter "forceShuffle"

    .prologue
    const/4 v10, 0x1

    .line 1095
    const-string v0, "Artists"

    invoke-static {v10, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v0, :cond_1

    .line 1098
    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v8, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 1100
    .local v8, cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    invoke-virtual {v8}, Lcom/htc/music/widget/ArtistCursorWrapper;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1101
    const/4 v0, 0x0

    .line 1113
    .end local v8           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :goto_0
    return v0

    .line 1103
    .restart local v8       #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const-string v0, " AND artist != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1108
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "force-shuffle"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1109
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x2

    sget-object v3, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "album_id COLLATE NOCASE ASC, title COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v8           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_1
    move v0, v10

    .line 1113
    goto :goto_0
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1323
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v0, :cond_3

    .line 1324
    if-eqz p3, :cond_0

    .line 1325
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1326
    const/4 p3, 0x0

    .line 1328
    :cond_0
    instance-of v0, p2, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    move-object p3, p2

    .line 1329
    check-cast p3, Landroid/database/Cursor;

    .line 1330
    if-eqz p3, :cond_1

    .line 1331
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1332
    const/4 p3, 0x0

    .line 1334
    :cond_1
    const/4 p2, 0x0

    .end local p2
    :cond_2
    move v0, v8

    .line 1376
    :goto_0
    return v0

    .line 1339
    .restart local p2
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1376
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0

    .line 1341
    :pswitch_0
    if-eqz p3, :cond_4

    .line 1342
    iput-object p3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1343
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3ea

    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/htc/music/util/ContentUtils;->getArtistAlbumsQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v8

    .line 1351
    goto :goto_0

    .line 1346
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1347
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1348
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    goto :goto_1

    .line 1353
    :pswitch_1
    if-eqz p3, :cond_5

    .line 1354
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1355
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    aput-object p3, v1, v8

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1362
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 1363
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 1364
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    .line 1365
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1372
    :cond_6
    :goto_3
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryChildItemReady:Z

    move v0, v8

    .line 1373
    goto :goto_0

    .line 1357
    :cond_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1358
    const/4 p3, 0x0

    goto :goto_2

    .line 1367
    :cond_8
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1368
    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mChildCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 1339
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1643
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showEmptyView(I)V

    .line 1644
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1624
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1627
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1639
    :goto_0
    return-void

    .line 1636
    :cond_0
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 906
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 909
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 911
    const v4, 0x7f060010

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, f:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 914
    :cond_1
    const v4, 0x7f06003d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 918
    .local v3, headerTitle:Ljava/lang/String;
    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 929
    .end local v3           #headerTitle:Ljava/lang/String;
    .local v1, desc:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v4, :cond_2

    .line 930
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$8;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 965
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 966
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 968
    return-void

    .line 916
    .end local v1           #desc:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    .restart local v3       #headerTitle:Ljava/lang/String;
    goto :goto_0

    .line 920
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #headerTitle:Ljava/lang/String;
    :cond_4
    const v4, 0x7f060011

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 922
    .restart local v2       #f:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 923
    :cond_5
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f06003e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_1

    .line 925
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
