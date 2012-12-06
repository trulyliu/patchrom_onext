.class final Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
.super Landroid/os/Handler;
.source "DmcMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmcMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmcMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 259
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<<<<<<<<<<< NonUIHandler >>>>>>>>>>>>>>>> + msg.what = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 264
    .local v12, data:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 267
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->initErrorRetryHandle()V
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$100(Lcom/htc/music/dlna/DmcMusicPlayer;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->prev(Z)V

    goto :goto_0

    .line 273
    :pswitch_2
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "#### case MSG_REQUEST_ALBUMART: mIsAlbumArtGetting = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$200(Lcom/htc/music/dlna/DmcMusicPlayer;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 279
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v7, cv:Landroid/content/ContentValues;
    const-string v20, "shuffle"

    const-string v21, "shuffle"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v20, "position"

    const-string v21, "position"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v20, "server"

    const-string v21, "server"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v20, "content"

    const-string v21, "content"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$200(Lcom/htc/music/dlna/DmcMusicPlayer;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 294
    .restart local v7       #cv:Landroid/content/ContentValues;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 295
    .local v11, cvShufflemode:Ljava/lang/Integer;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 296
    .local v9, cvPosition:Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 297
    .local v19, serverID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 299
    .local v6, contentID:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 300
    const-string v20, "shuffle"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 301
    const-string v20, "position"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 302
    const-string v20, "server"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 303
    const-string v20, "content"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 307
    :cond_2
    if-eqz v11, :cond_a

    if-eqz v9, :cond_a

    if-eqz v19, :cond_a

    if-eqz v6, :cond_a

    .line 310
    const/16 v18, 0x1

    .line 312
    .local v18, isNeedToQuery:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 313
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "<<<<<<<<<<<<<< There is this content in hashtable...Check the file exists or not...>>>>>>>>>>>>>>>>"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$500(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, albumArtFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, albumArtFile:Ljava/io/File;
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<> path => "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 321
    const/16 v18, 0x0

    .line 322
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "<<< Don\'t query again...>>>"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v4           #albumArtFile:Ljava/io/File;
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v18, :cond_8

    .line 335
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$500(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const-string v22, "com.htc.music.dlna.DmcMusicPlayer"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 324
    .restart local v4       #albumArtFile:Ljava/io/File;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const/16 v18, 0x1

    .line 326
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "<<< There is no File...Need to query...>>>"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 345
    .end local v4           #albumArtFile:Ljava/io/File;
    :cond_5
    :try_start_1
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_REQUEST_ALBUMART: shuffle on, mNotify is null...contentID: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", albumArtFilePath: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 365
    :catch_0
    move-exception v14

    .line 366
    .local v14, e:Landroid/os/RemoteException;
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "remote exception in MSG_REQUEST_ALBUMART"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 352
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const-string v22, "com.htc.music.dlna.DmcMusicPlayer"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 358
    :cond_7
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_REQUEST_ALBUMART: shuffle off, mNotify is null...contentID: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", albumArtFilePath: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 376
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$202(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    goto/16 :goto_0

    .line 380
    :cond_9
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "mDLNAManager is null in albumArtDownload"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    .end local v18           #isNeedToQuery:Z
    :cond_a
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "case MSG_REQUEST_ALBUMART: current cv is incorrect. remove it and try next one."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 396
    .end local v6           #contentID:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #cvPosition:Ljava/lang/Integer;
    .end local v11           #cvShufflemode:Ljava/lang/Integer;
    .end local v19           #serverID:Ljava/lang/String;
    :cond_b
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "case MSG_REQUEST_ALBUMART: No album art request..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_c
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "#### case MSG_REQUEST_ALBUMART: Getting some album art now....ignore this time request..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :pswitch_3
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "#### case MSG_HANDLE_ALBUMART:..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v20, "adn_server"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 410
    .restart local v19       #serverID:Ljava/lang/String;
    const-string v20, "adn_content"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 411
    .restart local v6       #contentID:Ljava/lang/String;
    const-string v20, "adn_filepath"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 413
    .local v15, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 414
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "something wrong, array list should not be empty at this moment."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 420
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-nez v7, :cond_e

    .line 421
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "something wrong, this content value should not be null at this moment."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_e
    const-string v20, "shuffle"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 427
    .local v11, cvShufflemode:I
    const-string v20, "position"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 428
    .local v9, cvPosition:I
    const-string v20, "content"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, cvContentID:Ljava/lang/String;
    const-string v20, "server"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, cvServerID:Ljava/lang/String;
    if-eqz v10, :cond_f

    if-eqz v8, :cond_f

    if-eqz v11, :cond_10

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_10

    .line 434
    :cond_f
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "something wrong, CV is incorrect."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_10
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$202(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_11

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 446
    :cond_11
    if-nez v15, :cond_12

    .line 447
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "## case MSG_HANDLE_ALBUMART: filePath from middlelayer is null!!!!!!!!!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 455
    .local v16, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0, v15}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$900(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 457
    .local v3, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_16

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$500(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, dlnapath:Ljava/lang/String;
    if-nez v13, :cond_13

    .line 461
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "dlnapath is null"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->ensurePathExists(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1000(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->eraseAllFilesIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1100(Lcom/htc/music/dlna/DmcMusicPlayer;Ljava/lang/String;)V

    .line 468
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAlbumArt item position:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAlbumArt item path:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/dlna/DmcMusicPlayer;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1200(Lcom/htc/music/dlna/DmcMusicPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$400(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_14

    .line 479
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    const-string v21, "com.htc.music.dlna.DmcMusicPlayer"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 502
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 503
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 483
    :cond_14
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    const-string v21, "com.htc.music.dlna.DmcMusicPlayer"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 487
    :catch_1
    move-exception v14

    .line 488
    .restart local v14       #e:Landroid/os/RemoteException;
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_HANDLE_ALBUMART: RemoteException... mNotify => "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 490
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v14

    .line 492
    .local v14, e:Ljava/lang/NullPointerException;
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_HANDLE_ALBUMART: NullPointerException... mNotify => "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 496
    .end local v14           #e:Ljava/lang/NullPointerException;
    :cond_15
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Handle Album Art...fail to save file to SD card...filePath = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 504
    :catch_3
    move-exception v14

    .line 505
    .local v14, e:Ljava/io/IOException;
    const-string v20, "[DmcMusicPlayer]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_HANDLE_ALBUMART: IOException... mNotify => "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    .end local v13           #dlnapath:Ljava/lang/String;
    .end local v14           #e:Ljava/io/IOException;
    :cond_16
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "Handle Album Art...afDescriptor is null or length is 0..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    .end local v3           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v16           #filename:Ljava/lang/String;
    :cond_17
    const-string v20, "[DmcMusicPlayer]"

    const-string v21, "Handle Album Art...Incorrect Server/content..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    .end local v6           #contentID:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #cvContentID:Ljava/lang/String;
    .end local v9           #cvPosition:I
    .end local v10           #cvServerID:Ljava/lang/String;
    .end local v11           #cvShufflemode:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v19           #serverID:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$300(Lcom/htc/music/dlna/DmcMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$202(Lcom/htc/music/dlna/DmcMusicPlayer;Z)Z

    goto/16 :goto_0

    .line 525
    :pswitch_5
    const-string v20, "interval"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 526
    .local v17, interval:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmcMusicPlayer;->getNowplayingQueue(I)V

    goto/16 :goto_0

    .line 531
    .end local v17           #interval:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->next(Z)V

    goto/16 :goto_0

    .line 536
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1300(Lcom/htc/music/dlna/DmcMusicPlayer;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-direct/range {v21 .. v24}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$802(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$1;)V

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerListener:Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;
    invoke-static/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1402(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;)Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mControllerListener:Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1400(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$ControllerListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mRendererStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1600(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$RendererStatusListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$1;)V

    #setter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAServiceStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;
    invoke-static/range {v20 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1702(Lcom/htc/music/dlna/DmcMusicPlayer;Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;)Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$800(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmcMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmcMusicPlayer;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/music/dlna/DmcMusicPlayer;->mDLNAServiceStatusListener:Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/dlna/DmcMusicPlayer;->access$1700(Lcom/htc/music/dlna/DmcMusicPlayer;)Lcom/htc/music/dlna/DmcMusicPlayer$DLNAMusicServiceStatusListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
