.class Lcom/htc/music/carmode/CarNowPlayingActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 970
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.music.metachanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 972
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== META_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 974
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const-string v4, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 977
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== PLAYBACK_COMPLETE"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    goto :goto_0

    .line 979
    :cond_2
    const-string v4, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 980
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== PLAYSTATE_CHANGE"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 982
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    goto :goto_0

    .line 983
    :cond_3
    const-string v4, "com.htc.music.queuechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 984
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== QUEUE_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 987
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 991
    :cond_4
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 992
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 993
    :cond_5
    const-string v4, "com.htc.music.rotateright"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 994
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ==========ANIMATION_MOVE_NEXT"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 996
    const-string v4, "current_playing_pos"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 997
    .local v2, pos:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 998
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 999
    .local v1, animMsg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_pos"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1003
    .end local v1           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    :cond_6
    const-string v4, "com.htc.music.rotateleft"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1004
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ==========ANIMATION_MOVE_PREV"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 1006
    const-string v4, "current_playing_pos"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1007
    .restart local v2       #pos:I
    const-string v4, "playlist_len"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1008
    .local v3, queueSize:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1009
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1010
    .restart local v1       #animMsg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_pos"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_size"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1015
    .end local v1           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    .end local v3           #queueSize:I
    :cond_7
    const-string v4, "com.htc.music.refresh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1016
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ==========ANIMATION_REFRESH"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    .line 1018
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1019
    :cond_8
    const-string v4, "skip_prev"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1020
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "seek to 0, donot do animation"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/16 v5, 0x12

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2102(Lcom/htc/music/carmode/CarNowPlayingActivity;I)I

    .line 1022
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v5

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime(Landroid/os/Handler;)V
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method
