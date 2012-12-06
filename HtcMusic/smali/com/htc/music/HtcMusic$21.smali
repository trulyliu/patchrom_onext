.class Lcom/htc/music/HtcMusic$21;
.super Landroid/os/Handler;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 3903
    iput-object p1, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 3906
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 4065
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3916
    :sswitch_1
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->initialUI()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$3600(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 3920
    :sswitch_2
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 3924
    :sswitch_3
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    .line 3925
    .local v5, next:J
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v9, v5, v6}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;J)V

    goto :goto_0

    .line 3933
    .end local v5           #next:J
    :sswitch_4
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f06004f

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f060050

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x2040151

    new-instance v11, Lcom/htc/music/HtcMusic$21$1;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$21$1;-><init>(Lcom/htc/music/HtcMusic$21;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3946
    :sswitch_5
    const-string v9, "[HtcMusic]"

    const-string v10, "msg.what = START_ENHANCER_SERVICE_ONSTART"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const-string v10, "action_activity_on_start"

    #calls: Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/htc/music/HtcMusic;->access$3900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto :goto_0

    .line 3958
    :sswitch_6
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v9, :cond_0

    .line 3959
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    .line 3965
    :sswitch_7
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcMultiSeekBarDialog;->dismiss()V

    goto :goto_0

    .line 3969
    :sswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3970
    .local v1, data:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 3971
    const-string v9, "[HtcMusic]"

    const-string v10, "UPDATE_TRACKINFO_UI without Bundle!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3974
    :cond_1
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v9

    if-nez v9, :cond_3

    .line 3975
    :cond_2
    const-string v9, "[HtcMusic]"

    const-string v10, "UPDATE_TRACKINFO_UI but null mTrackName/mAlbumArtistName/mTotalTime"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3978
    :cond_3
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const-string v10, "albumName"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/htc/music/HtcMusic;->access$4302(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 3979
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const-string v10, "artistName"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/htc/music/HtcMusic;->access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 3980
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const-string v10, "duration"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    #setter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v9, v10, v11}, Lcom/htc/music/HtcMusic;->access$1202(Lcom/htc/music/HtcMusic;J)J

    .line 3981
    const-string v9, "TrackName"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3982
    .local v8, track:Ljava/lang/String;
    const-string v9, "AlbumArtistName"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3983
    .local v0, albumArtist:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v10, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 3984
    .local v7, time:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-nez v8, :cond_5

    .line 3985
    :cond_4
    const-string v9, "[HtcMusic]"

    const-string v10, "UPDATE_TRACKINFO_UI, but albumArtist/track is empty!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    const-string v9, "[HtcMusic]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "albumArtist:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    const-string v9, "[HtcMusic]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "track:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    :cond_5
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3990
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3991
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3995
    .end local v0           #albumArtist:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Bundle;
    .end local v7           #time:Ljava/lang/String;
    .end local v8           #track:Ljava/lang/String;
    :sswitch_9
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 3996
    iget-object v10, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #setter for: Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/htc/music/HtcMusic;->access$4502(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4001
    :goto_1
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$2200(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 3998
    :cond_6
    const-string v9, "[HtcMusic]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive UPDATE_TITLE with unknown queueInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    invoke-static {v9, v13}, Lcom/htc/music/HtcMusic;->access$4502(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 4004
    :sswitch_a
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 4007
    :sswitch_b
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4012
    :sswitch_c
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v9, v9, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v9, :cond_7

    .line 4013
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v9, v12}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 4014
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$2200(Lcom/htc/music/HtcMusic;)V

    .line 4017
    :cond_7
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_8

    .line 4018
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v10

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 4020
    :cond_8
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v9, :cond_9

    .line 4021
    const/4 v2, 0x0

    .line 4023
    .local v2, dms:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getDmsServer()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4027
    :goto_2
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v9, v13}, Lcom/htc/music/HtcMusic;->access$4802(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4028
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4029
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v9}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/music/util/MusicUtils;->switchToPush(Landroid/content/Context;)Z

    .line 4037
    .end local v2           #dms:Ljava/lang/String;
    :cond_9
    :goto_3
    :sswitch_d
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v10, 0x12

    #setter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static {v9, v10}, Lcom/htc/music/HtcMusic;->access$2402(Lcom/htc/music/HtcMusic;I)I

    goto/16 :goto_0

    .line 4024
    .restart local v2       #dms:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 4025
    .local v3, ex:Landroid/os/RemoteException;
    const-string v9, "[HtcMusic]"

    const-string v10, "MSG_SWITCH_MODE - remote exception in mService.getDmsServer"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4031
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_a
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v9}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/music/util/MusicUtils;->switchToDmc(Landroid/content/Context;)Z

    goto :goto_3

    .line 4042
    .end local v2           #dms:Ljava/lang/String;
    :sswitch_e
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto/16 :goto_0

    .line 4047
    :sswitch_f
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v10, 0x16

    invoke-virtual {v9, v10}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto/16 :goto_0

    .line 4052
    :sswitch_10
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateLyricView()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4057
    :sswitch_11
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v4

    .line 4058
    .local v4, lyrics:Lcom/htc/music/lyrics/Lyrics;
    iget-object v9, p0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v9, v4}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    goto/16 :goto_0

    .line 3906
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x5 -> :sswitch_2
        0x8 -> :sswitch_5
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0x66 -> :sswitch_6
        0x6a -> :sswitch_11
        0x6c -> :sswitch_10
        0xc9 -> :sswitch_1
        0x1771 -> :sswitch_7
        0x3a99 -> :sswitch_0
        0x3a9a -> :sswitch_b
        0x3a9b -> :sswitch_c
        0x3a9c -> :sswitch_d
        0x3a9d -> :sswitch_e
        0x3a9e -> :sswitch_f
    .end sparse-switch
.end method
