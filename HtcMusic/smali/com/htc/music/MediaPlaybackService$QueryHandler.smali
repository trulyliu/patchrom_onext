.class Lcom/htc/music/MediaPlaybackService$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    .line 857
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 858
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 862
    const/16 v2, 0x17

    move/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    const/16 v5, 0x2720

    invoke-virtual {v2, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 865
    .local v14, msg:Landroid/os/Message;
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 866
    move-object/from16 v0, p3

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 944
    .end local v14           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 869
    .restart local p2
    :cond_1
    const-string v2, "[MediaPlaybackService]"

    const-string v5, "mNonUiHandler is null in onQueryCompleted"

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_2
    if-nez p2, :cond_3

    .line 876
    const-string v2, "[MediaPlaybackService]"

    const-string v5, "onQueryComplete, cookie is null! Do nothing"

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    if-eqz p3, :cond_0

    .line 878
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 882
    :cond_3
    if-nez p3, :cond_4

    .line 883
    const-string v2, "[MediaPlaybackService]"

    const-string v5, "onQueryComplete, cursor is null! Do nothing"

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object/from16 v7, p2

    .line 886
    check-cast v7, Landroid/os/Bundle;

    .line 887
    .local v7, bundle:Landroid/os/Bundle;
    const-string v2, "command"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 888
    .local v15, szCommand:Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 889
    .local v12, iID:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete, cmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    if-nez v15, :cond_5

    .line 892
    const-string v2, "[MediaPlaybackService]"

    const-string v5, "onQueryComplete, szCommand is null! Do nothing"

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    if-eqz p3, :cond_0

    .line 894
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 898
    :cond_5
    const-string v2, "play_artist"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "play_album"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "play_track"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "play_playlist"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 902
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 903
    .local v13, len:I
    if-gtz v13, :cond_7

    .line 904
    const-string v2, "[MediaPlaybackService]"

    const-string v5, "onQueryComplete, attempt to play empty song list"

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    if-eqz p3, :cond_0

    .line 906
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 910
    :cond_7
    new-array v3, v13, [I

    .line 911
    .local v3, audioIDList:[I
    new-array v4, v13, [I

    .line 912
    .local v4, albumIDList:[I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 913
    const-string v2, "audio_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 914
    .local v10, iAudioIDColidx:I
    if-gez v10, :cond_8

    .line 915
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 917
    :cond_8
    const-string v2, "album_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 918
    .local v9, iAlbumIDColidx:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v13, :cond_9

    .line 919
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v3, v8

    .line 920
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v4, v8

    .line 921
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 918
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 926
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    .line 927
    .local v1, service:Lcom/htc/music/IMediaPlaybackService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "uimode"

    invoke-virtual {v2, v5}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/UiModeManager;

    .line 928
    .local v16, uiModeMgr:Landroid/app/UiModeManager;
    const/4 v11, 0x1

    .line 929
    .local v11, iCurrModeType:I
    if-eqz v16, :cond_b

    .line 930
    invoke-virtual/range {v16 .. v16}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v11

    .line 931
    const-string v2, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iCurrModeType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eq v11, v6, :cond_c

    sget-object v6, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    :goto_3
    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[I[IILcom/htc/music/util/MusicUtils$LaunchUI;)I

    .line 941
    .end local v1           #service:Lcom/htc/music/IMediaPlaybackService;
    .end local v3           #audioIDList:[I
    .end local v4           #albumIDList:[I
    .end local v8           #i:I
    .end local v9           #iAlbumIDColidx:I
    .end local v10           #iAudioIDColidx:I
    .end local v11           #iCurrModeType:I
    .end local v13           #len:I
    .end local v16           #uiModeMgr:Landroid/app/UiModeManager;
    :cond_a
    if-eqz p3, :cond_0

    .line 942
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 934
    .restart local v1       #service:Lcom/htc/music/IMediaPlaybackService;
    .restart local v3       #audioIDList:[I
    .restart local v4       #albumIDList:[I
    .restart local v8       #i:I
    .restart local v9       #iAlbumIDColidx:I
    .restart local v10       #iAudioIDColidx:I
    .restart local v11       #iCurrModeType:I
    .restart local v13       #len:I
    .restart local v16       #uiModeMgr:Landroid/app/UiModeManager;
    :cond_b
    const-string v2, "[MediaPlaybackService]"

    const-string v5, "uiModeMgr is null, set iCurrModeType = UI_MODE_TYPE_NORMAL"

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 937
    :cond_c
    sget-object v6, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    goto :goto_3
.end method
