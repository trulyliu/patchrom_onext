.class final Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# static fields
.field protected static final ADD_MEDIA_DATA_TO_UPDATE:I = 0x4

.field protected static final IMAGE_PATH_UPDATE:I = 0x2

.field protected static final IMAGE_PATH_UPDATE_BY_PRIORITY:I = 0x3

.field protected static final REFRESH_DOWNLOADED_ART_BY_ALBUMID:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 678
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 679
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 683
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 685
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 686
    .local v0, albumId:I
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 690
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 691
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v4

    .line 692
    .local v4, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-nez v4, :cond_2

    .line 690
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 695
    :cond_2
    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->getCoverInfo()Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;

    move-result-object v1

    .line 696
    .local v1, coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    iget v5, v1, Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;->albumId:I

    if-ne v5, v0, :cond_1

    .line 697
    invoke-virtual {v4, v8}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setDecodeStatus(I)V

    .line 698
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    invoke-interface {v5, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;->notifyViewItemDataChange(I)V

    goto :goto_2

    .line 705
    .end local v0           #albumId:I
    .end local v1           #coverInfo:Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;
    .end local v2           #idx:I
    .end local v4           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    invoke-static {v6, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    .line 706
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 709
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v5, :cond_0

    .line 710
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 711
    .local v4, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-boolean v5, v4, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    if-nez v5, :cond_0

    .line 712
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 713
    .local v3, index:I
    if-gez v3, :cond_0

    .line 714
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {p0, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 716
    invoke-virtual {p0, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 723
    .end local v3           #index:I
    .end local v4           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :pswitch_3
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 724
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    move-result-object v6

    monitor-enter v6

    .line 725
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processVisiblePosition()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 726
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendEmptyMessage(I)Z

    .line 727
    monitor-exit v6

    goto/16 :goto_0

    .line 734
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 730
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryOrderHelper:Lcom/htc/music/widget/gridview/ProcessOrderHelper;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/ProcessOrderHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/ProcessOrderHelper;->processPriorPosition()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 731
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendEmptyMessage(I)Z

    .line 732
    monitor-exit v6

    goto/16 :goto_0

    .line 734
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mQueryList:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 737
    .restart local v4       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    invoke-static {v5, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    .line 738
    invoke-virtual {p0, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
