.class Lcom/htc/music/MusicPluginManager$1;
.super Lcom/htc/music/IPluginIPCNotify$Stub;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct {p0}, Lcom/htc/music/IPluginIPCNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MusicPluginManager;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MusicPluginManager;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onErrorId(ILjava/lang/String;)V
    .locals 1
    .parameter "errorId"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->onErrorId(ILjava/lang/String;)V

    .line 531
    return-void
.end method

.method public onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    .locals 1
    .parameter "values"
    .parameter "start"
    .parameter "end"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/music/MusicPluginManager;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 505
    return-void
.end method

.method public onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->onToastWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "values"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MusicPluginManager;->onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method
