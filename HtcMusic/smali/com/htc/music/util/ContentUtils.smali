.class public Lcom/htc/music/util/ContentUtils;
.super Ljava/lang/Object;
.source "ContentUtils.java"


# static fields
.field private static final PLAYLIST_ID_COL:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "[ContentUtils]"

.field private static final UNKNOWN_GENRE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/ContentUtils;->PLAYLIST_ID_COL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbum(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "albumID"

    .prologue
    const/4 v3, 0x0

    .line 397
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbum(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V
    .locals 8
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "albumID"

    .prologue
    const/4 v5, 0x0

    .line 403
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static getAlbumCursorForArtistPage(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "context"
    .parameter "async"
    .parameter "token"
    .parameter "projection"
    .parameter "sortOrder"

    .prologue
    const/4 v2, 0x0

    .line 510
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const/4 v9, 0x0

    .line 514
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 515
    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move v1, p2

    move-object v4, p3

    move-object v6, v2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_0
    return-object v9

    .line 518
    :cond_0
    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v5, p3

    move-object v7, v2

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0
.end method

.method public static getAlbumCursorForMultiCondition(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 25
    .parameter "context"
    .parameter "async"
    .parameter "token"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "filter"
    .parameter "dbTable"

    .prologue
    .line 526
    const-string v1, "[ContentUtils]"

    const-string v2, "getAlbumCursor+"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v22, where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v24, whereUnkown:Ljava/lang/StringBuilder;
    const-string v1, "album = \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/4 v7, 0x0

    .line 537
    .local v7, keywords:[Ljava/lang/String;
    if-nez p7, :cond_3

    const/16 v19, 0x1

    .line 538
    .local v19, searchContainsUnkown:Z
    :goto_0
    if-eqz p7, :cond_0

    .line 539
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 540
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 541
    const-string v1, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, "album LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const v1, 0x7f06003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 545
    .local v21, unknownAlbum:Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/16 v19, 0x1

    .line 549
    .end local v21           #unknownAlbum:Ljava/lang/String;
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v23, where2:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    .line 554
    const-string v1, "\'"

    const-string v2, "\'\'"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 555
    .local v14, artistIdTrans:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_4

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .end local v14           #artistIdTrans:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    .line 563
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 564
    .local v17, genreIdTrans:J
    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-nez v1, :cond_5

    .line 565
    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .end local v17           #genreIdTrans:J
    :cond_2
    :goto_2
    const/4 v15, 0x0

    .line 586
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_8

    .line 588
    if-eqz v19, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, asyncUnknownWhere:Ljava/lang/String;
    :goto_3
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_7

    .line 590
    sget-object v4, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v3           #asyncUnknownWhere:Ljava/lang/String;
    :goto_4
    return-object v15

    .line 537
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v19           #searchContainsUnkown:Z
    .end local v23           #where2:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 558
    .restart local v14       #artistIdTrans:Ljava/lang/String;
    .restart local v19       #searchContainsUnkown:Z
    .restart local v23       #where2:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 567
    .end local v14           #artistIdTrans:Ljava/lang/String;
    .restart local v17       #genreIdTrans:J
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 588
    .end local v17           #genreIdTrans:J
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 594
    .restart local v3       #asyncUnknownWhere:Ljava/lang/String;
    :cond_7
    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 600
    .end local v3           #asyncUnknownWhere:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_9

    .line 601
    sget-object v9, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    move-object/from16 v10, p5

    move-object v12, v7

    move-object/from16 v13, p6

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    move-object/from16 v16, v15

    .line 608
    .end local v15           #cursor:Landroid/database/Cursor;
    .local v16, cursor:Landroid/database/Cursor;
    :goto_5
    if-eqz v19, :cond_b

    .line 610
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_a

    .line 611
    sget-object v9, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p5

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 616
    .local v20, unknown:Landroid/database/Cursor;
    :goto_6
    if-eqz v20, :cond_b

    .line 617
    new-instance v15, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    const/4 v2, 0x1

    aput-object v20, v1, v2

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v16           #cursor:Landroid/database/Cursor;
    .restart local v15       #cursor:Landroid/database/Cursor;
    goto/16 :goto_4

    .line 604
    .end local v20           #unknown:Landroid/database/Cursor;
    :cond_9
    sget-object v9, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    move-object/from16 v10, p5

    move-object v12, v7

    move-object/from16 v13, p6

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    move-object/from16 v16, v15

    .end local v15           #cursor:Landroid/database/Cursor;
    .restart local v16       #cursor:Landroid/database/Cursor;
    goto :goto_5

    .line 613
    :cond_a
    sget-object v9, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p5

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .restart local v20       #unknown:Landroid/database/Cursor;
    goto :goto_6

    .end local v20           #unknown:Landroid/database/Cursor;
    :cond_b
    move-object/from16 v15, v16

    .end local v16           #cursor:Landroid/database/Cursor;
    .restart local v15       #cursor:Landroid/database/Cursor;
    goto/16 :goto_4
.end method

.method public static getAlbums(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumIDs"

    .prologue
    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v0, " IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 415
    aget v0, p3, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 417
    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v0, p3, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .end local v6           #i:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getArtist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "artistID"

    .prologue
    const/4 v3, 0x0

    .line 426
    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getArtistAlbumsCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "artistId"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "unknown"

    .prologue
    .line 728
    sget-object v1, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p4}, Lcom/htc/music/util/ContentUtils;->getArtistAlbumsQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 736
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getArtistAlbumsQueryString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "artistId"
    .parameter "unknown"

    .prologue
    .line 706
    if-nez p0, :cond_0

    .line 707
    const/4 v1, 0x0

    .line 716
    :goto_0
    return-object v1

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v0, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "artist_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v1, " AND album != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    if-nez p1, :cond_1

    .line 713
    const-string v1, " AND album != \'<unknown>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 715
    :cond_1
    const-string v1, " AND album = \'<unknown>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getArtistCursor(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "context"
    .parameter "async"
    .parameter "token"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "filterstring"

    .prologue
    .line 633
    const-string v1, "[ContentUtils]"

    const-string v2, "@@@@ getArtistCursor() - start"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    if-eqz p5, :cond_0

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const/16 p5, 0x0

    .line 638
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v22, where:Ljava/lang/StringBuilder;
    const-string v1, "artist != \'\' "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const/4 v7, 0x0

    .line 643
    .local v7, keywords:[Ljava/lang/String;
    if-nez p5, :cond_2

    const/16 v18, 0x1

    .line 644
    .local v18, searchContainsUnkown:Z
    :goto_0
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 646
    const v1, 0x7f06003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    .line 647
    .local v21, unknownArtist:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 648
    .local v19, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v1, v0

    new-array v7, v1, [Ljava/lang/String;

    .line 649
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v14

    .line 650
    .local v14, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 651
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, v19

    array-length v1, v0

    if-ge v15, v1, :cond_3

    .line 652
    aget-object v1, v19, v15

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    const/16 v18, 0x1

    .line 654
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v19, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v15

    .line 651
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 643
    .end local v14           #col:Ljava/text/Collator;
    .end local v15           #i:I
    .end local v18           #searchContainsUnkown:Z
    .end local v19           #searchWords:[Ljava/lang/String;
    .end local v21           #unknownArtist:Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 656
    .restart local v14       #col:Ljava/text/Collator;
    .restart local v15       #i:I
    .restart local v18       #searchContainsUnkown:Z
    .restart local v19       #searchWords:[Ljava/lang/String;
    .restart local v21       #unknownArtist:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v1, v0

    if-ge v15, v1, :cond_4

    .line 657
    const-string v1, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 666
    .end local v14           #col:Ljava/text/Collator;
    .end local v15           #i:I
    .end local v19           #searchWords:[Ljava/lang/String;
    .end local v21           #unknownArtist:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, whereclause:Ljava/lang/String;
    const-string v1, "[ContentUtils]"

    const-string v2, "getArtistCursor() - 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/16 v16, 0x0

    .line 670
    .local v16, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_6

    .line 671
    const-string v1, "[ContentUtils]"

    const-string v2, "getArtistCursor() - 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v3, 0x0

    sget-object v4, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_5
    :goto_3
    return-object v16

    .line 678
    :cond_6
    const-string v1, "[ContentUtils]"

    const-string v2, "getArtistCursor() - 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    sget-object v4, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 683
    if-eqz v18, :cond_5

    .line 684
    sget-object v9, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v11, "artist = \'<unknown>\'"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p3

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 688
    .local v20, unknown:Landroid/database/Cursor;
    if-eqz v20, :cond_5

    .line 689
    new-instance v17, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    const/4 v2, 0x1

    aput-object v20, v1, v2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v16           #ret:Landroid/database/Cursor;
    .local v17, ret:Landroid/database/Cursor;
    move-object/from16 v16, v17

    .end local v17           #ret:Landroid/database/Cursor;
    .restart local v16       #ret:Landroid/database/Cursor;
    goto :goto_3
.end method

.method public static getFileDrmWhereDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .parameter "context"
    .parameter "fileFolderId"
    .parameter "drmFolderId"

    .prologue
    .line 446
    invoke-static {p0, p2}, Lcom/htc/music/util/MusicUtils;->getDrmAudioIdForDrmBucketId(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, drmAudioId:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, filesWhere:Ljava/lang/StringBuilder;
    const-string v4, "is_music>=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ( bucket_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 453
    const-string v1, "content://drm/audio/"

    .line 455
    .local v1, drmUriPrefix:Ljava/lang/String;
    const-string v4, " OR _data IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 459
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .end local v1           #drmUriPrefix:Ljava/lang/String;
    .end local v3           #i:I
    :cond_2
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    return-object v2
.end method

.method public static getFirstPlaylist(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 386
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 387
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 388
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstTrack(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"

    .prologue
    .line 88
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 89
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 90
    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "title"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;)V
    .locals 8
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"

    .prologue
    .line 94
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 95
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 96
    const-string v5, "is_music>=1"

    const/4 v6, 0x0

    const-string v7, "title"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static getFolderCursor(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "async"
    .parameter "token"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "filterstring"

    .prologue
    .line 472
    const-string v1, "[ContentUtils]"

    const-string v2, "@@@@ getFolderCursor() - start"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    if-eqz p5, :cond_0

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const/16 p5, 0x0

    .line 477
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v1, "is_music=1"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, ") group by (bucket_id"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, whereclause:Ljava/lang/String;
    const-string v1, "[ContentUtils]"

    const-string v2, "getFolderCursor() - 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v10, 0x0

    .line 485
    .local v10, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 486
    const-string v1, "[ContentUtils]"

    const-string v2, "getFolderCursor() - 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v9, cookie:Ljava/lang/StringBuilder;
    const-string v1, "1=1) group by (bucket_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v9           #cookie:Ljava/lang/StringBuilder;
    :goto_0
    return-object v10

    .line 494
    :cond_1
    const-string v1, "[ContentUtils]"

    const-string v2, "getFolderCursor() - 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_0
.end method

.method public static getGenresAlbumCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "genreId"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "unknown"

    .prologue
    .line 859
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p4}, Lcom/htc/music/util/ContentUtils;->getGenresAlbumQueryString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 864
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getGenresAlbumQueryString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "genreId"
    .parameter "unknown"

    .prologue
    .line 823
    if-nez p0, :cond_0

    .line 824
    const/4 v2, 0x0

    .line 855
    :goto_0
    return-object v2

    .line 826
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 827
    .local v0, genresId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v2, "album != \'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    if-nez p1, :cond_1

    .line 830
    const-string v2, " AND album != \'<unknown>\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 841
    const-string v2, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 832
    :cond_1
    const-string v2, " AND album = \'<unknown>\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 851
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getGenresCursor(Landroid/content/Context;Landroid/content/AsyncQueryHandler;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "context"
    .parameter "async"
    .parameter "token"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "filterstring"

    .prologue
    .line 742
    if-eqz p5, :cond_0

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    const/16 p5, 0x0

    .line 745
    :cond_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v25, where:Ljava/lang/StringBuilder;
    const-string v2, "name != \'\' AND name NOT LIKE \'(%)\' "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const/4 v8, 0x0

    .line 754
    .local v8, keywords:[Ljava/lang/String;
    if-nez p5, :cond_2

    const/16 v21, 0x1

    .line 756
    .local v21, searchContainsUnkown:Z
    :goto_0
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 757
    const v2, 0x7f060040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 758
    .local v24, unknownGenre:Ljava/lang/String;
    const-string v2, " "

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 759
    .local v22, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v2, v0

    new-array v8, v2, [Ljava/lang/String;

    .line 760
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v15

    .line 761
    .local v15, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 762
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 763
    aget-object v2, v22, v17

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    const/16 v21, 0x1

    .line 765
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v22, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v17

    .line 766
    const-string v2, "[ContentUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keywords("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v8, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 754
    .end local v15           #col:Ljava/text/Collator;
    .end local v17           #i:I
    .end local v21           #searchContainsUnkown:Z
    .end local v22           #searchWords:[Ljava/lang/String;
    .end local v24           #unknownGenre:Ljava/lang/String;
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 768
    .restart local v15       #col:Ljava/text/Collator;
    .restart local v17       #i:I
    .restart local v21       #searchContainsUnkown:Z
    .restart local v22       #searchWords:[Ljava/lang/String;
    .restart local v24       #unknownGenre:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 769
    const-string v2, " AND "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v2, "name LIKE ?"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 775
    .end local v15           #col:Ljava/text/Collator;
    .end local v17           #i:I
    .end local v22           #searchWords:[Ljava/lang/String;
    .end local v24           #unknownGenre:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 778
    .local v7, whereclause:Ljava/lang/String;
    const/16 v19, 0x0

    .line 779
    .local v19, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_6

    .line 781
    const-string v2, "[ContentUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getGenresCursor] Start async query - where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    move-object/from16 v2, v19

    .line 819
    :goto_4
    return-object v2

    .line 785
    :cond_6
    sget-object v5, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 787
    if-eqz v21, :cond_5

    .line 790
    new-instance v25, Ljava/lang/StringBuilder;

    .end local v25           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .restart local v25       #where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const/16 v23, 0x0

    .line 796
    .local v23, unknown:Landroid/database/Cursor;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 797
    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v11, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v12, v7

    invoke-static/range {v9 .. v14}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 801
    .local v16, cur:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 802
    new-instance v18, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 803
    .local v18, mc:Landroid/database/MatrixCursor;
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 804
    move-object/from16 v23, v18

    .line 807
    .end local v18           #mc:Landroid/database/MatrixCursor;
    :cond_7
    if-eqz v16, :cond_8

    .line 808
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 809
    const/16 v16, 0x0

    .line 812
    :cond_8
    if-nez v23, :cond_9

    if-nez v19, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    .line 814
    :cond_9
    new-instance v20, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    const/4 v3, 0x1

    aput-object v23, v2, v3

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v19           #ret:Landroid/database/Cursor;
    .local v20, ret:Landroid/database/Cursor;
    move-object/from16 v19, v20

    .end local v20           #ret:Landroid/database/Cursor;
    .restart local v19       #ret:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method public static getMedia(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 3
    .parameter "context"
    .parameter "mediaID"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, projection:[Ljava/lang/String;
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #projection:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    .line 118
    .restart local v0       #projection:[Ljava/lang/String;
    int-to-long v1, p1

    invoke-static {p0, v0, v1, v2}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getMedia(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "projection"
    .parameter "mediaID"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;JZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMedia(Landroid/content/Context;[Ljava/lang/String;JZ)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "mediaID"
    .parameter "isMusic"

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 129
    .local v6, where:Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 130
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMedia(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;JZ)V
    .locals 9
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "mediaID"
    .parameter "isMusic"

    .prologue
    const/4 v6, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 140
    .local v8, where:Ljava/lang/StringBuilder;
    if-eqz p6, :cond_0

    .line 141
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static getPlaylistByName(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "name"

    .prologue
    .line 392
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylists(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x0

    .line 291
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composer"

    .prologue
    const/4 v5, -0x1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    if-eq p0, v5, :cond_0

    .line 66
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "album_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    if-eq p1, v5, :cond_1

    .line 70
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "artist_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    .line 75
    .local v0, gid:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 76
    const-string v3, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .end local v0           #gid:J
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 78
    .restart local v0       #gid:J
    :cond_3
    const-string v3, " AND _id IN (SELECT audio_id FROM audio_genres_map WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "genre_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composer"

    .prologue
    .line 50
    const/4 v0, -0x1

    .line 51
    .local v0, intAlbumId:I
    if-eqz p0, :cond_0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    :cond_0
    const/4 v1, -0x1

    .line 55
    .local v1, intArtistId:I
    if-eqz p1, :cond_1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    :cond_1
    invoke-static {v0, v1, p2, p3}, Lcom/htc/music/util/ContentUtils;->getQueryString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTrack(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "projection"
    .parameter "trackID"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/Context;[Ljava/lang/String;JZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTrack(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;J)V
    .locals 7
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "trackID"

    .prologue
    .line 105
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/ContentUtils;->getMedia(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;JZ)V

    .line 106
    return-void
.end method

.method public static getTracks(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "trackIDs"

    .prologue
    .line 149
    const-string v3, "is_music>=1"

    .line 150
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v0, " IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 155
    aget v0, p3, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v0, p3, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .end local v6           #i:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTracks(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 10
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "orderBy"
    .parameter "trackIDs"

    .prologue
    .line 169
    const-string v5, "is_music>=1"

    .line 170
    .local v5, where:Ljava/lang/String;
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, " IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_0

    .line 175
    aget v0, p5, v8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 177
    :cond_0
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    aget v0, p5, v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .end local v8           #i:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static getTracksByAlbumList(Landroid/content/Context;Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;[II)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "albumID"
    .parameter "dbTable"

    .prologue
    const/4 v6, 0x0

    .line 275
    const/4 v8, 0x0

    .line 276
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {p5}, Lcom/htc/music/util/MusicUtils;->getQueryStringForAlbums([I)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, where:Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 280
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    if-eqz p1, :cond_1

    .line 281
    const-string v7, "album COLLATE NOCASE ASC,album_id,track"

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_1
    return-object v8

    .line 278
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 284
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    const-string v7, "album COLLATE NOCASE ASC,album_id,track"

    move-object v2, p0

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method public static getTracksForAlbum(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "albumID"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTracksForAlbum(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V
    .locals 8
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "albumID"

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "track"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public static getTracksForAllPlaylists(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"

    .prologue
    .line 313
    const/4 v4, 0x0

    .line 314
    .local v4, playlistCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 315
    .local v1, cursors:[Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 317
    .local v3, len:I
    :try_start_0
    sget-object v6, Lcom/htc/music/util/ContentUtils;->PLAYLIST_ID_COL:[Ljava/lang/String;

    const-string v7, "name"

    invoke-static {p0, v6, v7}, Lcom/htc/music/util/ContentUtils;->getPlaylists(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 318
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 319
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 320
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    const-string v6, "_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, colidx:I
    new-array v1, v3, [Landroid/database/Cursor;

    .line 323
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 324
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 325
    .local v5, plid:I
    int-to-long v6, v5

    invoke-static {p0, p1, v6, v7}, Lcom/htc/music/util/ContentUtils;->getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v1, v2

    .line 326
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v5           #plid:I
    :cond_0
    new-instance v6, Landroid/database/MergeCursor;

    invoke-direct {v6, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    if-eqz v4, :cond_1

    .line 333
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 334
    const/4 v4, 0x0

    .line 338
    .end local v0           #colidx:I
    .end local v2           #i:I
    :cond_1
    :goto_1
    return-object v6

    .line 332
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 333
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 334
    const/4 v4, 0x0

    .line 332
    :cond_2
    throw v6

    :cond_3
    if-eqz v4, :cond_4

    .line 333
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 334
    const/4 v4, 0x0

    .line 338
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getTracksForArtist(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "projection"
    .parameter "artistID"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/music/util/ContentUtils;->getTracksForArtist(Landroid/content/Context;[Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTracksForArtist(Landroid/content/Context;[Ljava/lang/String;IZ)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "artistID"
    .parameter "newTable"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "artist_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is_music>=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_0

    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 197
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,album_id,track,title COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 195
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getTracksForArtist(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;IZ)V
    .locals 8
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "artistID"
    .parameter "newTable"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, where:Ljava/lang/String;
    if-eqz p5, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 206
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    const/4 v6, 0x0

    const-string v7, "album COLLATE NOCASE ASC,album_id,track,title COLLATE NOCASE ASC"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 204
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getTracksForComposer(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "name"

    .prologue
    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v6, where:Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "is_music>=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 252
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 248
    const-string v0, "composer"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getTracksForFolder(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "fileFolderId"
    .parameter "drmFolderId"

    .prologue
    const/4 v4, 0x0

    .line 433
    invoke-static {p0, p2, p3}, Lcom/htc/music/util/ContentUtils;->getFileDrmWhereDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 434
    .local v6, where:Ljava/lang/StringBuilder;
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v5, "title COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public static getTracksForFolder(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "context"
    .parameter "fileFolderId"
    .parameter "drmFolderId"

    .prologue
    const/4 v6, 0x0

    .line 440
    invoke-static {p4, p5, p6}, Lcom/htc/music/util/ContentUtils;->getFileDrmWhereDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 441
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void

    :cond_0
    move-object v5, v6

    .line 441
    goto :goto_0
.end method

.method public static getTracksForGenre(Landroid/content/Context;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "genreID"

    .prologue
    const/4 v4, 0x0

    .line 211
    const-string v5, "album COLLATE NOCASE ASC, album_id,track,title COLLATE NOCASE ASC"

    .line 213
    .local v5, sortOrder:Ljava/lang/String;
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 214
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, where:Ljava/lang/String;
    const-string v0, "[ContentUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTracksForGenre, genreID: -1; query string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 219
    .end local v6           #where:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "external"

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "title != \'\' AND is_music>=1"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTracksForGenre(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;I)V
    .locals 17
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "genreID"

    .prologue
    .line 226
    const-string v8, "album COLLATE NOCASE ASC, album_id,track,title COLLATE NOCASE ASC"

    .line 228
    .local v8, sortOrder:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 229
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, where:Ljava/lang/String;
    const-string v1, "[ContentUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTracksForGenre, genreID: -1; query string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v8}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v6           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v1, "external"

    move/from16 v0, p4

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    const-string v14, "title != \'\' AND is_music>=1"

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    .line 343
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"
    .parameter "newTable"

    .prologue
    .line 350
    if-eqz p7, :cond_0

    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 352
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {p3, p4, p5, p6}, Lcom/htc/music/util/ContentUtils;->getQueryString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, where:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 350
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    .line 358
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTracksForMultiCondition(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"
    .parameter "newTable"

    .prologue
    .line 371
    if-eqz p7, :cond_0

    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 373
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {p3, p4, p5, p6}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, where:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 371
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"

    .prologue
    .line 364
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/htc/music/util/ContentUtils;->getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public static getTracksForMultiCondition(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "albumID"
    .parameter "artistID"
    .parameter "genreID"
    .parameter "composer"
    .parameter "newTable"

    .prologue
    .line 379
    if-eqz p9, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 381
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    invoke-static/range {p5 .. p8}, Lcom/htc/music/util/ContentUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, where:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 379
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #where:Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getTracksForPlaylist(Landroid/content/Context;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "projection"
    .parameter "playlistID"

    .prologue
    const/4 v3, 0x0

    .line 296
    const-string v0, "external"

    invoke-static {v0, p2, p3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getTracksForPlaylist(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;[Ljava/lang/String;J)V
    .locals 8
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "projection"
    .parameter "playlistID"

    .prologue
    const/4 v5, 0x0

    .line 303
    const-string v0, "external"

    invoke-static {v0, p4, p5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "play_order"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/ContentUtils;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cursor"
    .parameter "displayName"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 868
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 883
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 870
    .restart local p0
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v0, albumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 872
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    new-instance v1, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v1, p2, v0}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 883
    .local v1, albumListCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v3

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 27
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 39
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 31
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 32
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[ContentUtils]"

    const-string v2, "[query] error UnsupportedOperationException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 33
    goto :goto_0

    .line 34
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 35
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[ContentUtils]"

    const-string v2, "[query] error IllegalStateException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 36
    goto :goto_0

    .line 37
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 38
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[ContentUtils]"

    const-string v2, "[query] error SQLiteException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 39
    goto :goto_0
.end method

.method public static startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "asyncQueryHandler"
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
