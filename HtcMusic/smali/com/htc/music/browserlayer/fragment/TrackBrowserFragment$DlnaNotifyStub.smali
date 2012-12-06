.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DlnaNotifyStub"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    .line 531
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    .line 532
    return-void
.end method

.method private isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, mActivity:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;>;"
    const/4 v0, 0x0

    .line 535
    if-eqz p1, :cond_1

    .line 536
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    .line 539
    :cond_0
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "mActivity.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_1
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "mActivity is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 574
    return-void
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 578
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    return-void
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 580
    return-void
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 581
    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    return-void
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 582
    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 583
    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    return-void
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 586
    return-void
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 587
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    return-void
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 6
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 550
    .local v0, activity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 553
    const-string v3, "[TrackBrowserFragment]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA Mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaMode:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_2
    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-nez v2, :cond_3

    .line 558
    const-string v2, "[TrackBrowserFragment]"

    const-string v3, "DLNA service = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_3
    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mcurDMR:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v1

    .line 563
    .local v1, tempContent:I
    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v2

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 564
    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I
    invoke-static {v2, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->access$502(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I

    .line 566
    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackListListener:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.music.metachanged"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 591
    return-void
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    return-void
.end method
