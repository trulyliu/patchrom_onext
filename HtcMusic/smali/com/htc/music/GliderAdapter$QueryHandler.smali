.class Lcom/htc/music/GliderAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/GliderAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 910
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    .line 911
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 912
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 916
    monitor-enter p0

    .line 918
    :try_start_0
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mCookie:J
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$600(Lcom/htc/music/GliderAdapter;)J

    move-result-wide v11

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1

    .line 919
    const-string v11, "[GliderAdapter]"

    const-string v12, "cookie not match"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    if-eqz p3, :cond_0

    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 978
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    :goto_0
    return-void

    .line 922
    :cond_1
    :try_start_2
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    if-nez p3, :cond_4

    .line 923
    :cond_2
    const-string v11, "[GliderAdapter]"

    const-string v12, "arguments invalid"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 977
    if-eqz p3, :cond_3

    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_3

    .line 978
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 924
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 927
    :cond_4
    :try_start_4
    const-string v11, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 928
    .local v1, albumColumnIndex:I
    const-string v11, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 929
    .local v10, idColumnIndex:I
    const-string v11, "album_art"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 930
    .local v6, artColumnIndex:I
    const-string v11, "album_key"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 931
    .local v4, albumKeyColumnIndex:I
    if-ltz v10, :cond_5

    if-ltz v6, :cond_5

    if-ltz v1, :cond_5

    if-gez v4, :cond_7

    .line 932
    :cond_5
    const-string v11, "[GliderAdapter]"

    const-string v12, "onQueryComplete get column index failed"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 977
    if-eqz p3, :cond_6

    :try_start_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_6

    .line 978
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 933
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 936
    :cond_7
    :try_start_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 937
    .local v3, albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 939
    .local v2, albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 940
    .local v5, albumName:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 941
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 945
    :cond_8
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 946
    if-eqz v5, :cond_9

    const-string v11, "<unknown>"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 947
    :cond_9
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "<unknown>"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/music/util/MusicUtils;->processAlbumKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 964
    :cond_a
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v9, v11, :cond_f

    .line 965
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    aget-object v12, v11, v9

    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v13, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v13}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v13

    aget-object v13, v13, v9

    iget v13, v13, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v12, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 967
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    aget-object v12, v11, v9

    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    aget-object v11, v11, v9

    iget v11, v11, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v12, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumName:Ljava/lang/String;

    .line 968
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    aget-object v12, v11, v9

    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    aget-object v11, v11, v9

    iget v11, v11, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v12, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumKey:Ljava/lang/String;

    .line 964
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 950
    .end local v9           #i:I
    :cond_b
    invoke-static/range {p3 .. p3}, Lcom/htc/music/util/MusicUtils;->getDownloadedAlbumartPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 951
    .local v7, dlPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isPathExist(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 952
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 974
    .end local v1           #albumColumnIndex:I
    .end local v2           #albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3           #albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4           #albumKeyColumnIndex:I
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artColumnIndex:I
    .end local v7           #dlPath:Ljava/lang/String;
    .end local v10           #idColumnIndex:I
    :catch_0
    move-exception v8

    .line 975
    .local v8, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 977
    if-eqz p3, :cond_c

    :try_start_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_c

    .line 978
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 981
    .end local v8           #e:Ljava/lang/Exception;
    :cond_c
    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 954
    .restart local v1       #albumColumnIndex:I
    .restart local v2       #albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3       #albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4       #albumKeyColumnIndex:I
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artColumnIndex:I
    .restart local v7       #dlPath:Ljava/lang/String;
    .restart local v10       #idColumnIndex:I
    :cond_d
    :try_start_9
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 977
    .end local v1           #albumColumnIndex:I
    .end local v2           #albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3           #albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4           #albumKeyColumnIndex:I
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artColumnIndex:I
    .end local v7           #dlPath:Ljava/lang/String;
    .end local v10           #idColumnIndex:I
    :catchall_1
    move-exception v11

    if-eqz p3, :cond_e

    :try_start_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_e

    .line 978
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 977
    :cond_e
    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 971
    .restart local v1       #albumColumnIndex:I
    .restart local v2       #albumIdAlbumKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3       #albumIdAlbumNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4       #albumKeyColumnIndex:I
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artColumnIndex:I
    .restart local v9       #i:I
    .restart local v10       #idColumnIndex:I
    :cond_f
    :try_start_b
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    const/4 v12, 0x1

    #setter for: Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z
    invoke-static {v11, v12}, Lcom/htc/music/GliderAdapter;->access$802(Lcom/htc/music/GliderAdapter;Z)Z

    .line 973
    iget-object v11, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    iget-object v12, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v12}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 977
    if-eqz p3, :cond_c

    :try_start_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_c

    .line 978
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3
.end method
