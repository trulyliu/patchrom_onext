.class public Lcom/htc/music/carmode/CarGenreBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarGenreBrowseActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final QUERY_TOKEN_HAS_UNKNOWN_GENRE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "[CarGenreBrowseActivity]"

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

.field mDeleteMessage:Landroid/os/Message;

.field mGenreCols:[Ljava/lang/String;

.field mGenreTextView:Landroid/view/View;

.field mIsProcessingPrepareReadyEvent:Z

.field private mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

.field mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

.field private mOnPrepareReadyHandler:Landroid/os/Handler;

.field mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mQueryChildItemReady:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 348
    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mGenreTextView:Landroid/view/View;

    .line 349
    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumTextView:Landroid/view/View;

    .line 351
    new-instance v0, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 764
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mDeleteMessage:Landroid/os/Message;

    .line 1124
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

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    .line 1183
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mIsProcessingPrepareReadyEvent:Z

    .line 1185
    new-instance v0, Lcom/htc/music/carmode/CarGenreBrowseActivity$6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/music/carmode/CarGenreBrowseActivity$6;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    .line 1218
    new-instance v0, Lcom/htc/music/carmode/CarGenreBrowseActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$7;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    .line 1271
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->QUERY_TOKEN_GET_CHILD:I

    .line 1272
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->QUERY_TOKEN_GET_CHILD_WITH_UNKNOW:I

    .line 1273
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    .line 1429
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mGenreCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarGenreBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarGenreBrowseActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarGenreBrowseActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/carmode/CarGenreBrowseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarGenreBrowseActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/carmode/CarGenreBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "genreId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1105
    invoke-direct {p0, p1, v5}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1106
    .local v0, ret:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1107
    const-string v3, "[CarGenreBrowseActivity]"

    const-string v4, "ret == null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1110
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1111
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1112
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1118
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :goto_0
    const-string v3, "[CarGenreBrowseActivity]"

    const-string v4, "unknown != null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_1
    return-object v0

    .line 1116
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 2
    .parameter "genreId"
    .parameter "unknown"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

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

    .line 1062
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1075
    :goto_0
    return-object v3

    .line 1063
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v2

    .line 1064
    .local v2, genresId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, genre:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1066
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1067
    :cond_1
    const/4 v0, 0x0

    .line 1068
    goto :goto_0

    .line 1070
    :cond_2
    iget-object v4, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1074
    .local v3, ret:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1075
    goto :goto_0
.end method

.method private getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1287
    if-eqz p1, :cond_0

    .line 1288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 1290
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mGenreCols:[Ljava/lang/String;

    const-string v4, "name COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->getGenresCursor(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getUnknownCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 1434
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mGenreCols:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1435
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

    .line 1436
    return-object v0
.end method

.method private initExpGridView()V
    .locals 12

    .prologue
    const v11, 0x2050004

    const/4 v10, 0x0

    .line 238
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 240
    new-instance v4, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    invoke-direct {v4, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    .line 242
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, genreFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, albumFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v1, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 246
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v4

    invoke-direct {v2, p0, v4, v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 247
    .local v2, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 249
    new-instance v4, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 250
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v4, v1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 251
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->initMusicGridViewUtil()V

    .line 252
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 253
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 254
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 255
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 256
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 257
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 258
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 259
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 261
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

    .line 266
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const v5, 0x7f030022

    const v6, 0x7f070053

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 267
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 268
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 269
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_view_offset_X:I

    invoke-virtual {v4, v5, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewOffset(II)V

    .line 270
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v4, v5, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildIndicatorOffset(II)V

    .line 271
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v6, v6, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_background_bottom_margin:I

    invoke-virtual {v4, v5, v6, v10, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMargin(IIII)V

    .line 272
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_top:I

    iget-object v6, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v6, v6, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_bottom:I

    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_left:I

    iget-object v8, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v8, v8, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->child_padding_right:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 274
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v5, "common_app_bkg"

    const v6, 0x2080001

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 275
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 276
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 278
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 279
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v10}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 280
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 281
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 282
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 535
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CAR_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 536
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 537
    new-instance v1, Lcom/htc/music/carmode/CarGenreBrowseActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 559
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 412
    new-instance v0, Lcom/htc/music/carmode/CarGenreBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 441
    new-instance v0, Lcom/htc/music/carmode/CarGenreBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 451
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 9
    .parameter "genreFolderParam"
    .parameter "albumFolderParam"

    .prologue
    const v8, 0x7f030010

    const v7, 0x7f020017

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 285
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 286
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020015

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 287
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 288
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 289
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 290
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 291
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 297
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 298
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iput v7, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 299
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 300
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 301
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 302
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 303
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 304
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 305
    iput v8, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 306
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 307
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 308
    iput-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mParentTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 309
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 310
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 311
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 313
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 314
    .restart local v0       #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020018

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 315
    const v3, 0x7f020016

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 316
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 317
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 318
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 319
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 320
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 326
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 327
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iput v7, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 329
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 330
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 331
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 332
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 333
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 334
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 335
    iput v8, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 336
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 337
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 338
    iput-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildTextureLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 339
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 341
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 342
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarGenreBrowseActivity$GenreViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 343
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 454
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 455
    new-instance v0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V

    .line 531
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 532
    return-void
.end method

.method private mergeUnknown(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1493
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1494
    .local v1, unknown:Landroid/database/Cursor;
    move-object v0, p1

    .line 1495
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1496
    const-string v2, "[CarGenreBrowseActivity]"

    const-string v3, "@@@@ mergeUnknown() - not null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    new-instance v0, Landroid/database/MergeCursor;

    .end local v0           #cur:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1501
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V

    .line 1354
    const/4 v0, 0x0

    return-object v0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1279
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 562
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 563
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 564
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 566
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 568
    iget v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 571
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 577
    :goto_0
    return-void

    .line 573
    :cond_0
    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 574
    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 575
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1540
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1283
    invoke-direct {p0, v0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "wherea"

    .prologue
    const/4 v4, 0x0

    .line 1441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string v0, " AND is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    const/4 v7, 0x0

    .line 1447
    .local v7, ret:Landroid/database/Cursor;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1448
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

    .line 1452
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1453
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getUnknownCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1456
    :cond_0
    if-eqz v6, :cond_1

    .line 1457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1458
    const/4 v6, 0x0

    .line 1460
    :cond_1
    return-object v7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    if-eqz p1, :cond_1

    .line 219
    const-string v1, "playlisturi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 225
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->setVolumeControlStream(I)V

    .line 227
    const v1, 0x7f030026

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->setContentView(I)V

    .line 228
    iput-object p0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->initExpGridView()V

    .line 230
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 234
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    .line 235
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
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
    .line 1526
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1527
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1528
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1529
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1530
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1531
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    iput-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    :cond_1
    invoke-super {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 212
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->clickIndexInit(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/ContentUtils;->getTracksForGenre(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v4, "track"

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    move-object v6, v2

    move-object v8, v2

    move v9, v1

    invoke-static/range {v0 .. v9}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v4, "track"

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    move-object v6, v2

    move-object v8, v2

    move v9, v1

    invoke-static/range {v0 .. v9}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 636
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 637
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 638
    iput-object v2, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 641
    iput-boolean v8, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    .line 643
    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v4, 0x3e9

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/htc/music/util/ContentUtils;->getGenresAlbumQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const-string v10, "album COLLATE NOCASE ASC"

    move-object v9, v2

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :goto_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    goto :goto_0

    .line 647
    :cond_5
    iput-boolean v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

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
    .line 887
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

    .line 1250
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v1, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    if-nez v1, :cond_2

    .line 1254
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1260
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    if-eqz v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 1262
    .local v0, thread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyEvent:Lcom/htc/sunnyCore/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mOnPrepareReadyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x2

    const/4 v9, 0x1

    .line 1359
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mIsActivityDestroyed:Z

    if-eqz v0, :cond_3

    .line 1360
    if-eqz p3, :cond_0

    .line 1361
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1362
    const/4 p3, 0x0

    .line 1364
    :cond_0
    instance-of v0, p2, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    move-object p3, p2

    .line 1365
    check-cast p3, Landroid/database/Cursor;

    .line 1366
    if-eqz p3, :cond_1

    .line 1367
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1368
    const/4 p3, 0x0

    .line 1370
    :cond_1
    const/4 p2, 0x0

    .end local p2
    :cond_2
    move v0, v9

    .line 1425
    :goto_0
    return v0

    .line 1375
    .restart local p2
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1425
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0

    .line 1377
    :pswitch_0
    const/4 v8, 0x0

    .line 1379
    .local v8, unKnonwnCur:Landroid/database/Cursor;
    if-eqz p3, :cond_4

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1380
    invoke-direct {p0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getUnknownCursor()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1383
    :cond_4
    if-eqz p3, :cond_5

    .line 1384
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1387
    :cond_5
    invoke-super {p0, v1, p2, v8}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->processOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)Z

    move-result v0

    goto :goto_0

    .line 1383
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_6

    .line 1384
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1383
    :cond_6
    throw v0

    .line 1389
    .end local v8           #unKnonwnCur:Landroid/database/Cursor;
    :pswitch_1
    if-eqz p3, :cond_7

    .line 1390
    iput-object p3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1391
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x3ea

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/htc/music/util/ContentUtils;->getGenresAlbumQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v9

    .line 1400
    goto :goto_0

    .line 1395
    :cond_7
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1396
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1397
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    goto :goto_1

    .line 1402
    :pswitch_2
    if-eqz p3, :cond_8

    .line 1403
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 1404
    new-instance v0, Landroid/database/MergeCursor;

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    aput-object p3, v1, v9

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1411
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1412
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 1413
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    .line 1414
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareChildMediaList(Landroid/database/Cursor;)V

    .line 1421
    :cond_9
    :goto_3
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mQueryChildItemReady:Z

    move v0, v9

    .line 1422
    goto/16 :goto_0

    .line 1406
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1407
    const/4 p3, 0x0

    goto :goto_2

    .line 1416
    :cond_b
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1417
    iput-object v6, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity;->mChildCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 1375
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
    .line 1488
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->showEmptyView(I)V

    .line 1489
    return-void
.end method

.method protected setTitle()V
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1471
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1484
    :goto_0
    return-void

    .line 1480
    :cond_0
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
