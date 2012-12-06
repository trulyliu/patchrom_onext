.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "xxxid"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, p1, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCoverInfo(Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    .locals 16
    .parameter "xxxid"

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v10, v0, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 652
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 653
    .local v9, updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    if-eqz v2, :cond_7

    .line 654
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_6

    .line 655
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    const/4 v3, 0x4

    .line 656
    .local v3, cycle:I
    :goto_0
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 658
    .local v7, list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    if-eqz v7, :cond_5

    .line 659
    const-string v10, "_id"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 660
    .local v5, idIndex:I
    const-string v10, "album_key"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 661
    .local v6, keyIndex:I
    const-string v10, "album"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 662
    .local v1, albumIndex:I
    const-string v10, "album_art"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 664
    .local v8, pathIndex:I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 665
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 666
    new-instance v14, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    const/4 v10, -0x1

    if-le v5, v10, :cond_1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move v13, v10

    :goto_2
    const/4 v10, -0x1

    if-le v6, v10, :cond_2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    :goto_3
    const/4 v10, -0x1

    if-le v1, v10, :cond_3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    :goto_4
    const/4 v10, -0x1

    if-le v8, v10, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-direct {v14, v13, v12, v11, v10}, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 671
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 665
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 655
    .end local v1           #albumIndex:I
    .end local v3           #cycle:I
    .end local v4           #i:I
    .end local v5           #idIndex:I
    .end local v6           #keyIndex:I
    .end local v7           #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    .end local v8           #pathIndex:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_0

    .line 666
    .restart local v1       #albumIndex:I
    .restart local v3       #cycle:I
    .restart local v4       #i:I
    .restart local v5       #idIndex:I
    .restart local v6       #keyIndex:I
    .restart local v7       #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    .restart local v8       #pathIndex:I
    :cond_1
    const/4 v10, -0x1

    move v13, v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    move-object v12, v10

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    move-object v11, v10

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 675
    .end local v1           #albumIndex:I
    .end local v4           #i:I
    .end local v5           #idIndex:I
    .end local v6           #keyIndex:I
    .end local v8           #pathIndex:I
    :cond_5
    new-instance v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;

    .end local v9           #updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    invoke-direct {v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;-><init>()V

    .line 676
    .restart local v9       #updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    iput-object v7, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mList:Landroid/util/SparseArray;

    .line 677
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    iput v10, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mTotalChild:I

    .line 679
    .end local v3           #cycle:I
    .end local v7           #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 680
    const/4 v2, 0x0

    .line 683
    :cond_7
    if-nez v9, :cond_8

    .line 684
    new-instance v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;

    .end local v9           #updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    invoke-direct {v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;-><init>()V

    .line 685
    .restart local v9       #updateInfo:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
    new-instance v7, Landroid/util/SparseArray;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Landroid/util/SparseArray;-><init>(I)V

    .line 686
    .restart local v7       #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    const/4 v10, 0x0

    new-instance v11, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 687
    iput-object v7, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mList:Landroid/util/SparseArray;

    .line 688
    const/4 v10, 0x0

    iput v10, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;->mTotalChild:I

    .line 691
    .end local v7           #list:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;>;"
    :cond_8
    return-object v9
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunnyCore/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyPreparatorMediaDataChange(I)V

    .line 642
    return-void
.end method
