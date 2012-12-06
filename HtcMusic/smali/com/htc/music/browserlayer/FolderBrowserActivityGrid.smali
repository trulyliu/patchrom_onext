.class public Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "FolderBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;,
        Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;,
        Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALL_FOLDER_SONGS_SORT_ORDER:Ljava/lang/String; = "bucket_display_name COLLATE NOCASE ASC, title COLLATE NOCASE ASC"

.field private static final FOLDER_DEFAULT_SORT_ORDER:Ljava/lang/String; = "bucket_display_name COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[FolderBrowserActivityGrid]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mAlbumCols:[Ljava/lang/String;

.field mAllFolderDrmIdxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field mDeleteMessage:Landroid/os/Message;

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

.field private mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

.field private mNonUIHandler:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;

.field private mNonUIHandlerThread:Landroid/os/HandlerThread;

.field private mOrientation:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 80
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

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAlbumCols:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mFolderCols:[Ljava/lang/String;

    .line 91
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mFolderSongCols:[Ljava/lang/String;

    .line 96
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmAudioCols:[Ljava/lang/String;

    .line 149
    iput-object v6, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    .line 151
    iput-object v6, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;

    .line 283
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    .line 548
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDeleteMessage:Landroid/os/Message;

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    .line 1160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    .line 1354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    .line 1369
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderTracksCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->triggerPlayAllAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->triggerPlayAllAction()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->playAllActionImpl(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private asyncGetDrmCursor(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 8
    .parameter "uri"
    .parameter "where"
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 1130
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object v4, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmAudioCols:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "bucket_display_name COLLATE NOCASE ASC"

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    return v1
.end method

.method private getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 1319
    const/4 v0, 0x0

    .line 1321
    .local v0, drmBucketId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderType(Ljava/lang/String;)Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    move-result-object v1

    .line 1322
    .local v1, folderType:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    sget-object v2, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->DRM:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    if-ne v1, v2, :cond_1

    .line 1323
    move-object v0, p1

    .line 1329
    :cond_0
    :goto_0
    return-object v0

    .line 1325
    :cond_1
    sget-object v2, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->MIXED:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    if-ne v1, v2, :cond_0

    .line 1326
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

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
    .line 1126
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmAudioCols:[Ljava/lang/String;

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
    .line 1307
    const/4 v0, 0x0

    .line 1309
    .local v0, fileBucketId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderType(Ljava/lang/String;)Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    move-result-object v1

    .line 1310
    .local v1, folderType:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    sget-object v2, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->DRM:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    if-eq v1, v2, :cond_0

    .line 1312
    move-object v0, p1

    .line 1315
    :cond_0
    return-object v0
.end method

.method private getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 896
    if-eqz p1, :cond_0

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 899
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mFolderCols:[Ljava/lang/String;

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

    .line 960
    const/4 v8, 0x0

    .line 962
    .local v8, ret:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, fileBucketId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 964
    .local v6, drmBucketId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 965
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 967
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/htc/music/util/ContentUtils;->getFileDrmWhereDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 969
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mFolderSongCols:[Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v5, "title COLLATE NOCASE ASC LIMIT 1"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 977
    const/4 v9, 0x0

    .line 979
    .local v9, retCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 980
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 981
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #where:Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
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

    .line 983
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 989
    :goto_1
    if-eqz v8, :cond_0

    .line 990
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 991
    const/4 v8, 0x0

    .line 994
    :cond_0
    return-object v9

    .end local v9           #retCursor:Landroid/database/Cursor;
    :cond_1
    move-object v3, v4

    .line 969
    goto :goto_0

    .line 986
    .restart local v9       #retCursor:Landroid/database/Cursor;
    :cond_2
    const-string v0, "[FolderBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFolderType(Ljava/lang/String;)Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    .locals 2
    .parameter "folderId"

    .prologue
    .line 1292
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1294
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1295
    sget-object v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->DRM:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    .line 1302
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1298
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->MIXED:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    goto :goto_0

    .line 1302
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->NORMAL:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    goto :goto_0
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    .line 225
    new-instance v2, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    .line 227
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 230
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 231
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 233
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 234
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 235
    invoke-direct {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 236
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    .line 237
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 238
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 239
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 242
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 243
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 245
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 247
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 248
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 249
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 250
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 3
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 426
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    sget v2, Lcom/htc/music/util/Constants;->GRIDVIEW_CACHE_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(II)V

    .line 427
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 428
    new-instance v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 447
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mViewBinder:Lcom/htc/music/widget/gridview/IViewBinder;

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/IViewBinder;)V

    .line 319
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 344
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewImageGetter;)V

    .line 354
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 253
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 254
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003f

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 255
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 256
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 257
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 258
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 259
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 265
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 266
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020040

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 267
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 268
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 269
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 270
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 271
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 272
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 273
    const v3, 0x7f030025

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 274
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 275
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 276
    iput-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 277
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 278
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 279
    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 280
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 357
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 358
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    .line 422
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 423
    return-void
.end method

.method private isDrmFolderExist()Z
    .locals 2

    .prologue
    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, exist:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 858
    const/4 v0, 0x1

    .line 859
    :cond_0
    return v0
.end method

.method private playAllActionImpl(Z)Z
    .locals 27
    .parameter "forceShuffle"

    .prologue
    .line 662
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->isDrmFolderExist()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 663
    const-string v3, "[FolderBrowserActivityGrid]"

    const-string v5, "playAllAction, DRM folder exists."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    .line 701
    const/4 v4, 0x0

    .line 702
    .local v4, uri:Landroid/net/Uri;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v26, where:Ljava/lang/StringBuilder;
    const-string v3, "is_music=1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 706
    .local v14, foldeId:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderType(Ljava/lang/String;)Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    move-result-object v15

    .line 707
    .local v15, folderType:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    sget-object v3, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->MIXED:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    if-ne v15, v3, :cond_0

    .line 708
    const-string v3, "[FolderBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playAllAction, Mixed folder - foldeId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND bucket_id!="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 713
    .end local v14           #foldeId:Ljava/lang/String;
    .end local v15           #folderType:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    :cond_1
    if-nez v4, :cond_2

    .line 714
    const-string v3, "content://media/external/file"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 717
    :cond_2
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "bucket_display_name"

    aput-object v6, v5, v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "bucket_display_name COLLATE NOCASE ASC, title COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 722
    .local v11, cursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 724
    .local v10, allSongsList:[I
    const/16 v25, 0x0

    .line 725
    .local v25, tempSongsList:[I
    const/16 v24, 0x0

    .line 726
    .local v24, tempFolderName:Ljava/lang/String;
    const/16 v23, 0x0

    .line 729
    .local v23, tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    .local v16, i:I
    :goto_1
    if-ltz v16, :cond_9

    .line 730
    const/16 v18, 0x0

    .line 732
    .local v18, insertIdx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 733
    .local v13, drmIdx:Ljava/lang/Integer;
    if-nez v13, :cond_4

    .line 729
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 736
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    check-cast v23, Lcom/htc/music/widget/gridview/DataPrototype;

    .line 737
    .restart local v23       #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    if-eqz v23, :cond_3

    .line 741
    if-nez v11, :cond_5

    .line 742
    const-string v3, "[FolderBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playAllActionImpl, cursor is null! i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 746
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 747
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    .line 748
    const-string v3, "bucket_display_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 749
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/music/widget/gridview/DataPrototype;->mIdName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_6

    .line 750
    add-int/lit8 v18, v19, 0x1

    .line 755
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 747
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 758
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v25

    .line 761
    move-object/from16 v21, v10

    .line 762
    .local v21, originalAllSongList:[I
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v20, v0

    .line 763
    .local v20, normalCount:I
    :goto_4
    if-eqz v25, :cond_8

    move-object/from16 v0, v25

    array-length v12, v0

    .line 765
    .local v12, drmCount:I
    :goto_5
    add-int v3, v20, v12

    new-array v10, v3, [I

    .line 768
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v3, v10, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v3, v10, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    add-int v3, v18, v12

    sub-int v5, v20, v18

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1, v10, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 762
    .end local v12           #drmCount:I
    .end local v20           #normalCount:I
    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    .line 763
    .restart local v20       #normalCount:I
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 773
    .end local v13           #drmIdx:Ljava/lang/Integer;
    .end local v18           #insertIdx:I
    .end local v19           #j:I
    .end local v20           #normalCount:I
    .end local v21           #originalAllSongList:[I
    :cond_9
    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_ALL_COLS:[Ljava/lang/String;

    const-string v5, "track"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5, v10}, Lcom/htc/music/util/ContentUtils;->getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;

    move-result-object v9

    .line 777
    .local v9, albumCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v9, v10}, Lcom/htc/music/util/MusicUtils;->getListForCursorByTrackList(Landroid/database/Cursor;[I)Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    .line 779
    .local v22, palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    if-eqz v9, :cond_a

    .line 780
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 781
    const/4 v9, 0x0

    .line 785
    :cond_a
    const-string v3, "[FolderBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[playAllActionImpl][isDrmFolderExist()] allSongsList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    if-eqz v10, :cond_b

    .line 787
    const-string v3, "[FolderBrowserActivityGrid]"

    const-string v5, "[playAllActionImpl][isDrmFolderExist()][allSongsList != null] Post to UI thread to play all. "

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v3, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$8;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;Lcom/htc/music/util/MusicUtils$PlayAllListPair;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 801
    :cond_b
    if-eqz v11, :cond_c

    .line 802
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 847
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #albumCursor:Landroid/database/Cursor;
    .end local v10           #allSongsList:[I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #palp:Lcom/htc/music/util/MusicUtils$PlayAllListPair;
    .end local v23           #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v24           #tempFolderName:Ljava/lang/String;
    .end local v25           #tempSongsList:[I
    .end local v26           #where:Ljava/lang/StringBuilder;
    :cond_c
    :goto_6
    const/4 v3, 0x1

    return v3

    .line 779
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v9       #albumCursor:Landroid/database/Cursor;
    .restart local v10       #allSongsList:[I
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v16       #i:I
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v23       #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    .restart local v24       #tempFolderName:Ljava/lang/String;
    .restart local v25       #tempSongsList:[I
    .restart local v26       #where:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_d

    .line 780
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 781
    const/4 v9, 0x0

    .line 779
    :cond_d
    throw v3

    .line 808
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #albumCursor:Landroid/database/Cursor;
    .end local v10           #allSongsList:[I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v23           #tempData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v24           #tempFolderName:Ljava/lang/String;
    .end local v25           #tempSongsList:[I
    .end local v26           #where:Ljava/lang/StringBuilder;
    :cond_e
    const-string v3, "[FolderBrowserActivityGrid]"

    const-string v5, "playAllAction, mAllFolderList is null!"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 812
    :cond_f
    const/4 v4, 0x0

    .line 813
    .restart local v4       #uri:Landroid/net/Uri;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .restart local v26       #where:Ljava/lang/StringBuilder;
    const-string v3, "is_music>=1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    if-nez v4, :cond_10

    .line 817
    const-string v3, "content://media/external/file"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 820
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mFolderSongCols:[Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "bucket_display_name COLLATE NOCASE ASC, title COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 823
    .restart local v11       #cursor:Landroid/database/Cursor;
    const-string v3, "[FolderBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[playAllActionImpl][!isDrmFolderExist()] cursor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    if-eqz v11, :cond_c

    .line 825
    const-string v3, "[FolderBrowserActivityGrid]"

    const-string v5, "[playAllActionImpl][!isDrmFolderExist()][cursor != null] Post to UI thread to play all. "

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v3, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$9;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1, v11}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$9;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;ZLandroid/database/Cursor;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method private prepareAllFolderListDrmIndex()V
    .locals 4

    .prologue
    .line 1356
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1358
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, data:Lcom/htc/music/widget/gridview/DataPrototype;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1361
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/htc/music/widget/gridview/DataPrototype;
    check-cast v0, Lcom/htc/music/widget/gridview/DataPrototype;

    .line 1362
    .restart local v0       #data:Lcom/htc/music/widget/gridview/DataPrototype;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/htc/music/widget/gridview/DataPrototype;->mIsDrm:Z

    if-eqz v2, :cond_0

    .line 1363
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1367
    .end local v0           #data:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private releaseDataSource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1333
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1335
    iput-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1340
    iput-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1345
    iput-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    .line 1348
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1349
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1350
    iput-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderDrmIdxList:Ljava/util/ArrayList;

    .line 1352
    :cond_3
    return-void
.end method


# virtual methods
.method protected asyncMergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"
    .parameter "where"

    .prologue
    const/4 v1, 0x0

    .line 944
    if-nez p1, :cond_0

    .line 955
    :goto_0
    return-object v1

    .line 954
    :cond_0
    const-string v0, "content://drm/audio"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->asyncGetDrmCursor(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)Z

    goto :goto_0
.end method

.method protected asyncPlayAllAction(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "cursor"
    .parameter "bundle"

    .prologue
    .line 852
    const/4 v0, 0x0

    return v0
.end method

.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 888
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 450
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 451
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderName:Ljava/lang/String;

    .line 461
    return-void
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1117
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1122
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 892
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "where"

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "content://drm/audio"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public isBypass()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method protected mergeExtraCursor(Ljava/lang/Object;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 23
    .parameter "cookie"
    .parameter "drmCursor"

    .prologue
    .line 1180
    move-object/from16 v4, p1

    check-cast v4, Landroid/database/Cursor;

    .line 1181
    .local v4, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 1185
    const/16 v19, 0x0

    .line 1186
    .local v19, tempLocation:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1189
    .local v18, tempFileId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1190
    .local v9, drmFolderCount:I
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 1191
    const-string v20, "[FolderBrowserActivityGrid]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mergeExtraCursor, drmCursor!=null, count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v20, "_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1194
    .local v8, drmDataIdx:I
    const-string v20, "bucket_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1195
    .local v10, drmFolderIdIdx:I
    const-string v20, "bucket_display_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1197
    .local v11, drmFolderNameIdx:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1198
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v9, :cond_0

    .line 1199
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1200
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->filterFolderLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1201
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1203
    new-instance v7, Lcom/htc/music/widget/gridview/DataPrototype;

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/DataPrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1204
    .local v7, drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DRM folder "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/htc/music/widget/gridview/DataPrototype;->printLog(Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1198
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1212
    .end local v7           #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v8           #drmDataIdx:I
    .end local v10           #drmFolderIdIdx:I
    .end local v11           #drmFolderNameIdx:I
    .end local v14           #i:I
    :cond_0
    if-lez v9, :cond_6

    .line 1213
    const/4 v5, 0x0

    .line 1214
    .local v5, cursorCount:I
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 1216
    const-string v20, "_data"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1217
    .local v6, dataIdx:I
    const-string v20, "bucket_id"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1218
    .local v12, folderIdIdx:I
    const-string v20, "bucket_display_name"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1221
    .local v13, folderNameIdx:I
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1222
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    if-ge v14, v5, :cond_5

    .line 1223
    const/4 v15, 0x0

    .line 1224
    .local v15, isDrmFolder:Z
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1225
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1226
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->filterFolderLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1227
    if-eqz v19, :cond_4

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v16, v20, -0x1

    .local v16, j:I
    :goto_2
    if-ltz v16, :cond_1

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/gridview/DataPrototype;

    .line 1231
    .restart local v7       #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    if-eqz v7, :cond_2

    .line 1232
    iget-object v0, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1233
    const-string v20, "[FolderBrowserActivityGrid]"

    const-string v21, "mergeExtraCursor, there is the same folder in normal folder & DRM folder"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v20, "[FolderBrowserActivityGrid]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "=> tempLocation: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1236
    const/4 v15, 0x1

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderIdMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/htc/music/widget/gridview/DataPrototype;->mId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .end local v7           #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v16           #j:I
    :cond_1
    :goto_3
    new-instance v17, Lcom/htc/music/widget/gridview/DataPrototype;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/htc/music/widget/gridview/DataPrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1253
    .local v17, normalData:Lcom/htc/music/widget/gridview/DataPrototype;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 1222
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1243
    .end local v17           #normalData:Lcom/htc/music/widget/gridview/DataPrototype;
    .restart local v7       #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .restart local v16       #j:I
    :cond_2
    const-string v20, "[FolderBrowserActivityGrid]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mergeExtraCursor, drmData is null! j: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_2

    .line 1248
    .end local v7           #drmData:Lcom/htc/music/widget/gridview/DataPrototype;
    .end local v16           #j:I
    :cond_4
    const-string v20, "[FolderBrowserActivityGrid]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mergeExtraCursor, tempLocation is null!, i: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1257
    .end local v6           #dataIdx:I
    .end local v12           #folderIdIdx:I
    .end local v13           #folderNameIdx:I
    .end local v14           #i:I
    .end local v15           #isDrmFolder:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1259
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->prepareAllFolderListDrmIndex()V

    .line 1262
    .end local v5           #cursorCount:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDrmFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 1264
    new-instance v20, Landroid/database/MergeCursor;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v4, v21, v22

    const/16 v22, 0x1

    aput-object p2, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v4, v20

    .line 1271
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_7
    :goto_4
    return-object v4

    .line 1267
    .restart local v4       #cursor:Landroid/database/Cursor;
    :cond_8
    if-eqz p2, :cond_7

    .line 1268
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 1269
    const/16 p2, 0x0

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 865
    sparse-switch p1, :sswitch_data_0

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 867
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 871
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 872
    const-string v2, "playlist"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 873
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 878
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 865
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
    .line 155
    const-string v0, "[FolderBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mOrientation:I

    .line 162
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    iget v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 188
    if-eqz p1, :cond_3

    .line 189
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 195
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setContentView(I)V

    .line 204
    invoke-direct {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->initGridView()V

    .line 205
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 209
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->enableSearch()V

    .line 213
    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-NonUIHandler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    .line 214
    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v2, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;

    iget-object v3, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;

    .line 217
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    sget-object v2, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->FOLDER_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setMediaType(Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)V

    .line 220
    :cond_2
    return-void

    .line 191
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 192
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 552
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, id:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 558
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    invoke-direct {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->releaseDataSource()V

    .line 176
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 181
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 465
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->clickIndexInit(I)V

    .line 467
    const-string v1, "[FolderBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGridViewItemClick, folder type? => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFolderType(Ljava/lang/String;)Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 472
    const-string v1, "playlisturi"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "folderid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v1, "drmfolderid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "folder"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v1, "pickermode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 493
    :goto_0
    return-void

    .line 484
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v1, "folderid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v1, "drmfolderid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v1, "folder"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDeleteMessage:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 543
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDeleteMessage:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 544
    const-string v0, "[FolderBrowserActivityGrid]"

    const-string v1, "@@@@ mDeleteType: TYPE_FOLDER"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 4

    .prologue
    .line 598
    const-string v1, "[FolderBrowserActivityGrid]"

    const-string v2, "call onDeletionCompleted()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    .line 600
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 601
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 603
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 497
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->clickIndexInit(I)V

    .line 498
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 538
    :goto_0
    return-void

    .line 499
    :cond_0
    const/4 v2, 0x0

    .line 500
    .local v2, headerTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 503
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    move-object v0, p0

    .line 504
    :cond_1
    const/4 v4, 0x0

    .line 505
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 506
    .local v3, ids:[I
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->checkDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 508
    .local v1, dlnaMode:I
    if-nez v1, :cond_2

    .line 510
    new-array v4, v11, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f060048

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f06004a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 516
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v11, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .line 536
    .restart local v3       #ids:[I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->hideHtcContextMenu()V

    .line 537
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 524
    :cond_2
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f060048

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 529
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_1

    .line 516
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 529
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 14
    .parameter "id"

    .prologue
    .line 607
    sparse-switch p1, :sswitch_data_0

    .line 647
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onHtcContextItemSelected(I)Z

    move-result v0

    :goto_0
    return v0

    .line 609
    :sswitch_0
    const/4 v0, 0x1

    const-string v1, "Folders"

    invoke-static {v0, v1}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->PLAY_FOLDER_COLS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getTracksForFolder(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v0, 0x1

    goto :goto_0

    .line 614
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isAnyPlaylist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->showDialog(I)V

    .line 629
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v7

    .line 622
    .local v7, addToPlayListData:[I
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 623
    .local v13, intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v13, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 624
    const-string v0, "pickermode"

    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v0, "AddToPlaylistData"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 626
    const/4 v0, 0x1

    invoke-virtual {p0, v13, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 632
    .end local v7           #addToPlayListData:[I
    .end local v13           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getFileBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 634
    .local v12, fileFId:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getDrmBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 635
    .local v9, drmFId:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 636
    .local v11, fid:I
    :goto_2
    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 637
    .local v8, did:I
    :goto_3
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v11, v8}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v8           #did:I
    .end local v9           #drmFId:Ljava/lang/String;
    .end local v11           #fid:I
    .end local v12           #fileFId:Ljava/lang/String;
    :cond_1
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    .line 635
    .restart local v9       #drmFId:Ljava/lang/String;
    .restart local v12       #fileFId:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 636
    .restart local v11       #fid:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 639
    .end local v9           #drmFId:Ljava/lang/String;
    .end local v11           #fid:I
    .end local v12           #fileFId:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 640
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "[FolderBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_TO_QUEUE, long click folder item, RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 644
    .end local v10           #e:Landroid/os/RemoteException;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->showDeleteDialog()V

    .line 645
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected playAllAction(Z)Z
    .locals 3
    .parameter "forceShuffle"

    .prologue
    const/4 v0, 0x1

    .line 652
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;

    if-eqz v1, :cond_0

    .line 653
    const-string v1, "Folders"

    invoke-static {v0, v1}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printNowPlayingLaunchingLog(ZLjava/lang/String;)V

    .line 654
    const-string v1, "[FolderBrowserActivityGrid]"

    const-string v2, "[playAllAction] Pass to mNonUIHandler.playAll"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;

    #calls: Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;->playAll(Z)V
    invoke-static {v1, p1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;->access$1800(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$NonUIHandler;Z)V

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareAndCompareParentMediaList()Z
    .locals 2

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->isDrmFolderExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->prepareAndCompareForParentMediaList(Ljava/util/ArrayList;)Z

    move-result v0

    .line 1280
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->prepareAndCompareParentMediaList()Z

    move-result v0

    goto :goto_0
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1112
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->showEmptyView(I)V

    .line 1113
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1100
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1101
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1108
    :goto_0
    return-void

    .line 1105
    :cond_0
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 7

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 563
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 568
    :cond_0
    const v4, 0x7f060012

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, f:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentFolderName:Ljava/lang/String;

    .line 572
    .local v3, headerTitle:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, desc:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v4, :cond_1

    .line 575
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$6;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 591
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 592
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 594
    return-void
.end method
