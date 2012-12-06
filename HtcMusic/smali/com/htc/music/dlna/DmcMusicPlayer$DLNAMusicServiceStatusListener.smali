.class Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;
.super Ljava/lang/Object;
.source "DmcMusicPlayer.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmcMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAMusicServiceStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmcMusicPlayer;


# direct methods
.method private constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1888
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 1894
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceConnected()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1902(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    .line 1896
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->loadMusicInfo()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 1897
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsRelease:Z
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2100(Lcom/htc/music/dlna/DmcMusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1898
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 1902
    :goto_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1902(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    .line 1903
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "DmcMusicPlayer has been released"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    :goto_1
    return-void

    .line 1901
    :cond_0
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "dlna service manager is null when disconnect"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Bundle;

    move-result-object v1

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->setRenderer(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2300(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Bundle;)V

    .line 1907
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaylistInfo:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Bundle;

    move-result-object v1

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->startToPlay(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2400(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Bundle;)V

    .line 1908
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->notifyDlnaConnected()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2500(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    goto :goto_1
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 1915
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceDisconnected "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1902(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    .line 1917
    return-void
.end method

.method public onServiceError()V
    .locals 2

    .prologue
    .line 1922
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceError "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    return-void
.end method
