.class Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;
.super Ljava/lang/Object;
.source "MusicGridViewPreparator.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/GridViewAsyncTaskDecoder$IOnDecodeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeFinish(ILandroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "obj"

    .prologue
    .line 65
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mSyncLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-object v1, v0

    .line 68
    .local v1, finishMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 70
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/TextureMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mTextureMap:Lcom/htc/music/widget/gridview/TextureMap;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/TextureMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/music/widget/gridview/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, identifier:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    .line 77
    monitor-exit v6

    .line 92
    .end local v2           #identifier:Ljava/lang/String;
    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance v4, Lcom/htc/music/widget/gridview/DecodeTask;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/htc/music/widget/gridview/DecodeTask;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, task:Lcom/htc/music/widget/gridview/DecodeTask;
    iput-object p2, v4, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/music/widget/gridview/DecodeTask;->key:Ljava/lang/String;

    .line 83
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewPreparator$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->mDecodeTaskCache:Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;)Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lcom/htc/music/widget/gridview/MemoryCacheDecodeTask;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    iget-object v5, v3, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mCoverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->mCanUseAlbumIdToDecode:Z

    .line 91
    .end local v4           #task:Lcom/htc/music/widget/gridview/DecodeTask;
    :goto_1
    monitor-exit v6

    goto :goto_0

    .end local v1           #finishMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 86
    .restart local v1       #finishMediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :cond_2
    if-eqz p2, :cond_3

    .line 87
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
