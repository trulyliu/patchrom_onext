.class Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadSetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/HeadSetHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/util/HeadSetHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 278
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v10, :cond_7

    :cond_0
    move v4, v9

    .line 279
    .local v4, isHeadsetPluggedLastTime:Z
    :goto_0
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v3, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    .line 280
    .local v3, isBeatsHeadsetLastTime:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, action:Ljava/lang/String;
    const-string v10, "[HeadSethelper]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HeadSetReceiver, action: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 283
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v5

    .line 284
    .local v5, isPlugged:Z
    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v2

    .line 286
    .local v2, isBeats:Z
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-ne v10, v5, :cond_1

    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    if-eq v10, v2, :cond_2

    .line 287
    :cond_1
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iput-boolean v5, v10, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    .line 288
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iput-boolean v2, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    .line 289
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v10}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorWiredHeadSetChange()V

    .line 331
    .end local v2           #isBeats:Z
    .end local v5           #isPlugged:Z
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v10, :cond_4

    :cond_3
    move v8, v9

    :cond_4
    if-ne v4, v8, :cond_5

    iget-object v8, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v8, v8, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    if-eq v3, v8, :cond_6

    .line 333
    :cond_5
    iget-object v8, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorHeadSetChange()V

    .line 336
    :cond_6
    :goto_2
    return-void

    .end local v1           #action:Ljava/lang/String;
    .end local v3           #isBeatsHeadsetLastTime:Z
    .end local v4           #isHeadsetPluggedLastTime:Z
    :cond_7
    move v4, v8

    .line 278
    goto :goto_0

    .line 291
    .restart local v1       #action:Ljava/lang/String;
    .restart local v3       #isBeatsHeadsetLastTime:Z
    .restart local v4       #isHeadsetPluggedLastTime:Z
    :cond_8
    const-string v10, "com.htc.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 292
    const-string v10, "name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, name:Ljava/lang/String;
    const-string v10, "state"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, a2dpOn:I
    const-string v10, "[HeadSethelper]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HeadSetReceiver, ACTION_A2DP_PLUG, a2dpOn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-ne v0, v9, :cond_9

    .line 301
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eq v9, v10, :cond_6

    .line 304
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    .line 315
    :goto_3
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v10}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorBTHeadSetChange()V

    goto :goto_1

    .line 306
    :cond_9
    if-nez v0, :cond_6

    .line 307
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v10, :cond_6

    .line 310
    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    goto :goto_3

    .line 323
    .end local v0           #a2dpOn:I
    .end local v6           #name:Ljava/lang/String;
    :cond_a
    const-string v10, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 324
    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    const-string v10, "android.media.EXTRA_BEATSEFFECT_STATUS"

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsOn:Z

    .line 325
    const-string v8, "android.media.EXTRA_CALLER_NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, szAPPName:Ljava/lang/String;
    const-string v8, "[HeadSethelper]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HeadSetReceiver, GLOBAL_BEATSEFFECT_CHANGE, mIsBeatsOn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v10, v10, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", szAPPName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v8, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorBeatsAudioStatusChange()V

    goto/16 :goto_2
.end method
