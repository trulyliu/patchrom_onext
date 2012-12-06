.class final Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
.super Landroid/os/Handler;
.source "DmpMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    .line 3196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 3202
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "<< NonUIHandler >>, msg.what = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 3205
    .local v13, data:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 3487
    :cond_0
    :goto_0
    return-void

    .line 3208
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3300(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    .line 3209
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    const v26, 0x1f8b1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 3210
    .local v6, changeSong:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->prevImpl(Z)V
    invoke-static {v0, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4400(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V

    goto :goto_0

    .line 3209
    .end local v6           #changeSong:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3216
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3300(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    .line 3217
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    const v26, 0x1f8b1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 3218
    .restart local v6       #changeSong:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->next(ZZ)V
    invoke-static {v0, v1, v6}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4500(Lcom/htc/music/dlna/DmpMusicPlayer;ZZ)V

    goto :goto_0

    .line 3217
    .end local v6           #changeSong:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 3223
    :pswitch_2
    const-string v25, "uriPath"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3224
    .local v24, uriPath:Ljava/lang/String;
    const-string v25, "defaultPos"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3226
    .local v14, defaultPos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14, v15}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;J)V

    goto :goto_0

    .line 3231
    .end local v14           #defaultPos:J
    .end local v24           #uriPath:Ljava/lang/String;
    :pswitch_3
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "#### case MSG_REQUEST_ALBUMART: mIsAlbumArtGetting = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v27, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v27 .. v27}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4600(Lcom/htc/music/dlna/DmpMusicPlayer;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-virtual {v13}, Landroid/os/Bundle;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_3

    .line 3235
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3237
    .local v8, cv:Landroid/content/ContentValues;
    const-string v25, "shuffle"

    const-string v26, "shuffle"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3238
    const-string v25, "position"

    const-string v26, "position"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3239
    const-string v25, "server"

    const-string v26, "server"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    const-string v25, "content"

    const-string v26, "content"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4600(Lcom/htc/music/dlna/DmpMusicPlayer;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_c

    .line 3249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 3251
    .restart local v8       #cv:Landroid/content/ContentValues;
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 3252
    .local v12, cvShufflemode:Ljava/lang/Integer;
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3253
    .local v10, cvPosition:Ljava/lang/Integer;
    const/16 v23, 0x0

    .line 3254
    .local v23, serverID:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3256
    .local v7, contentID:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 3257
    const-string v25, "shuffle"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 3258
    const-string v25, "position"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 3259
    const-string v25, "server"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3260
    const-string v25, "content"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3263
    :cond_4
    if-eqz v12, :cond_b

    if-eqz v10, :cond_b

    if-eqz v23, :cond_b

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 3265
    const/16 v21, 0x1

    .line 3267
    .local v21, isNeedToQuery:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4800(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 3268
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "<<<<<<<<<<<<<< There is this content in hashtable...Check the file exists or not...>>>>>>>>>>>>>>>>"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4800(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3270
    .local v5, albumArtFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3271
    .local v4, albumArtFile:Ljava/io/File;
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "<> path => "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 3274
    const/16 v21, 0x0

    .line 3275
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "<<< Don\'t query again...>>>"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    .end local v4           #albumArtFile:Ljava/io/File;
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v21, :cond_a

    .line 3289
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v26, v0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4800(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3291
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 3292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const-string v27, "com.htc.music.dlna.DmpMusicPlayer"

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3312
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 3315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    move-result-object v25

    const/16 v26, 0x2afc

    invoke-virtual/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3278
    .restart local v4       #albumArtFile:Ljava/io/File;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4800(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3279
    const/16 v21, 0x1

    .line 3280
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "<<< There is no File...Need to query...>>>"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3296
    .end local v4           #albumArtFile:Ljava/io/File;
    :cond_7
    :try_start_1
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "case MSG_REQUEST_ALBUMART: shuffle on, mNotify is null...contentID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", albumArtFilePath: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 3307
    :catch_0
    move-exception v17

    .line 3309
    .local v17, e:Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 3300
    .end local v17           #e:Landroid/os/RemoteException;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    if-eqz v25, :cond_9

    .line 3301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const-string v27, "com.htc.music.dlna.DmpMusicPlayer"

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3304
    :cond_9
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "case MSG_REQUEST_ALBUMART: shuffle off, mNotify is null...contentID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", albumArtFilePath: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 3320
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4602(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 3322
    :catch_1
    move-exception v17

    .line 3324
    .restart local v17       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3329
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v21           #isNeedToQuery:Z
    :cond_b
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "case MSG_REQUEST_ALBUMART: current cv is incorrect. remove it and try next one."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 3334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    move-result-object v25

    const/16 v26, 0x2afc

    invoke-virtual/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3338
    .end local v7           #contentID:Ljava/lang/String;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v10           #cvPosition:Ljava/lang/Integer;
    .end local v12           #cvShufflemode:Ljava/lang/Integer;
    .end local v23           #serverID:Ljava/lang/String;
    :cond_c
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "case MSG_REQUEST_ALBUMART: No album art request..."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3342
    :cond_d
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "#### case MSG_REQUEST_ALBUMART: Getting some album art now....ignore this time request..."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3350
    :pswitch_4
    const-string v25, "adn_server"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3351
    .restart local v23       #serverID:Ljava/lang/String;
    const-string v25, "adn_content"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3352
    .restart local v7       #contentID:Ljava/lang/String;
    const-string v25, "adn_filepath"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3354
    .local v18, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 3355
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "something wrong, this arraylist should not be empty at this moment."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3359
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 3360
    .restart local v8       #cv:Landroid/content/ContentValues;
    if-nez v8, :cond_f

    .line 3361
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "something wrong, this content value should not be null at this moment."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3365
    :cond_f
    const-string v25, "shuffle"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3366
    .local v12, cvShufflemode:I
    const-string v25, "position"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3367
    .local v10, cvPosition:I
    const-string v25, "content"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3368
    .local v9, cvContentID:Ljava/lang/String;
    const-string v25, "server"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3370
    .local v11, cvServerID:Ljava/lang/String;
    if-eqz v11, :cond_10

    if-eqz v9, :cond_10

    if-ltz v10, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayListLen:I
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3900(Lcom/htc/music/dlna/DmpMusicPlayer;)I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_10

    if-eqz v12, :cond_11

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_11

    .line 3374
    :cond_10
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "something wrong, CV is incorrect."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3378
    :cond_11
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 3381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4602(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNonUIHandler:Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;

    move-result-object v25

    const/16 v26, 0x2afc

    invoke-virtual/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    .line 3385
    if-nez v18, :cond_12

    .line 3386
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "## case MSG_HANDLE_ALBUMART: filePath from middlelayer is null!!!!!!!!!!"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3390
    :cond_12
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 3393
    .local v19, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5000(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 3395
    .local v3, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_16

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4900(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v16

    .line 3399
    .local v16, dlnapath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->ensurePathExists(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5100(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->eraseAllFilesIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5200(Lcom/htc/music/dlna/DmpMusicPlayer;Ljava/lang/String;)V

    .line 3402
    const/4 v5, 0x0

    .line 3404
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    if-eqz v16, :cond_13

    .line 3405
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3408
    :cond_13
    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5300(Lcom/htc/music/dlna/DmpMusicPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4800(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/Hashtable;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_14

    .line 3415
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    const-string v26, "com.htc.music.dlna.DmpMusicPlayer"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v10, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3435
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3436
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3418
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    const-string v26, "com.htc.music.dlna.DmpMusicPlayer"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v10, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 3421
    :catch_2
    move-exception v17

    .line 3423
    .restart local v17       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 3424
    .end local v17           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v17

    .line 3426
    .local v17, e:Ljava/lang/NullPointerException;
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "case MSG_HANDLE_ALBUMART: NullPointerException... mNotify => "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v27, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v27 .. v27}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2200(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    invoke-virtual/range {v17 .. v17}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 3431
    .end local v17           #e:Ljava/lang/NullPointerException;
    :cond_15
    const-string v25, "[DmpMusicPlayer]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Handle Album Art, fail to save file to SD card, albumArtFilePath: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", filePath: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3437
    :catch_4
    move-exception v17

    .line 3439
    .local v17, e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 3443
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    .end local v16           #dlnapath:Ljava/lang/String;
    .end local v17           #e:Ljava/io/IOException;
    :cond_16
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "Handle Album Art...afDescriptor is null or length is 0..."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3449
    .end local v3           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v19           #filename:Ljava/lang/String;
    :cond_17
    const-string v25, "[DmpMusicPlayer]"

    const-string v26, "Handle Album Art...Incorrect Server/content..."

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3456
    .end local v7           #contentID:Ljava/lang/String;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #cvContentID:Ljava/lang/String;
    .end local v10           #cvPosition:I
    .end local v11           #cvServerID:Ljava/lang/String;
    .end local v12           #cvShufflemode:I
    .end local v18           #filePath:Ljava/lang/String;
    .end local v23           #serverID:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4700(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 3457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mIsAlbumArtGetting:Z
    invoke-static/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4602(Lcom/htc/music/dlna/DmpMusicPlayer;Z)Z

    goto/16 :goto_0

    .line 3461
    :pswitch_6
    const-string v25, "interval"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 3462
    .local v20, interval:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->doGetNowplayingQueue(I)V
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$5400(Lcom/htc/music/dlna/DmpMusicPlayer;I)V

    goto/16 :goto_0

    .line 3467
    .end local v20           #interval:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->requestUpperDoNext(Z)V
    invoke-static/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$4100(Lcom/htc/music/dlna/DmpMusicPlayer;Z)V

    goto/16 :goto_0

    .line 3471
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v25

    if-eqz v25, :cond_18

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2600(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->release()V

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mPlayer:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
    invoke-static/range {v25 .. v26}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$2602(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    .line 3475
    :cond_18
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3476
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    .line 3477
    .local v22, looper:Landroid/os/Looper;
    if-eqz v22, :cond_0

    .line 3478
    invoke-virtual/range {v22 .. v22}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 3483
    .end local v22           #looper:Landroid/os/Looper;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/dlna/DmpMusicPlayer$NonUIHandler;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    move-object/from16 v25, v0

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->initErrorRetryHandle()V
    invoke-static/range {v25 .. v25}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$3300(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    goto/16 :goto_0

    .line 3205
    :pswitch_data_0
    .packed-switch 0x2af9
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
    .end packed-switch
.end method
