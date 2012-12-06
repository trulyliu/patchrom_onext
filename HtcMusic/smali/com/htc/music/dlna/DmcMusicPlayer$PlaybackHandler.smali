.class Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;
.super Landroid/os/Handler;
.source "DmcMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmcMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmcMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mainLooper"

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    .line 2163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2164
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v1, 0x69

    .line 2168
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2170
    :sswitch_0
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2171
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call play mPlaystate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "startPlay()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2174
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    goto :goto_0

    .line 2176
    :cond_1
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "mDLNAManager is null when startPlay()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :cond_2
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 2179
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_PAUSING can not call play STATE : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2185
    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2186
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "call pause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2188
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    goto/16 :goto_0

    .line 2190
    :cond_3
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "mDLNAManager is null when request pause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2192
    :cond_4
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 2193
    const-string v0, "[DmcMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discard pause can not call pause STATE : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2199
    :sswitch_2
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 2200
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2201
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playNext()V

    .line 2204
    :goto_1
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "call next"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2203
    :cond_5
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "DLNAManager is null in playNext"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2206
    :cond_6
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 2207
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "Discard next event"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2214
    :sswitch_3
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3200(Lcom/htc/music/dlna/DmcMusicPlayer;)I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 2215
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2216
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playPrevious()V

    .line 2219
    :goto_2
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "call previous"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2218
    :cond_7
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "DLNAManager is null in playPrev"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2221
    :cond_8
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 2222
    const-string v0, "[DmcMusicPlayer]"

    const-string v1, "Discard prev event"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2228
    :sswitch_4
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    iget-boolean v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer;->isPlaybackDisabled:Z

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$2900(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 2230
    iget-object v0, p0, Lcom/htc/music/dlna/DmcMusicPlayer$PlaybackHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    const/4 v1, 0x7

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mPlayState:I
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$3202(Lcom/htc/music/dlna/DmcMusicPlayer;I)I

    goto/16 :goto_0

    .line 2168
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x2710 -> :sswitch_4
    .end sparse-switch
.end method
