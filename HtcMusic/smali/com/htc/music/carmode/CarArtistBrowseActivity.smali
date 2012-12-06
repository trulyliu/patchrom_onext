.class public Lcom/htc/music/carmode/CarArtistBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALBUM_ID_TRACK_SORT_ORDER:Ljava/lang/String; = "album_id COLLATE NOCASE ASC, title COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final ARTIST_ID_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist_id COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[CarArtistBrowseActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final QUERY_TOKEN_GET_CHILD:I

.field private final QUERY_TOKEN_GET_CHILD_WITH_UNKNOW:I

.field mAlbumCols:[Ljava/lang/String;

.field mAlbumForArtistCols:[Ljava/lang/String;

.field mAlbumTextView:Landroid/view/View;

.field mAllSongsLabel:Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field mArtistTextView:Landroid/view/View;

.field private mChildCursor:Landroid/database/Cursor;

.field mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field mIsProcessingPrepareReadyEvent:Z

.field private mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

.field mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

.field private mOnPrepareReadyHandler:Landroid/os/Handler;

.field mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mQueryChildItemReady:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 81
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "number_of_albums"

    aput-object v1, v0, v5

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistCols:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_art"

    aput-object v1, v0, v5

    const-string v1, "album_key"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minyear"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistTextView:Landroid/view/View;

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumTextView:Landroid/view/View;

    .line 382
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 1022
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mIsProcessingPrepareReadyEvent:Z

    .line 1024
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity$6;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1057
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$7;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    .line 1109
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->QUERY_TOKEN_GET_CHILD:I

    .line 1110
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->QUERY_TOKEN_GET_CHILD_WITH_UNKNOW:I

    .line 1111
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    .line 1310
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "artist_id"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minyear"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumForArtistCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarArtistBrowseActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/carmode/CarArtistBrowseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarArtistBrowseActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/carmode/CarArtistBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getArtistAlbumChildCusror(I)Landroid/database/Cursor;
    .locals 6
    .parameter "parentIndex"

    .prologue
    const/4 v3, 0x0

    .line 1247
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1267
    :goto_0
    return-object v3

    .line 1249
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v1

    .line 1250
    .local v1, artistId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, artist:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1253
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1254
    :cond_1
    const/4 v2, 0x0

    .line 1255
    goto :goto_0

    .line 1260
    :cond_2
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1266
    .local v3, ret:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1267
    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "artistId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1172
    invoke-direct {p0, p1, v4}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1174
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p1, v5}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1175
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 1176
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1177
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1186
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 1181
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1182
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2
    .parameter "artistId"
    .parameter "unknown"

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

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
    .line 1317
    if-eqz p1, :cond_0

    .line 1318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 1320
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumForArtistCols:[Ljava/lang/String;

    const-string v2, "artist_id COLLATE NOCASE ASC"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->getAlbumCursorForArtistPage(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initExpGridView()V
    .locals 12

    .prologue
    const v11, 0x2050004

    const/4 v10, 0x0

    .line 269
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 271
    new-instance v4, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    invoke-direct {v4, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    .line 273
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 274
    .local v1, artistFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, albumFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v1, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 277
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 278
    .local v2, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 280
    new-instance v4, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 281
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v4, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 282
    invoke-direct {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewUtil()V

    .line 283
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 284
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 285
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 286
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 287
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 288
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 289
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 290
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 292
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v5, "common_popupmenu_arrow_land"

    const v6, 0x7f02001e

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "automotive_popupmenu_left"

    const v7, 0x7f02001b

    invoke-static {p0, v6, v7}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "automotive_popupmenu_middle"

    const v8, 0x7f02001c

    invoke-static {p0, v7, v8}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "automotive_popupmenu_right"

    const v9, 0x7f02001d

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewBackground(IIII)V

    .line 297
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const v5, 0x7f030022

    const v6, 0x7f070053

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 298
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 299
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 300
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_view_offset_X:I

    invoke-virtual {v4, v5, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewOffset(II)V

    .line 301
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v4, v5, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildIndicatorOffset(II)V

    .line 302
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v6, v6, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_background_bottom_margin:I

    invoke-virtual {v4, v5, v6, v10, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMargin(IIII)V

    .line 303
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_top:I

    iget-object v6, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v6, v6, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_bottom:I

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_left:I

    iget-object v8, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v8, v8, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_right:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 305
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 306
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 307
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 309
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 310
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 311
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 312
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 313
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 571
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CAR_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 572
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 573
    new-instance v1, Lcom/htc/music/carmode/CarArtistBrowseActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 596
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 443
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 472
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 482
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 9
    .parameter "artistFolderParam"
    .parameter "albumFolderParam"

    .prologue
    const v8, 0x7f030010

    const v7, 0x7f020017

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 316
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 317
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020015

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 318
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 319
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 320
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 321
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 322
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 328
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 329
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iput v7, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 330
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 331
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 332
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 333
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 334
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 335
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 336
    iput v8, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 337
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 338
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 339
    iput-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 340
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 341
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 342
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 344
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 345
    .restart local v0       #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020018

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 346
    const v3, 0x7f020016

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 347
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 348
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 349
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 350
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 351
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 357
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 358
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iput v7, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 360
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 361
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 362
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 363
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 364
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 365
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 366
    iput v8, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 367
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 368
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 369
    iput-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 370
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 372
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 373
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 374
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 485
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 486
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    .line 567
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 568
    return-void
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 1408
    if-eqz p1, :cond_0

    .line 1409
    new-instance v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    invoke-direct {v0, p1}, Lcom/htc/music/widget/ArtistCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .end local p1
    .local v0, cursor:Landroid/database/Cursor;
    move-object p1, v0

    .line 1411
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local p1
    :cond_0
    return-object p1
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1303
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 610
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 611
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 612
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 614
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 616
    iget v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 619
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 625
    :goto_0
    return-void

    .line 621
    :cond_0
    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 622
    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 623
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1454
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1307
    invoke-direct {p0, v0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 1397
    sget-object v1, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistCols:[Ljava/lang/String;

    const-string v3, "artist = \'<unknown>\'"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1399
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setVolumeControlStream(I)V

    .line 244
    if-eqz p1, :cond_2

    .line 245
    const-string v1, "playlisturi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 253
    :goto_0
    const v1, 0x7f030026

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setContentView(I)V

    .line 254
    iput-object p0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 255
    invoke-direct {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initExpGridView()V

    .line 256
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 261
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V

    .line 266
    :cond_1
    return-void

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "playlisturi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDeleteAllChildsReadyIRT(II)V
    .locals 2
    .parameter "originalIndex"
    .parameter "adjustedIndex"

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1441
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1442
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1443
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1444
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1445
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 229
    iput-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 234
    :cond_1
    invoke-super {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 640
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->clickIndexInit(I)V

    .line 641
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    const-string v0, "Artists"

    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 645
    iget v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v0, :cond_0

    .line 648
    iget-object v12, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v12, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 649
    .local v12, cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray(I)[I

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;

    .line 702
    .end local v12           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v5, "track"

    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move v10, v2

    invoke-static/range {v1 .. v10}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    const-string v0, "Artists"

    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/widget/ArtistCursorWrapper;

    if-eqz v0, :cond_0

    .line 674
    iget-object v12, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    check-cast v12, Lcom/htc/music/widget/ArtistCursorWrapper;

    .line 675
    .restart local v12       #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/htc/music/widget/ArtistCursorWrapper;->getAlbumIdArray(I)[I

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;

    goto :goto_0

    .line 680
    .end local v12           #cursor:Lcom/htc/music/widget/ArtistCursorWrapper;
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v9}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 682
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 683
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 684
    iput-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 686
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 687
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    .line 689
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v5, 0x3e9

    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    sget-object v7, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/htc/music/util/ContentUtils;->getArtistAlbumsQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v11, "album COLLATE NOCASE ASC"

    move-object v10, v3

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    goto/16 :goto_0

    .line 692
    :cond_5
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 762
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 745
    return-void
.end method

.method public onPrepareReadyIRT(I)V
    .locals 3
    .parameter "clickIndex"

    .prologue
    const/4 v2, 0x0

    .line 1089
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    if-nez v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1099
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 1101
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1102
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    .line 1115
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v0, :cond_3

    .line 1116
    if-eqz p3, :cond_0

    .line 1117
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1118
    const/4 p3, 0x0

    .line 1120
    :cond_0
    instance-of v0, p2, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    move-object p3, p2

    .line 1121
    check-cast p3, Landroid/database/Cursor;

    .line 1122
    if-eqz p3, :cond_1

    .line 1123
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1124
    const/4 p3, 0x0

    .line 1126
    :cond_1
    const/4 p2, 0x0

    .end local p2
    :cond_2
    move v0, v8

    .line 1168
    :goto_0
    return v0

    .line 1131
    .restart local p2
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1168
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0

    .line 1133
    :pswitch_0
    if-eqz p3, :cond_4

    .line 1134
    iput-object p3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1135
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3ea

    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/htc/music/util/ContentUtils;->getArtistAlbumsQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v8

    .line 1143
    goto :goto_0

    .line 1138
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1139
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1140
    iput-boolean v8, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    goto :goto_1

    .line 1145
    :pswitch_1
    if-eqz p3, :cond_5

    .line 1146
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1147
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    aput-object p3, v1, v8

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1154
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 1155
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 1156
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1157
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1164
    :cond_6
    :goto_3
    iput-boolean v8, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryChildItemReady:Z

    move v0, v8

    .line 1165
    goto :goto_0

    .line 1149
    :cond_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1150
    const/4 p3, 0x0

    goto :goto_2

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1160
    iput-object v6, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 1131
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
    .line 1435
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->showEmptyView(I)V

    .line 1436
    return-void
.end method

.method protected setTitle()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1421
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1431
    :goto_0
    return-void

    .line 1429
    :cond_0
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
