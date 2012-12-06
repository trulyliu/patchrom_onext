.class Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "DmcMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmcMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmcMusicPlayer;


# direct methods
.method private constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1928
    invoke-direct {p0, p1}, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    return-void
.end method


# virtual methods
.method public onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 2026
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2027
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2028
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "adn_server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string v2, "adn_content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v2, "adn_filepath"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2032
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2033
    return-void
.end method

.method public onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 5
    .parameter "ctlInfo"

    .prologue
    .line 1964
    const/4 v0, 0x0

    .line 1965
    .local v0, oldAlbumArtPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3300(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1966
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3300(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1967
    :cond_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    invoke-static {v2, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3302(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 1968
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-object v3, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3402(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1970
    iget-wide v2, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    long-to-int v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 1971
    .local v1, tempPos:I
    if-ltz v1, :cond_3

    .line 1972
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3500(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1973
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I
    invoke-static {v2, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3502(Lcom/htc/music/dlna/DmcMusicPlayer;I)I

    .line 1979
    :cond_1
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] mCurrentDMRName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mCurrentDMRName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] mPlayPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3500(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1983
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v3

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3602(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1986
    :goto_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const-string v3, "com.htc.music.plugin.dmcmetachanged"

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    .line 1987
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const-string v3, "com.htc.music.plugin.albumartchanged"

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    .line 1990
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3700(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1991
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->saveCurrentPos()V
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3800(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 2002
    :cond_2
    :goto_1
    return-void

    .line 1976
    :cond_3
    const-string v2, "[DmcMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] tempPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1985
    :cond_4
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "mDLNAManager is null in onControllerInfoupdated"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1992
    :cond_5
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mnSource:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3700(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1993
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1994
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-object v3, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3902(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1997
    :goto_2
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3900(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1998
    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->saveCurrentPos()V
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3800(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    goto :goto_1

    .line 1996
    :cond_6
    const-string v2, "[DmcMusicPlayer]"

    const-string v3, "DLNAManager is null in getContentID"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2018
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAController onError. ErrorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ErrorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->handleError(I)V
    invoke-static {v0, p2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$4100(Lcom/htc/music/dlna/DmcMusicPlayer;I)V

    .line 2020
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 5
    .parameter "playState"

    .prologue
    const/4 v4, 0x1

    .line 1934
    move v0, p1

    .line 1935
    .local v0, nState:I
    const-string v1, "[DmcMusicPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAController onStateChanged, nState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 1937
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->disablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 1938
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const-string v2, "com.htc.music.plugin.statechanged.buffering"

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    .line 1944
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_4

    .line 1957
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v1, p1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3202(Lcom/htc/music/dlna/DmcMusicPlayer;I)I

    .line 1958
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    .line 1960
    return-void

    .line 1939
    :cond_2
    const/16 v1, 0x6a

    if-ne v0, v1, :cond_3

    .line 1940
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const-string v2, "com.htc.music.plugin.statechanged.waiting"

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2700(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    goto :goto_0

    .line 1941
    :cond_3
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1942
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2800(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1943
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mMediaPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2800(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1946
    :cond_4
    if-nez p1, :cond_5

    .line 1947
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "STATE_PLAYING notify PLUGIN_PLAYSTATE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    goto :goto_1

    .line 1949
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 1950
    const-string v1, "[DmcMusicPlayer]"

    const-string v2, "STATE_PAUSED notify PLUGIN_PLAYSTATE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    goto :goto_1

    .line 1952
    :cond_6
    const/16 v1, 0x68

    if-ne p1, v1, :cond_1

    .line 1953
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const/16 v2, -0x2717

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->pluginNotifyError(I)V
    invoke-static {v1, v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3000(Lcom/htc/music/dlna/DmcMusicPlayer;I)V

    .line 1954
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3100(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1955
    iget-object v1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3100(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 2006
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAController onResponse: rendererID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    const/16 v0, -0x135

    if-ne p2, v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$4000(Lcom/htc/music/dlna/DmcMusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    invoke-virtual {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->play()V

    .line 2011
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mSetRemoveDataSourceReady:Z
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$4002(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    .line 2014
    :cond_0
    return-void
.end method
