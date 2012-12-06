.class final Lcom/htc/music/MediaPlaybackService$NonUiHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    .line 492
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 493
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .parameter "msg"

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 849
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v4

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v6, 0x7bd

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/htc/music/MusicPluginManager;->stop(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 505
    :pswitch_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_NEXT +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 507
    .local v22, data:Landroid/os/Bundle;
    const-string v3, "play_anim"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    .line 508
    .local v35, playAnim:Z
    const-string v3, "force"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 509
    .local v26, force:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v26

    move/from16 v1, v35

    #calls: Lcom/htc/music/MediaPlaybackService;->nextImpl(ZZ)V
    invoke-static {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;ZZ)V

    .line 510
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_NEXT -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    .end local v22           #data:Landroid/os/Bundle;
    .end local v26           #force:Z
    .end local v35           #playAnim:Z
    :pswitch_2
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PREV +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 517
    .restart local v22       #data:Landroid/os/Bundle;
    const-string v3, "play_anim"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    .line 518
    .restart local v35       #playAnim:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v35

    #calls: Lcom/htc/music/MediaPlaybackService;->prevImpl(Z)V
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Z)V

    .line 519
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PREV -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    .end local v22           #data:Landroid/os/Bundle;
    .end local v35           #playAnim:Z
    :pswitch_3
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PLAY +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->playImpl()V

    .line 526
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PLAY -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :pswitch_4
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PAUSE +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 533
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PAUSE -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :pswitch_5
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_OPEN + "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 540
    .restart local v22       #data:Landroid/os/Bundle;
    const-string v3, "list"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v32

    .line 541
    .local v32, list:[I
    const-string v3, "album_list"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    .line 542
    .local v17, albumList:[I
    const-string v3, "position"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 543
    .local v38, position:I
    const-string v3, "force_shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 545
    .local v27, force_shuffle:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v4

    .line 546
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v32

    move/from16 v1, v38

    move/from16 v2, v27

    #calls: Lcom/htc/music/MediaPlaybackService;->openImpl([IIZ)V
    invoke-static {v3, v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;[IIZ)V

    .line 548
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_OPEN - "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 555
    .end local v17           #albumList:[I
    .end local v22           #data:Landroid/os/Bundle;
    .end local v27           #force_shuffle:Z
    .end local v32           #list:[I
    .end local v38           #position:I
    :pswitch_6
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PLAY_ALBUM + "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 557
    .restart local v22       #data:Landroid/os/Bundle;
    const-string v3, "position"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 558
    .restart local v38       #position:I
    const-string v3, "cookie"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 559
    .local v19, cookie:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService;->playAlbumImpl(II)I

    .line 560
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_PLAY_ALBUM - "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    .end local v19           #cookie:I
    .end local v22           #data:Landroid/os/Bundle;
    .end local v38           #position:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->reloadQueue()V

    goto/16 :goto_0

    .line 569
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.queuechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updatePlayerSettings()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$800(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 578
    :pswitch_9
    const/16 v39, 0x0

    .line 579
    .local v39, salbumartpath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v39

    .line 580
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NonUiHandler salbumartpath: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/16 v18, 0x0

    .line 583
    .local v18, bitmap:Landroid/graphics/Bitmap;
    if-eqz v39, :cond_3

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$902(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 587
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v18

    #calls: Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    invoke-static {v3, v0, v4}, Lcom/htc/music/MediaPlaybackService;->access$1000(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    .line 588
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "case CMD_DECODE_NOTIFICATION_ALBUMART: ---"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    .end local v39           #salbumartpath:Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v21

    .line 594
    .local v21, cursor:Landroid/database/Cursor;
    if-eqz v21, :cond_5

    .line 595
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 596
    .local v20, currentMusicCount:I
    const/16 v31, -0x1

    .line 599
    .local v31, lastMusicCount:I
    :try_start_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 600
    const/16 v21, 0x0

    .line 606
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "musiccount"

    const/4 v6, -0x1

    invoke-static {v3, v4, v6}, Lcom/htc/music/util/MusicUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v31

    .line 608
    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 610
    .local v24, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "musiccount"

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 612
    :try_start_3
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 618
    :goto_3
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v42

    .line 621
    .local v42, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.htc.music"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "storage"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "total_music"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 626
    invoke-static/range {v42 .. v42}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 629
    invoke-virtual/range {v42 .. v42}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto/16 :goto_0

    .line 602
    .end local v24           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v42           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :catch_0
    move-exception v25

    .line 603
    .local v25, ex:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case CMD_ULOG_MUSIC_COUNT: cursor close fail, ex: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 613
    .end local v25           #ex:Ljava/lang/Exception;
    .restart local v24       #ed:Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v23

    .line 614
    .local v23, e:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_ULOG_MUSIC_COUNT, Exception in ed.commit: "

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 632
    .end local v23           #e:Ljava/lang/Exception;
    .end local v24           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_ULOG_MUSIC_COUNT, The music count is the same. Do nothing."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    .end local v20           #currentMusicCount:I
    .end local v31           #lastMusicCount:I
    :cond_5
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_ULOG_MUSIC_COUNT, cursor is null."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    .end local v21           #cursor:Landroid/database/Cursor;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    .line 645
    .restart local v22       #data:Landroid/os/Bundle;
    if-eqz v22, :cond_6

    .line 646
    const-string v3, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 649
    .local v36, playbackTime:J
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v42

    .line 652
    .restart local v42       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.htc.music"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "playback_time"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "duration"

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 657
    invoke-static/range {v42 .. v42}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 660
    invoke-virtual/range {v42 .. v42}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto/16 :goto_0

    .line 663
    .end local v36           #playbackTime:J
    .end local v42           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_6
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_ULOG_PLAYBACK_TIME, data is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    .end local v22           #data:Landroid/os/Bundle;
    :pswitch_c
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_REFRESH_PLAYLIST"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 675
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 676
    .local v33, mode:I
    const/16 v30, 0x1

    .line 677
    .local v30, isPowerOff:Z
    packed-switch v33, :pswitch_data_1

    .line 722
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v33

    #calls: Lcom/htc/music/MediaPlaybackService;->getPlaylistInfo(I)Landroid/os/Bundle;
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;I)Landroid/os/Bundle;

    move-result-object v22

    .line 723
    .restart local v22       #data:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/htc/music/MusicPluginManager;->switchMode(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->switchToMusicPluginPlayer()V

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/htc/music/MusicPluginManager;->setPlaylistInfo(Landroid/os/Bundle;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveCurrentPluginClass()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2000(Lcom/htc/music/MediaPlaybackService;)V

    .line 728
    new-instance v28, Landroid/content/Intent;

    const-string v3, "com.htc.music.switchdlnamode"

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v28, i:Landroid/content/Intent;
    const-string v3, "dlnamode"

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 679
    .end local v22           #data:Landroid/os/Bundle;
    .end local v28           #i:Landroid/content/Intent;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->clearDmsServer()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v30

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;Z)V

    .line 683
    :cond_7
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "switch mode to local"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->clearDmsServer()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 694
    :cond_8
    :goto_5
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "switch mode to push controller"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 691
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v30

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;Z)V

    goto :goto_5

    .line 697
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 704
    :cond_a
    :goto_6
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "switch mode to dmc"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 701
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v30

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;Z)V

    goto :goto_6

    .line 707
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseImpl()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)V

    .line 714
    :cond_c
    :goto_7
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "switch mode to dmp"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$1802(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_4

    .line 711
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move/from16 v0, v30

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;Z)V

    goto :goto_7

    .line 735
    .end local v30           #isPowerOff:Z
    .end local v33           #mode:I
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 736
    .local v5, bundle:Landroid/os/Bundle;
    const-string v3, "command"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 737
    .local v40, szCommand:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 738
    .local v29, iID:I
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_NONUI_PLAY_ALL, cmd = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", iID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v3, "play_artist"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 741
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v7, v3

    .line 744
    .local v7, ccols:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 747
    .local v8, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v3, :cond_0

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v4, 0x2716

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "album COLLATE NOCASE ASC,track"

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v7           #ccols:[Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_e
    const-string v3, "play_album"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 755
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v7, v3

    .line 758
    .restart local v7       #ccols:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 761
    .restart local v8       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v3, :cond_0

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v4, 0x2716

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "track"

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .end local v7           #ccols:[Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_f
    const-string v3, "play_playlist"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 769
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v7, v3

    .line 773
    .restart local v7       #ccols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v3, :cond_0

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v9, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v10, 0x2716

    const-string v3, "external"

    move/from16 v0, v29

    int-to-long v11, v0

    invoke-static {v3, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "play_order"

    move-object v11, v5

    move-object v13, v7

    invoke-virtual/range {v9 .. v16}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    .end local v7           #ccols:[Ljava/lang/String;
    :cond_10
    const-string v3, "play_track"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v7, v3

    .line 784
    .restart local v7       #ccols:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 787
    .restart local v8       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v3, :cond_0

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v4, 0x2716

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "track"

    invoke-virtual/range {v3 .. v10}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v7           #ccols:[Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    .end local v29           #iID:I
    .end local v40           #szCommand:Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 799
    .local v19, cookie:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    .line 800
    .local v34, obj:Ljava/lang/Object;
    const/16 v21, 0x0

    .line 801
    .restart local v21       #cursor:Landroid/database/Cursor;
    move-object/from16 v0, v34

    instance-of v3, v0, Landroid/database/Cursor;

    if-eqz v3, :cond_11

    .line 802
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    .end local v21           #cursor:Landroid/database/Cursor;
    check-cast v21, Landroid/database/Cursor;

    .line 803
    .restart local v21       #cursor:Landroid/database/Cursor;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    #calls: Lcom/htc/music/MediaPlaybackService;->handleAlbumArtQueryComplete(Landroid/os/Bundle;Landroid/database/Cursor;)V
    invoke-static {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;Landroid/os/Bundle;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 807
    .end local v19           #cookie:Landroid/os/Bundle;
    .end local v21           #cursor:Landroid/database/Cursor;
    .end local v34           #obj:Ljava/lang/Object;
    :pswitch_14
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_NONUI_TRACK_WENT_TO_NEXT +++, mPlayPos = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v4

    .line 810
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->updateMediaPlayer()V

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    if-ltz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v6

    if-lt v3, v6, :cond_13

    .line 813
    :cond_12
    const-string v3, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TRACK_WENT_TO_NEXT, mNextPlayPos is illegal, mPlayListLen: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$2400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    monitor-exit v4

    goto/16 :goto_0

    .line 844
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 817
    :cond_13
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNextFileToPlay:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/htc/music/MediaPlaybackService;->access$2602(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNextPlayPos:I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3, v6}, Lcom/htc/music/MediaPlaybackService;->access$1802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v9

    aget v6, v6, v9

    #calls: Lcom/htc/music/MediaPlaybackService;->getCursorForId(I)Landroid/database/Cursor;
    invoke-static {v3, v6}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;I)Landroid/database/Cursor;

    move-result-object v41

    .line 826
    .local v41, tempCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v41

    #calls: Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V
    invoke-static {v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$2900(Lcom/htc/music/MediaPlaybackService;Landroid/database/Cursor;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveCurrentPlayPos()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;)V

    .line 828
    if-eqz v41, :cond_14

    .line 829
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 830
    const/16 v41, 0x0

    .line 834
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v6

    const/4 v9, -0x1

    #calls: Lcom/htc/music/MediaPlaybackService;->playNextArtAnimation(II)V
    invoke-static {v3, v6, v9}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;II)V

    .line 835
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 836
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v3, "animationtype"

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v3, v6, v5}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->handleRecentPlayedSong()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3300(Lcom/htc/music/MediaPlaybackService;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v3

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$3500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)V

    .line 843
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setNextTrack()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)V

    .line 844
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 845
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "CMD_NONUI_TRACK_WENT_TO_NEXT ---"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 821
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v41           #tempCursor:Landroid/database/Cursor;
    :cond_15
    :try_start_6
    const-string v3, "[MediaPlaybackService]"

    const-string v6, "CMD_NONUI_TRACK_WENT_TO_NEXT, mNextFileToPlay is null!"

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 842
    .restart local v5       #bundle:Landroid/os/Bundle;
    .restart local v41       #tempCursor:Landroid/database/Cursor;
    :cond_16
    const-string v3, "[MediaPlaybackService]"

    const-string v6, "CMD_NONUI_TRACK_WENT_TO_NEXT, not playing, Do not update notification."

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_12
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 677
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
