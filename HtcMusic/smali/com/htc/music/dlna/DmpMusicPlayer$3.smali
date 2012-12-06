.class Lcom/htc/music/dlna/DmpMusicPlayer$3;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6
    .parameter "focusChange"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    packed-switch p1, :pswitch_data_0

    .line 652
    :pswitch_0
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "Unknown audio focus change code"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 607
    :pswitch_1
    const-string v2, "[DmpMusicPlayer]"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2402(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 610
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 611
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->pause()V

    goto :goto_0

    .line 615
    :pswitch_2
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2402(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 618
    iget-object v3, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 619
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->pause()V

    goto :goto_0

    .line 623
    :pswitch_3
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2402(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 626
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 627
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->setVolume(F)V

    .line 628
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "Mute since received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :pswitch_4
    const-string v4, "[DmpMusicPlayer]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$700(Lcom/htc/music/dlna/DmpMusicPlayer;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 634
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 635
    .local v0, isPhoneHook:Z
    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 638
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2500(Lcom/htc/music/dlna/DmpMusicPlayer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2502(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 640
    if-nez v0, :cond_0

    .line 641
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-virtual {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->play()V

    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 636
    goto :goto_1

    .line 643
    :cond_3
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2400(Lcom/htc/music/dlna/DmpMusicPlayer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2402(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 645
    if-nez v0, :cond_4

    .line 646
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$3;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->setVolume(F)V

    .line 648
    :cond_4
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "Unmute since received AUDIOFOCUS_GAIN"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
