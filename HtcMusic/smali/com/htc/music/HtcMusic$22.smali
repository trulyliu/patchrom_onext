.class Lcom/htc/music/HtcMusic$22;
.super Landroid/content/BroadcastReceiver;
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
    .line 4182
    iput-object p1, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mUINotInit:Z
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 4519
    :cond_0
    :goto_0
    return-void

    .line 4187
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 4188
    .local v4, action:Ljava/lang/String;
    const-string v26, "com.htc.music.metachanged"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 4189
    const-string v26, "[HtcMusic]"

    const-string v27, "==========META_CHANGED"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    const-string v26, "path"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4193
    .local v5, audioPath:Ljava/lang/String;
    if-nez v5, :cond_7

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5102(Lcom/htc/music/HtcMusic;Z)Z

    .line 4195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4219
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    .line 4220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 4222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 4223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5902(Lcom/htc/music/HtcMusic;Z)Z

    .line 4224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x1

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static/range {v26 .. v28}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4239
    :cond_2
    :goto_2
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v14

    .line 4240
    .local v14, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/htc/music/lyrics/Lyrics;->getCurrentSongId()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v27, v0

    #calls: Lcom/htc/music/HtcMusic;->getCurrentSongId()I
    invoke-static/range {v27 .. v27}, Lcom/htc/music/HtcMusic;->access$6000(Lcom/htc/music/HtcMusic;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 4245
    :goto_3
    if-nez v14, :cond_a

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/widget/LyricsView;

    move-result-object v26

    if-eqz v26, :cond_3

    .line 4247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/widget/LyricsView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/lyrics/widget/LyricsView;->showEmptyView()V

    .line 4249
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mIsLyricShow:Z
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 4250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->updateLyrics()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)V

    .line 4259
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 4261
    const/4 v15, 0x0

    .line 4262
    .local v15, nSelectPos:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v15

    .line 4264
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4266
    if-ltz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_b

    .line 4268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4279
    .end local v15           #nSelectPos:I
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->isShowing()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 4281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v27, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v27 .. v27}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbumAndRefreshDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 4197
    .end local v14           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5102(Lcom/htc/music/HtcMusic;Z)Z

    .line 4198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4199
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 4200
    .local v21, serviceData:Landroid/os/Bundle;
    const-string v26, "path"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4201
    const-string v26, "id"

    const-string v27, "id"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4203
    const-string v26, "queuesize"

    const-string v27, "queuesize"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4205
    const-string v26, "artist"

    const-string v27, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    const-string v26, "album"

    const-string v27, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    const-string v26, "track"

    const-string v27, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    const-string v26, "queueposition"

    const-string v27, "queueposition"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4213
    const-string v26, "queue"

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4214
    const-string v26, "duration"

    const-string v27, "duration"

    const-wide/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4226
    .end local v21           #serviceData:Landroid/os/Bundle;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 4227
    :catch_0
    move-exception v26

    goto/16 :goto_2

    .line 4243
    .restart local v14       #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v14

    goto/16 :goto_3

    .line 4253
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v0, v14}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    goto/16 :goto_4

    .line 4270
    .restart local v15       #nSelectPos:I
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 4272
    :catch_1
    move-exception v8

    .line 4273
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .line 4274
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v10

    .line 4275
    .local v10, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_5

    .line 4282
    .end local v5           #audioPath:Ljava/lang/String;
    .end local v10           #ex:Ljava/lang/NullPointerException;
    .end local v14           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    .end local v15           #nSelectPos:I
    :cond_c
    const-string v26, "com.htc.music.playbackcomplete"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 4283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5902(Lcom/htc/music/HtcMusic;Z)Z

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4285
    :cond_d
    const-string v26, "com.htc.music.playstatechanged"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 4287
    const-string v26, "extrastate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4288
    .local v11, extraState:Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 4289
    const-string v26, "[HtcMusic]"

    const-string v27, "==========PLAYSTATE_CHANGED extraState"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4292
    .local v23, szTitleInfo:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 4293
    const-string v26, "buffering"

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v27, v0

    const v28, 0x7f0600df

    invoke-virtual/range {v27 .. v28}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v27

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4300
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6600(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 4302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    #calls: Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4295
    :cond_f
    const-string v26, "waiting"

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v27, v0

    const v28, 0x7f0600e0

    invoke-virtual/range {v27 .. v28}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v27

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto :goto_6

    .line 4307
    .end local v23           #szTitleInfo:Ljava/lang/String;
    :cond_10
    const-string v26, "[HtcMusic]"

    const-string v27, "==========PLAYSTATE_CHANGED"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    .line 4311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4313
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5902(Lcom/htc/music/HtcMusic;Z)Z

    .line 4315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v16

    .line 4316
    .local v16, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;J)V

    goto/16 :goto_0

    .line 4321
    .end local v16           #next:J
    :catch_3
    move-exception v26

    goto/16 :goto_0

    .line 4318
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPlaybackPaused:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5902(Lcom/htc/music/HtcMusic;Z)Z

    .line 4319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 4325
    .end local v11           #extraState:Ljava/lang/String;
    :cond_12
    const-string v26, "com.htc.music.rotateleft"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 4326
    const-string v26, "[HtcMusic]"

    const-string v27, "==========ANIMATION_MOVE_PREV"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    .line 4330
    const-string v26, "current_playing_pos"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4331
    .local v18, pos:I
    const-string v26, "playlist_len"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 4332
    .local v13, len:I
    add-int/lit8 v26, v13, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, -0x1

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x12

    #setter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$2402(Lcom/htc/music/HtcMusic;I)I

    goto/16 :goto_0

    .line 4336
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v26

    const/16 v27, 0x12

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 4337
    :cond_14
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "prev scrollTo pos = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    goto/16 :goto_0

    .line 4342
    .end local v13           #len:I
    .end local v18           #pos:I
    :cond_15
    const-string v26, "[HtcMusic]"

    const-string v27, "Bad! Service is null at aniamtion"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4344
    :cond_16
    const-string v26, "com.htc.music.rotateright"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 4345
    const-string v26, "[HtcMusic]"

    const-string v27, "==========ANIMATION_MOVE_NEXT"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v26

    const/16 v27, 0x12

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 4348
    :cond_17
    const-string v26, "cookie"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 4349
    .local v7, cookie:I
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "next cookie = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "playAlbumCookie = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I
    invoke-static/range {v28 .. v28}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4351
    if-ltz v7, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPlayAlbumCookie:I
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)I

    move-result v26

    move/from16 v0, v26

    if-ne v0, v7, :cond_0

    .line 4352
    :cond_18
    const-string v26, "current_playing_pos"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4353
    .restart local v18       #pos:I
    if-nez v18, :cond_19

    .line 4354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x12

    #setter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$2402(Lcom/htc/music/HtcMusic;I)I

    goto/16 :goto_0

    .line 4357
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getSelection()I

    move-result v12

    .line 4358
    .local v12, gliderPos:I
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "next glider pos = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    .line 4360
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "next scrollTo pos = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0

    .line 4365
    .end local v7           #cookie:I
    .end local v12           #gliderPos:I
    .end local v18           #pos:I
    :cond_1a
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cannot scroll mGliderState is wrong =  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v28 .. v28}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4369
    :cond_1b
    const-string v26, "[HtcMusic]"

    const-string v27, "Bad! Service is null at aniamtion"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4371
    :cond_1c
    const-string v26, "skip_prev"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 4372
    const-string v26, "[HtcMusic]"

    const-string v27, "seek to 0, donot do animation"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x12

    #setter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$2402(Lcom/htc/music/HtcMusic;I)I

    .line 4374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 4375
    :cond_1d
    const-string v26, "com.htc.music.rotatequickly"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 4376
    const-string v26, "[HtcMusic]"

    const-string v27, "==========ANIMATION_ROTATE_CIRCLE_QUICK"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4377
    :cond_1e
    const-string v26, "com.htc.music.queuechanged"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 4378
    const-string v26, "[HtcMusic]"

    const-string v27, "==========QUEUE_CHANGED"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->hasMessages(I)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 4381
    const-string v26, "[HtcMusic]"

    const-string v27, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4385
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    .line 4387
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v19

    .line 4388
    .local v19, queueSize:I
    if-gtz v19, :cond_20

    .line 4389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    if-eqz v26, :cond_20

    .line 4390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 4400
    .end local v19           #queueSize:I
    :cond_20
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->updateGlider()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;)V

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 4402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5102(Lcom/htc/music/HtcMusic;Z)Z

    .line 4403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4395
    :catch_4
    move-exception v8

    .line 4396
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 4405
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_21
    const-string v26, "com.htc.music.refresh"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 4406
    const-string v26, "[HtcMusic]"

    const-string v27, "==========ANIMATION_REFRESH "

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)V

    .line 4408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 4409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mMetaChangeInUIAgain:Z
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5102(Lcom/htc/music/HtcMusic;Z)Z

    .line 4410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v26

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4412
    :cond_22
    const-string v26, "com.htc.music.changeart"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 4413
    const-string v26, "[HtcMusic]"

    const-string v27, "==========ANIMATION_CHANGE_ART "

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 4416
    const/16 v26, 0x0

    :try_start_6
    invoke-static/range {v26 .. v26}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v26

    if-eqz v26, :cond_27

    .line 4418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v25

    .line 4420
    .local v25, temp:Ljava/lang/String;
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getAlbumArt path:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4421
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mLastPluginArtPath = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    const/4 v6, 0x1

    .line 4424
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_23

    if-eqz v25, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 4426
    const/4 v6, 0x0

    .line 4429
    :cond_23
    if-eqz v6, :cond_0

    .line 4430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$4802(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v15

    .line 4433
    .restart local v15       #nSelectPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v26

    if-eqz v26, :cond_25

    .line 4435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v26

    if-eqz v26, :cond_24

    .line 4436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 4437
    const/4 v15, 0x0

    .line 4439
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    .line 4441
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v26

    if-eqz v26, :cond_26

    .line 4442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 4450
    .end local v6           #changed:Z
    .end local v15           #nSelectPos:I
    .end local v25           #temp:Ljava/lang/String;
    :catch_5
    move-exception v8

    .line 4451
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4444
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v6       #changed:Z
    .restart local v15       #nSelectPos:I
    .restart local v25       #temp:Ljava/lang/String;
    :cond_26
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    goto/16 :goto_0

    .line 4447
    .end local v6           #changed:Z
    .end local v15           #nSelectPos:I
    .end local v25           #temp:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v20

    .line 4448
    .local v20, selectedPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 4454
    .end local v20           #selectedPos:I
    :cond_28
    const-string v26, "com.htc.music.onerror"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2e

    .line 4455
    const-string v26, "[HtcMusic]"

    const-string v27, "==========OS_ON_ERROR "

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    const-string v26, "error_id"

    const/16 v27, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 4458
    .local v9, errorId:I
    const/16 v26, -0x2710

    move/from16 v0, v26

    if-eq v9, v0, :cond_29

    .line 4459
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "error id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/htc/music/HtcMusic;->handleDMCError(I)V
    invoke-static {v0, v9}, Lcom/htc/music/HtcMusic;->access$7000(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    .line 4461
    :cond_29
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v26

    if-eqz v26, :cond_2d

    .line 4463
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v26

    if-nez v26, :cond_0

    .line 4469
    :cond_2a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->finish()V

    .line 4470
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 4471
    .local v24, targetIntent:Landroid/content/Intent;
    const/high16 v26, 0x1400

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const-class v27, Lcom/htc/music/MediaPlaybackErrorActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4475
    const-string v26, "pluginmode"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4476
    const-string v26, "errorcause"

    const-string v27, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4479
    const/16 v22, 0x0

    .line 4480
    .local v22, szCurPluginName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2b

    .line 4482
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    invoke-interface/range {v26 .. v27}, Lcom/htc/music/IMediaPlaybackService;->getPluginName(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result-object v22

    .line 4487
    :cond_2b
    :goto_9
    if-eqz v22, :cond_2c

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_2c

    .line 4488
    const-string v26, ".DMCMusicPlaybackService"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2c

    .line 4489
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DMC Error:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4465
    .end local v22           #szCurPluginName:Ljava/lang/String;
    .end local v24           #targetIntent:Landroid/content/Intent;
    :catch_6
    move-exception v10

    .line 4466
    .local v10, ex:Landroid/os/RemoteException;
    const-string v26, "[HtcMusic]"

    const-string v27, "Remote Exception in OS_ON_ERROR"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4483
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v22       #szCurPluginName:Ljava/lang/String;
    .restart local v24       #targetIntent:Landroid/content/Intent;
    :catch_7
    move-exception v8

    .line 4484
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 4495
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 4496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 4498
    .end local v22           #szCurPluginName:Ljava/lang/String;
    .end local v24           #targetIntent:Landroid/content/Intent;
    :cond_2d
    const-string v26, "[HtcMusic]"

    const-string v27, "Something error, we don\'t handle this intent action in local player."

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4501
    .end local v9           #errorId:I
    :cond_2e
    const-string v26, "com.android.music.settingchanged"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 4502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)V

    .line 4503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4504
    :cond_2f
    const-string v26, "com.htc.music.update_glider_position"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_31

    .line 4505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    if-nez v26, :cond_30

    .line 4506
    const-string v26, "[HtcMusic]"

    const-string v27, "mPresetnation is null"

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4509
    :cond_30
    const-string v26, "current_playing_pos"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 4511
    .restart local v15       #nSelectPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    goto/16 :goto_0

    .line 4512
    .end local v15           #nSelectPos:I
    :cond_31
    const-string v26, "com.htc.music.switchdlnamode"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_32

    .line 4513
    const-string v26, "[HtcMusic]"

    const-string v27, "========== SWITCH_DLNA_MODE "

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    const-string v27, "dlnamode"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    #setter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static/range {v26 .. v27}, Lcom/htc/music/HtcMusic;->access$5002(Lcom/htc/music/HtcMusic;I)I

    .line 4515
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mDlnaMode:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static/range {v28 .. v28}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4517
    :cond_32
    const-string v26, "[HtcMusic]"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unknown action = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
