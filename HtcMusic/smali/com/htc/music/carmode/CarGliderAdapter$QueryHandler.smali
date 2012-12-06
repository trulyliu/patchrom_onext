.class Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CarGliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarGliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarGliderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarGliderAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 1005
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1006
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1010
    monitor-enter p0

    .line 1012
    :try_start_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$800(Lcom/htc/music/carmode/CarGliderAdapter;)J

    move-result-wide v10

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 1013
    const-string v10, "[CarGliderAdapter]"

    const-string v11, "cookie not match"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1069
    if-eqz p3, :cond_0

    .line 1070
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1014
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    :goto_0
    return-void

    .line 1016
    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    if-nez p3, :cond_4

    .line 1017
    :cond_2
    const-string v10, "[CarGliderAdapter]"

    const-string v11, "arguments invalid"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1069
    if-eqz p3, :cond_3

    .line 1070
    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1018
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 1021
    :cond_4
    :try_start_4
    const-string v10, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1022
    .local v1, albumColumnIndex:I
    const-string v10, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1023
    .local v9, idColumnIndex:I
    const-string v10, "album_art"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1024
    .local v6, artColumnIndex:I
    const-string v10, "album_key"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1025
    .local v4, albumKeyColumnIndex:I
    if-ltz v9, :cond_5

    if-ltz v6, :cond_5

    if-ltz v1, :cond_5

    if-gez v4, :cond_7

    .line 1026
    :cond_5
    const-string v10, "[CarGliderAdapter]"

    const-string v11, "onQueryComplete get column index failed"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1069
    if-eqz p3, :cond_6

    .line 1070
    :try_start_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1030
    :cond_7
    :try_start_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1031
    .local v3, albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1033
    .local v2, albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1034
    .local v5, albumName:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1035
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1039
    :cond_8
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1040
    if-eqz v5, :cond_9

    const-string v10, "<unknown>"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1041
    :cond_9
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "<unknown>"

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1058
    :cond_a
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v8, v10, :cond_e

    .line 1059
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    aget-object v11, v10, v8

    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v12, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v12}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v12

    aget-object v12, v12, v8

    iget v12, v12, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v11, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 1061
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    aget-object v11, v10, v8

    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    aget-object v10, v10, v8

    iget v10, v10, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v11, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumName:Ljava/lang/String;

    .line 1062
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    aget-object v11, v10, v8

    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v10

    aget-object v10, v10, v8

    iget v10, v10, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v11, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumKey:Ljava/lang/String;

    .line 1058
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1044
    .end local v8           #i:I
    :cond_b
    invoke-static/range {p3 .. p3}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 1045
    .local v7, dlPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1046
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 1069
    .end local v1           #albumColumnIndex:I
    .end local v2           #albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3           #albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4           #albumKeyColumnIndex:I
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artColumnIndex:I
    .end local v7           #dlPath:Ljava/lang/String;
    .end local v9           #idColumnIndex:I
    :catchall_1
    move-exception v10

    if-eqz p3, :cond_c

    .line 1070
    :try_start_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_c
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1048
    .restart local v1       #albumColumnIndex:I
    .restart local v2       #albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3       #albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4       #albumKeyColumnIndex:I
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artColumnIndex:I
    .restart local v7       #dlPath:Ljava/lang/String;
    .restart local v9       #idColumnIndex:I
    :cond_d
    :try_start_8
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1065
    .end local v7           #dlPath:Ljava/lang/String;
    .restart local v8       #i:I
    :cond_e
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    const/4 v11, 0x1

    #setter for: Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z
    invoke-static {v10, v11}, Lcom/htc/music/carmode/CarGliderAdapter;->access$1002(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z

    .line 1067
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    iget-object v11, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    invoke-static {v11}, Lcom/htc/music/carmode/CarGliderAdapter;->access$400(Lcom/htc/music/carmode/CarGliderAdapter;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1069
    if-eqz p3, :cond_f

    .line 1070
    :try_start_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1073
    :cond_f
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0
.end method
