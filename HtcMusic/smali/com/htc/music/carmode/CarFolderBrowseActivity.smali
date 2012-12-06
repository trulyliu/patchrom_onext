.class public Lcom/htc/music/carmode/CarFolderBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarFolderBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;,
        Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final FOLDER_DEFAULT_SORT_ORDER:Ljava/lang/String; = "bucket_display_name COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[CarFolderBrowseActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mAlbumCols:[Ljava/lang/String;

.field private mAllFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/DataPrototype;",
            ">;"
        }
    .end annotation
.end field

.field mDrmAudioCols:[Ljava/lang/String;

.field private mDrmFolderIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/DataPrototype;",
            ">;"
        }
    .end annotation
.end field

.field mFolderCols:[Ljava/lang/String;

.field mFolderSongCols:[Ljava/lang/String;

.field private mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mFolderCols:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mFolderSongCols:[Ljava/lang/String;

    .line 80
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmAudioCols:[Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    .line 660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    .line 805
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarFolderBrowseActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderTracksCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private asyncGetDrmCursor(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 8
    .parameter "uri"
    .parameter "where"
    .parameter "c"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmAudioCols:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "bucket_display_name COLLATE NOCASE ASC"

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method private getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 842
    .local v0, drmBucketId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderType(Ljava/lang/String;)Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    move-result-object v1

    .line 843
    .local v1, folderType:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;
    sget-object v2, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->DRM:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    if-ne v1, v2, :cond_1

    .line 844
    move-object v0, p1

    .line 850
    :cond_0
    :goto_0
    return-object v0

    .line 846
    :cond_1
    sget-object v2, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->MIXED:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    if-ne v1, v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drmBucketId:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #drmBucketId:Ljava/lang/String;
    goto :goto_0
.end method

.method private getDrmCursor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "where"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmAudioCols:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bucket_display_name COLLATE NOCASE ASC"

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getFileBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, fileBucketId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderType(Ljava/lang/String;)Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    move-result-object v1

    .line 831
    .local v1, folderType:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;
    sget-object v2, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->DRM:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    if-eq v1, v2, :cond_0

    .line 833
    move-object v0, p1

    .line 836
    :cond_0
    return-object v0
.end method

.method private getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 425
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mFolderCols:[Ljava/lang/String;

    const-string v4, "bucket_display_name COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->getFolderCursor(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getFolderTracksCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "bucket_id"

    .prologue
    const/4 v4, 0x0

    .line 486
    const/4 v8, 0x0

    .line 487
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "[CarFolderBrowseActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderTracksCursor, folder type? => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderType(Ljava/lang/String;)Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v7, 0x0

    .local v7, fileBucketId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 491
    .local v6, drmBucketId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/htc/music/util/ContentUtils;->getFileDrmWhereDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 496
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mFolderSongCols:[Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v5, "title COLLATE NOCASE ASC LIMIT 1"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 504
    const/4 v9, 0x0

    .line 506
    .local v9, retCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 507
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 508
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #where:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .restart local v10       #where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 516
    :goto_1
    if-eqz v8, :cond_0

    .line 517
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 518
    const/4 v8, 0x0

    .line 521
    :cond_0
    return-object v9

    .end local v9           #retCursor:Landroid/database/Cursor;
    :cond_1
    move-object v3, v4

    .line 496
    goto :goto_0

    .line 513
    .restart local v9       #retCursor:Landroid/database/Cursor;
    :cond_2
    const-string v0, "[CarFolderBrowseActivity]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFolderType(Ljava/lang/String;)Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;
    .locals 2
    .parameter "folderId"

    .prologue
    .line 813
    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 816
    sget-object v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->DRM:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    .line 823
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 819
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->MIXED:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    goto :goto_0

    .line 823
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->NORMAL:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    goto :goto_0
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 156
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 157
    new-instance v2, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    .line 158
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 161
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 162
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 164
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 165
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 166
    invoke-direct {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->initMusicGridViewUtil()V

    .line 167
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 168
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 169
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 170
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 171
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 173
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 174
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    iget-object v4, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 175
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 176
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 177
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 178
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 179
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 180
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 351
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CAR_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 352
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 353
    new-instance v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 372
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 244
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 269
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 279
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 183
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 184
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020015

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 185
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 186
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 187
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 188
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 189
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 190
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 191
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020017

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 192
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 193
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 194
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 195
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 196
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 197
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 198
    const v3, 0x7f030011

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 199
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 200
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 201
    iput-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 202
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 203
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 204
    iget-object v3, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 205
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 282
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 283
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarFolderBrowseActivity;)V

    .line 347
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 348
    return-void
.end method

.method private isDrmFolderExist()Z
    .locals 2

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, exist:Z
    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 801
    const/4 v0, 0x1

    .line 802
    :cond_0
    return v0
.end method

.method private releaseDataSource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 854
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 856
    iput-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 861
    iput-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 866
    iput-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    .line 868
    :cond_2
    return-void
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"
    .parameter "where"

    .prologue
    const/4 v1, 0x0

    .line 470
    if-nez p1, :cond_0

    .line 481
    :goto_0
    return-object v1

    .line 480
    :cond_0
    const-string v0, "content://drm/audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->asyncGetDrmCursor(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)Z

    goto :goto_0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 414
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 375
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 376
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentFolderName:Ljava/lang/String;

    .line 378
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, v0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "where"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "content://drm/audio"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 24
    .parameter "cookie"
    .parameter "drmCursor"

    .prologue
    .line 680
    move-object/from16 v4, p1

    check-cast v4, Landroid/database/Cursor;

    .line 681
    .local v4, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 685
    const/16 v20, 0x0

    .line 686
    .local v20, tempLocation:Ljava/lang/String;
    const/16 v19, 0x0

    .line 689
    .local v19, tempFileId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 690
    .local v9, drmFolderCount:I
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 691
    const-string v21, "[CarFolderBrowseActivity]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mergeExtraCursor, drmCursor!=null, count: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v21, "_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 694
    .local v8, drmDataIdx:I
    const-string v21, "bucket_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 695
    .local v10, drmFolderIdIdx:I
    const-string v21, "bucket_display_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 697
    .local v11, drmFolderNameIdx:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 698
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v9, :cond_2

    .line 699
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 700
    if-eqz v20, :cond_1

    .line 701
    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 702
    .local v17, lastIdx:I
    if-ltz v17, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 703
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 710
    .end local v17           #lastIdx:I
    :cond_0
    :goto_1
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 712
    new-instance v7, Lcom/htc/music/widget/gridview/DataPrototype;

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/DataPrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 713
    .local v7, drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DRM folder "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/htc/music/widget/gridview/DataPrototype;->printLog(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 698
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 707
    .end local v7           #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    :cond_1
    const-string v21, "[CarFolderBrowseActivity]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mergeExtraCursor, tempLocation is null!, i: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 721
    .end local v8           #drmDataIdx:I
    .end local v10           #drmFolderIdIdx:I
    .end local v11           #drmFolderNameIdx:I
    .end local v14           #i:I
    :cond_2
    if-lez v9, :cond_9

    .line 722
    const/4 v5, 0x0

    .line 723
    .local v5, cursorCount:I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_9

    .line 725
    const-string v21, "_data"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 726
    .local v6, dataIdx:I
    const-string v21, "bucket_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 727
    .local v12, folderIdIdx:I
    const-string v21, "bucket_display_name"

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 730
    .local v13, folderNameIdx:I
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 731
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    if-ge v14, v5, :cond_8

    .line 732
    const/4 v15, 0x0

    .line 733
    .local v15, isDrmFolder:Z
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 734
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 735
    if-eqz v20, :cond_7

    .line 736
    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 737
    .restart local v17       #lastIdx:I
    if-ltz v17, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 738
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 742
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v16, v21, -0x1

    .local v16, j:I
    :goto_3
    if-ltz v16, :cond_4

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/gridview/DataPrototype;

    .line 744
    .restart local v7       #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    if-eqz v7, :cond_5

    .line 745
    iget-object v0, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mData:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 746
    const-string v21, "[CarFolderBrowseActivity]"

    const-string v22, "mergeExtraCursor, there is the same folder in normal folder & DRM folder"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v21, "[CarFolderBrowseActivity]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "=> tempLocation: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 749
    const/4 v15, 0x1

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .end local v7           #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v16           #j:I
    .end local v17           #lastIdx:I
    :cond_4
    :goto_4
    new-instance v18, Lcom/htc/music/widget/gridview/DataPrototype;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/htc/music/widget/gridview/DataPrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 765
    .local v18, normalData:Lcom/htc/music/widget/gridview/DataPrototype;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Normal folder "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/DataPrototype;->printLog(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 731
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 756
    .end local v18           #normalData:Lcom/htc/music/widget/gridview/DataPrototype;
    .restart local v7       #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .restart local v16       #j:I
    .restart local v17       #lastIdx:I
    :cond_5
    const-string v21, "[CarFolderBrowseActivity]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mergeExtraCursor, drmData is null! j: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_6
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_3

    .line 761
    .end local v7           #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v16           #j:I
    .end local v17           #lastIdx:I
    :cond_7
    const-string v21, "[CarFolderBrowseActivity]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mergeExtraCursor, tempLocation is null!, i: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 770
    .end local v15           #isDrmFolder:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 776
    .end local v5           #cursorCount:I
    .end local v6           #dataIdx:I
    .end local v12           #folderIdIdx:I
    .end local v13           #folderNameIdx:I
    .end local v14           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_b

    .line 778
    new-instance v21, Landroid/database/MergeCursor;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v4, v22, v23

    const/16 v23, 0x1

    aput-object p2, v22, v23

    invoke-direct/range {v21 .. v22}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v4, v21

    .line 785
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_a
    :goto_5
    return-object v4

    .line 781
    .restart local v4       #cursor:Landroid/database/Cursor;
    :cond_b
    if-eqz p2, :cond_a

    .line 782
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 783
    const/16 p2, 0x0

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->setVolumeControlStream(I)V

    .line 147
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->initGridView()V

    .line 150
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 153
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->releaseDataSource()V

    .line 139
    invoke-super {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 382
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->clickIndexInit(I)V

    .line 384
    const-string v0, "[CarFolderBrowseActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGridViewItemClick, folder type? => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFolderType(Ljava/lang/String;)Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_FOLDER_COLS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getTracksForFolder(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 398
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 393
    return-void
.end method

.method protected prepareAndCompareParentMediaList()Z
    .locals 2

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->isDrmFolderExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/carmode/CarFolderBrowseActivity;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareAndCompareForParentMediaList(Ljava/util/ArrayList;)Z

    move-result v0

    .line 794
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->prepareAndCompareParentMediaList()Z

    move-result v0

    goto :goto_0
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 627
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->showEmptyView(I)V

    .line 628
    return-void
.end method

.method protected setTitle()V
    .locals 1

    .prologue
    .line 622
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarFolderBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 623
    return-void
.end method
