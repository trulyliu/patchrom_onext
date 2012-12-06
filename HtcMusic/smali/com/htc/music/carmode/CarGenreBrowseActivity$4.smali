.class Lcom/htc/music/carmode/CarGenreBrowseActivity$4;
.super Ljava/lang/Object;
.source "CarGenreBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarGenreBrowseActivity;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarGenreBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    #calls: Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->access$100(Lcom/htc/music/carmode/CarGenreBrowseActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCoverInfo(Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    .locals 14
    .parameter "xxxid"

    .prologue
    .line 497
    iget-object v9, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    #calls: Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v9, p1}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->access$100(Lcom/htc/music/carmode/CarGenreBrowseActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 498
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 499
    .local v8, updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    if-eqz v1, :cond_7

    .line 500
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 501
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    const/4 v2, 0x4

    .line 502
    .local v2, cycle:I
    :goto_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 504
    .local v6, list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    if-eqz v6, :cond_5

    .line 505
    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 506
    .local v4, idIndex:I
    const-string v9, "album_key"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 507
    .local v5, keyIndex:I
    const-string v9, "album"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, albumIndex:I
    const-string v9, "album_art"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 510
    .local v7, pathIndex:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 511
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 512
    new-instance v13, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    const/4 v9, -0x1

    if-le v4, v9, :cond_1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v12, v9

    :goto_2
    const/4 v9, -0x1

    if-le v5, v9, :cond_2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    :goto_3
    const/4 v9, -0x1

    if-le v0, v9, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    :goto_4
    const/4 v9, -0x1

    if-le v7, v9, :cond_4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-direct {v13, v12, v11, v10, v9}, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 517
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 501
    .end local v0           #albumIndex:I
    .end local v2           #cycle:I
    .end local v3           #i:I
    .end local v4           #idIndex:I
    .end local v5           #keyIndex:I
    .end local v6           #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    .end local v7           #pathIndex:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    .line 512
    .restart local v0       #albumIndex:I
    .restart local v2       #cycle:I
    .restart local v3       #i:I
    .restart local v4       #idIndex:I
    .restart local v5       #keyIndex:I
    .restart local v6       #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    .restart local v7       #pathIndex:I
    :cond_1
    const/4 v9, -0x1

    move v12, v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    move-object v11, v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    move-object v10, v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    .line 521
    .end local v0           #albumIndex:I
    .end local v3           #i:I
    .end local v4           #idIndex:I
    .end local v5           #keyIndex:I
    .end local v7           #pathIndex:I
    :cond_5
    new-instance v8, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;

    .end local v8           #updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    invoke-direct {v8}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;-><init>()V

    .line 522
    .restart local v8       #updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    iput-object v6, v8, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mList:Landroid/util/SparseArray;

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    iput v9, v8, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mTotalChild:I

    .line 525
    .end local v2           #cycle:I
    .end local v6           #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 526
    const/4 v1, 0x0

    .line 528
    :cond_7
    return-object v8
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "xxxid"

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/carmode/CarGenreBrowseActivity;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, p1, v3}, Lcom/htc/music/carmode/CarGenreBrowseActivity;->access$000(Lcom/htc/music/carmode/CarGenreBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 461
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 464
    const-string v2, "album_art"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    :cond_0
    return-object v1
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/music/carmode/CarGenreBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarGenreBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyPreparatorMediaDataChange(I)V

    .line 488
    return-void
.end method
