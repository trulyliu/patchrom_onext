.class Lcom/htc/music/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1108
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "BroadcastReceiver onReceive"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, action:Ljava/lang/String;
    const-string v21, "command"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1111
    .local v4, cmd:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1112
    const-string v21, "[MediaPlaybackService]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "command: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_0
    const-string v21, "forcePlay"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1115
    .local v7, forcePlay:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const-string v22, "phone"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 1116
    .local v19, tm:Landroid/telephony/TelephonyManager;
    if-nez v19, :cond_2

    .line 1117
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "TelephonyManager NULL"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1120
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v21

    if-nez v21, :cond_3

    const/4 v12, 0x1

    .line 1121
    .local v12, isPhoneIdle:Z
    :goto_1
    if-nez v12, :cond_5

    .line 1125
    const-string v21, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1127
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Phone is not idle && ACTION_AUDIO_BECOMING_NOISY"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1120
    .end local v12           #isPhoneIdle:Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1134
    .restart local v12       #isPhoneIdle:Z
    :cond_4
    const-string v21, "resume"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "pause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "com.htc.music.onerror"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1136
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "call state is not idle && command is not match -> return"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_5
    const-string v21, "next"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    const-string v21, "com.htc.music.musicservicecommand.next"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    const-string v21, "com.android.music.musicservicecommand.next"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1141
    :cond_6
    if-eqz v7, :cond_7

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$4402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1143
    :cond_7
    const-string v21, "ignore_anim"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1144
    .local v10, ignoreAnim:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    if-nez v10, :cond_8

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    #calls: Lcom/htc/music/MediaPlaybackService;->nextAsync(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5800(Lcom/htc/music/MediaPlaybackService;ZZ)V

    goto/16 :goto_0

    :cond_8
    const/16 v21, 0x0

    goto :goto_2

    .line 1145
    .end local v10           #ignoreAnim:Z
    :cond_9
    const-string v21, "previous"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "com.htc.music.musicservicecommand.previous"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "com.android.music.musicservicecommand.previous"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1146
    :cond_a
    if-eqz v7, :cond_b

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$4402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1148
    :cond_b
    const-string v21, "ignore_anim"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1149
    .restart local v10       #ignoreAnim:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v22, v0

    if-nez v10, :cond_c

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    #calls: Lcom/htc/music/MediaPlaybackService;->prevAsync(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$5900(Lcom/htc/music/MediaPlaybackService;Z)V

    goto/16 :goto_0

    :cond_c
    const/16 v21, 0x0

    goto :goto_3

    .line 1150
    .end local v10           #ignoreAnim:Z
    :cond_d
    const-string v21, "togglepause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "com.htc.music.musicservicecommand.togglepause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "com.android.music.musicservicecommand.togglepause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1151
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1156
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->reloadAndPlayMusicInWorker()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$6000(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 1160
    :cond_10
    const-string v21, "pause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    const-string v21, "com.htc.music.musicservicecommand.pause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    const-string v21, "com.android.music.musicservicecommand.pause"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1161
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1163
    :cond_12
    const-string v21, "play"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->reloadAndPlayMusicInWorker()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$6000(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 1165
    :cond_13
    const-string v21, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 1169
    :cond_14
    const-string v21, "ffstart"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$4802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1173
    .local v15, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    const-wide/16 v22, 0x104

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1174
    .end local v15           #msg:Landroid/os/Message;
    :cond_15
    const-string v21, "rwstart"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$4802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1178
    .restart local v15       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    const-wide/16 v22, 0x104

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1179
    .end local v15           #msg:Landroid/os/Message;
    :cond_16
    const-string v21, "ffstop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_17

    const-string v21, "rwstop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 1180
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1181
    :cond_18
    const-string v21, "resume"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$5700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$6100(Lcom/htc/music/MediaPlaybackService;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$5702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1194
    :cond_19
    const-string v21, "android.htc.intent.action.PLAYBACK_RINGTONE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1a

    const-string v21, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 1197
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    #setter for: Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J
    invoke-static/range {v21 .. v23}, Lcom/htc/music/MediaPlaybackService;->access$6202(Lcom/htc/music/MediaPlaybackService;J)J

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 1204
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Phone Idel && ACTION_AUDIO_BECOMING_NOISY && FADEIN"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v21

    if-eqz v21, :cond_1b

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v21

    const/high16 v22, 0x3f80

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1208
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 1210
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v11

    .line 1218
    .local v11, isMirror:Z
    if-nez v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v21

    if-nez v21, :cond_1d

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 1222
    :cond_1d
    const-string v21, "[MediaPlaybackService]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_AUDIO_BECOMING_NOISY, isPlaying, isMirror: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    .end local v11           #isMirror:Z
    :cond_1e
    const-string v21, "com.htc.music.onerror"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1227
    const-string v21, "error_id"

    const/16 v22, -0x2718

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1229
    .local v6, errorId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V
    invoke-static {v0, v6}, Lcom/htc/music/MediaPlaybackService;->access$6300(Lcom/htc/music/MediaPlaybackService;I)V

    goto/16 :goto_0

    .line 1231
    .end local v6           #errorId:I
    :cond_1f
    const-string v21, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 1232
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Receiver, get ACTION_DMC_DESTROY_NOTIFY_AP"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v21, "cookie"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1236
    .local v5, cookie:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_21

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 1238
    const/4 v13, 0x0

    .line 1239
    .local v13, isPowerOff:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v0, v13}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;Z)V

    goto/16 :goto_0

    .line 1241
    .end local v13           #isPowerOff:Z
    :cond_20
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1245
    :cond_21
    const-string v21, "[MediaPlaybackService]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_DMC_DESTROY_NOTIFY_AP, cookie: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1247
    .end local v5           #cookie:I
    :cond_22
    const-string v21, "com.android.music.settingrequest"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27

    .line 1248
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Intent Receiver, Playback setting requested"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 1251
    .local v17, settings:Landroid/os/Bundle;
    if-eqz v17, :cond_26

    .line 1252
    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_23
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_25

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1253
    .local v14, key:Ljava/lang/String;
    const-string v21, "repeat"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_24

    .line 1254
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1255
    .local v20, val:I
    const/16 v16, 0x0

    .line 1256
    .local v16, repeatmode:I
    packed-switch v20, :pswitch_data_0

    .line 1267
    :pswitch_0
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Ignoring unknown repeat mode"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :goto_5
    if-ltz v16, :cond_23

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->setRepeatMode(I)V

    goto :goto_4

    .line 1258
    :pswitch_1
    const/16 v16, 0x0

    .line 1259
    goto :goto_5

    .line 1261
    :pswitch_2
    const/16 v16, 0x1

    .line 1262
    goto :goto_5

    .line 1264
    :pswitch_3
    const/16 v16, 0x2

    .line 1265
    goto :goto_5

    .line 1274
    .end local v16           #repeatmode:I
    .end local v20           #val:I
    :cond_24
    const-string v21, "shuffle"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 1275
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1276
    .restart local v20       #val:I
    const/16 v18, 0x0

    .line 1278
    .local v18, shufflemode:I
    packed-switch v20, :pswitch_data_1

    .line 1291
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Ignoring unknown shuffle mode"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :goto_6
    if-ltz v18, :cond_23

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_4

    .line 1280
    :pswitch_4
    const/16 v18, 0x0

    .line 1281
    goto :goto_6

    .line 1285
    :pswitch_5
    const/16 v18, 0x1

    .line 1286
    goto :goto_6

    .line 1288
    :pswitch_6
    const/16 v18, 0x1

    .line 1289
    goto :goto_6

    .line 1302
    .end local v14           #key:Ljava/lang/String;
    .end local v18           #shufflemode:I
    .end local v20           #val:I
    :cond_25
    new-instance v8, Landroid/content/Intent;

    const-string v21, "com.android.music.settingchanged"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v8, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1306
    .end local v8           #i:Landroid/content/Intent;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_26
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "SETTING_REQUEST, settings is null!"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1309
    .end local v17           #settings:Landroid/os/Bundle;
    :cond_27
    const-string v21, "com.android.music.playstaterequest"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1310
    const-string v21, "[MediaPlaybackService]"

    const-string v22, "Intent Receiver, Playback status requested"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/MediaPlaybackService;->mCurrentPlaybackState:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/MediaPlaybackService;->access$6400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Lcom/htc/music/util/MusicUtils;->broadcastPlaybackStatus(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1278
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
