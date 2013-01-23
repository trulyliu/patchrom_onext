.class public Landroid/media/AudioService$HtcBeatsEffection$HtcBeatsNotifyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$HtcBeatsEffection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcBeatsNotifyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioService$HtcBeatsEffection;


# direct methods
.method public constructor <init>(Landroid/media/AudioService$HtcBeatsEffection;)V
    .locals 0
    .parameter

    .prologue
    .line 3999
    iput-object p1, p0, Landroid/media/AudioService$HtcBeatsEffection$HtcBeatsNotifyBroadcastReceiver;->this$1:Landroid/media/AudioService$HtcBeatsEffection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4004
    const-string v2, "com.htc.intent.action.BEATS_NOTIFICATION_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4005
    const-string v2, "AudioService"

    const-string v3, "INTENT_BEATS_NOTIFY_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4008
    .local v0, am:Landroid/media/AudioManager;
    move-object v1, v0

    .line 4009
    .local v1, ifam:Landroid/media/HtcIfAudioManager;
    if-eqz v1, :cond_1

    .line 4011
    const/16 v2, 0x384

    const-string v3, "HtcBeatsNotify"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    .line 4034
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #ifam:Landroid/media/HtcIfAudioManager;
    :cond_0
    :goto_0
    return-void

    .line 4015
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #ifam:Landroid/media/HtcIfAudioManager;
    :cond_1
    const-string v2, "AudioService"

    const-string v3, "ifam is null, can\'t setGlobal effect"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4019
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #ifam:Landroid/media/HtcIfAudioManager;
    :cond_2
    const-string v2, "com.htc.intent.action.BEATS_NOTIFICATION_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4020
    const-string v2, "AudioService"

    const-string v3, "INTENT_BEATS_NOTIFY_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4023
    .restart local v0       #am:Landroid/media/AudioManager;
    move-object v1, v0

    .line 4024
    .restart local v1       #ifam:Landroid/media/HtcIfAudioManager;
    if-eqz v1, :cond_3

    .line 4026
    const/16 v2, 0x320

    const-string v3, "HtcBeatsNotify"

    invoke-interface {v1, v2, v3}, Landroid/media/HtcIfAudioManager;->setGlobalEffect(ILjava/lang/String;)V

    goto :goto_0

    .line 4030
    :cond_3
    const-string v2, "AudioService"

    const-string v3, "ifam is null, can\'t setGlobal effect"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
