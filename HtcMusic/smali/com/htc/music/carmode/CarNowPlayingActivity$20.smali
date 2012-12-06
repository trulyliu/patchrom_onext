.class Lcom/htc/music/carmode/CarNowPlayingActivity$20;
.super Landroid/os/Handler;
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
    .line 1319
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 1323
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1325
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->isShown()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1329
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->isShown()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;

    .line 1334
    .local v19, trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1344
    .local v17, secoondaryText:Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1346
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    :goto_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1354
    const-string v20, " - "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_3

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1369
    .local v14, queuePos:Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueuePos:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1370
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueueSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3100(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v20

    if-lez v20, :cond_7

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1338
    .end local v14           #queuePos:Ljava/lang/StringBuilder;
    .end local v17           #secoondaryText:Ljava/lang/StringBuilder;
    :cond_4
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "track is  null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1348
    .restart local v17       #secoondaryText:Ljava/lang/StringBuilder;
    :cond_5
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "album name is  null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1357
    :cond_6
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "artist name is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1376
    .restart local v14       #queuePos:Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto/16 :goto_0

    .line 1382
    .end local v14           #queuePos:Ljava/lang/StringBuilder;
    .end local v17           #secoondaryText:Ljava/lang/StringBuilder;
    .end local v19           #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_playing"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1383
    .local v9, isPlaying:Z
    const-string v20, "[CarNowPlayingActivity]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isPlaying = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setPlayPauseButtonImage(Z)V
    invoke-static {v0, v9}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3300(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V

    goto/16 :goto_0

    .line 1389
    .end local v9           #isPlaying:Z
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "shuffle_mode"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1390
    .local v18, shuffleMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setShuffleButtonImage(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto/16 :goto_0

    .line 1395
    .end local v18           #shuffleMode:I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "repeat_mode"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1396
    .local v16, repeatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setRepeatButtonImage(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3500(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto/16 :goto_0

    .line 1401
    .end local v16           #repeatMode:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_playing"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1402
    .restart local v9       #isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshTrackTime(Z)V
    invoke-static {v0, v9}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3600(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V

    goto/16 :goto_0

    .line 1407
    .end local v9           #isPlaying:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;

    move-result-object v20

    if-nez v20, :cond_8

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, ""

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v20 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3702(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1411
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Toast;->setText(I)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1416
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v21

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh(Landroid/os/Handler;)V
    invoke-static/range {v20 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1420
    :pswitch_7
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "reveice REFRESH_GLIDER + "

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "album_queue"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 1422
    .local v2, albumQueue:[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "album_queue_pos"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1423
    .local v3, albumQueuePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshGlider([II)V
    invoke-static {v0, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3800(Lcom/htc/music/carmode/CarNowPlayingActivity;[II)V

    .line 1424
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "reveice REFRESH_GLIDER - "

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    .end local v2           #albumQueue:[I
    .end local v3           #albumQueuePos:I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "album_queue_pos"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1430
    .local v12, pos:I
    if-nez v12, :cond_a

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1435
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static/range {v20 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2102(Lcom/htc/music/carmode/CarNowPlayingActivity;I)I

    goto/16 :goto_0

    .line 1434
    :cond_9
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_START_NEXT_ANIMATION mPresetnation is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1437
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0

    .line 1441
    :cond_b
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_START_NEXT_ANIMATION mPresetnation is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1448
    .end local v12           #pos:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "album_queue_size"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1449
    .local v10, len:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "album_queue_pos"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1450
    .restart local v12       #pos:I
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_d

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    add-int/lit8 v21, v10, -0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1455
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static/range {v20 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2102(Lcom/htc/music/carmode/CarNowPlayingActivity;I)I

    goto/16 :goto_0

    .line 1454
    :cond_c
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_START_PREV_ANIMATION mPresetnation is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1457
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    goto/16 :goto_0

    .line 1460
    :cond_e
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_START_PREV_ANIMATION mPresetnation is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1466
    .end local v10           #len:I
    .end local v12           #pos:I
    :pswitch_a
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_DO_STATE_CHANGE_UI +"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 1471
    .local v4, data:Landroid/os/Bundle;
    const-string v20, "glider_state"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1472
    .local v5, gliderState:I
    const-string v20, "album_queue_pos"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1473
    .local v15, queuePosition:I
    const/16 v20, 0x12

    move/from16 v0, v20

    if-ne v5, v0, :cond_f

    .line 1474
    const/4 v13, 0x0

    .line 1475
    .local v13, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->getSelection()I

    move-result v13

    .line 1478
    if-eq v15, v13, :cond_f

    .line 1479
    const-string v20, "[CarNowPlayingActivity]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "queue pos is not equal to position queue pos = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " position = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    if-nez v15, :cond_10

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1491
    .end local v13           #position:I
    :cond_f
    :goto_6
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_DO_STATE_CHANGE_UI -"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1484
    .restart local v13       #position:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->scrollTo(I)V

    goto :goto_6

    .line 1489
    :cond_11
    const-string v20, "[CarNowPlayingActivity]"

    const-string v21, "UI_DO_STATE_CHANGE_UI mPresentation is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1496
    .end local v4           #data:Landroid/os/Bundle;
    .end local v5           #gliderState:I
    .end local v13           #position:I
    .end local v15           #queuePosition:I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/MotionEvent;

    .line 1497
    .local v11, me:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1504
    .end local v11           #me:Landroid/view/MotionEvent;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z

    move-result v8

    .line 1505
    .local v8, isMounted:Z
    if-eqz v8, :cond_12

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    const v21, 0x7f060032

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1509
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1515
    .end local v8           #isMounted:Z
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_beats_on"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1516
    .local v6, isBeatsOn:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_headset_plugged"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1517
    .local v7, isHeadSetPlugged:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "is_playing"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1518
    .restart local v9       #isPlaying:Z
    if-eqz v9, :cond_14

    if-eqz v7, :cond_14

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1520
    if-eqz v6, :cond_13

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f02000a

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1523
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f020009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1526
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1533
    .end local v6           #isBeatsOn:Z
    .end local v7           #isHeadSetPlugged:Z
    .end local v9           #isPlaying:Z
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static/range {v20 .. v21}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2102(Lcom/htc/music/carmode/CarNowPlayingActivity;I)I

    goto/16 :goto_0

    .line 1323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method
