.class public Lcom/htc/music/lyrics/LyricGenerator;
.super Ljava/lang/Object;
.source "LyricGenerator.java"


# static fields
.field private static logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private static mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static AdjustOrder(Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 17
    .parameter "lyrics"

    .prologue
    .line 421
    const/4 v1, 0x1

    .line 423
    .local v1, bResult:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/Lyrics;->getTimeVector()Ljava/util/Vector;

    move-result-object v9

    .line 424
    .local v9, mVectorTime:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/lyrics/Lyrics;->getLyricsVector()Ljava/util/Vector;

    move-result-object v8

    .line 425
    .local v8, mVectorLRC:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v14

    if-nez v14, :cond_0

    .line 427
    const/4 v1, 0x0

    move v2, v1

    .line 457
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 431
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/Integer;

    invoke-virtual {v9, v14}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Integer;

    move-object v7, v14

    check-cast v7, [Ljava/lang/Integer;

    .line 432
    .local v7, mTime:[Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object v6, v14

    check-cast v6, [Ljava/lang/String;

    .line 434
    .local v6, mStrLyric:[Ljava/lang/String;
    array-length v13, v7

    .line 435
    .local v13, timeLen:I
    move-object v12, v7

    .line 436
    .local v12, timeArray:[Ljava/lang/Integer;
    move-object v5, v6

    .line 438
    .local v5, lyricArray:[Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    if-ge v3, v13, :cond_3

    .line 440
    add-int/lit8 v4, v13, -0x1

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_2

    .line 442
    aget-object v14, v12, v4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v15, v4, -0x1

    aget-object v15, v12, v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 444
    sget-object v14, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[AdjustOrder],"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v4, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v4, -0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 445
    aget-object v14, v12, v4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 446
    .local v11, tempTime:I
    add-int/lit8 v14, v4, -0x1

    aget-object v14, v12, v14

    aput-object v14, v12, v4

    .line 447
    add-int/lit8 v14, v4, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v14

    .line 448
    aget-object v10, v5, v4

    .line 449
    .local v10, tempLrc:Ljava/lang/String;
    add-int/lit8 v14, v4, -0x1

    aget-object v14, v5, v14

    aput-object v14, v5, v4

    .line 450
    add-int/lit8 v14, v4, -0x1

    aput-object v10, v5, v14

    .line 440
    .end local v10           #tempLrc:Ljava/lang/String;
    .end local v11           #tempTime:I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 438
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 455
    .end local v4           #j:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/music/lyrics/Lyrics;->setTimeArray([Ljava/lang/Integer;)V

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/music/lyrics/Lyrics;->setLyricsArray([Ljava/lang/String;)V

    move v2, v1

    .line 457
    .restart local v2       #bResult:I
    goto/16 :goto_0
.end method

.method private static Paser(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 21
    .parameter "text"
    .parameter "lyrics"

    .prologue
    .line 315
    if-nez p1, :cond_1

    .line 317
    const/4 v14, 0x0

    .line 415
    :cond_0
    :goto_0
    return v14

    .line 320
    :cond_1
    const/4 v14, 0x0

    .line 321
    .local v14, result:Z
    const/4 v3, 0x0

    .line 322
    .local v3, bLrcTag:Z
    const/4 v9, 0x0

    .line 323
    .local v9, nBeginPos:I
    const/4 v10, 0x0

    .line 324
    .local v10, nEndPos:I
    const/16 v17, 0x0

    .line 325
    .local v17, temp:Ljava/lang/String;
    const/4 v15, 0x0

    .line 326
    .local v15, strTag:Ljava/lang/String;
    const/16 v16, 0x0

    .line 328
    .local v16, strValue:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/music/lyrics/Lyrics;->getTimeVector()Ljava/util/Vector;

    move-result-object v8

    .line 329
    .local v8, mVectorTime:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/music/lyrics/Lyrics;->getLyricsVector()Ljava/util/Vector;

    move-result-object v7

    .line 331
    .local v7, mVectorLRC:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 332
    sget-object v18, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Lyric: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 335
    :cond_2
    if-eqz p0, :cond_0

    .line 337
    :try_start_0
    const-string v18, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 338
    const-string v18, "]"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 340
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_0

    .line 342
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 344
    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 345
    .local v12, pos:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    .line 347
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 348
    sget-object v18, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "strTag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 349
    add-int/lit8 v18, v12, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 350
    sget-object v18, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "strValue: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 351
    const-string v18, "ar"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 385
    :cond_3
    :goto_1
    add-int/lit8 v18, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 392
    const-string v18, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 393
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_2

    .line 399
    if-eqz v3, :cond_2

    .line 401
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v18

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v19

    sub-int v6, v18, v19

    .line 402
    .local v6, j:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v6, :cond_2

    .line 404
    sget-object v18, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Add text:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 405
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 355
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_4
    const-string v18, "ti"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 359
    const-string v18, "al"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 363
    const-string v18, "by"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 367
    const-string v18, "offset"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 371
    const-string v18, "poss"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 373
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 374
    .local v13, poss:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/Lyrics;->setPoss(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 411
    .end local v12           #pos:I
    .end local v13           #poss:I
    :catch_0
    move-exception v4

    .line 413
    .local v4, e:Ljava/lang/Exception;
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 378
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v12       #pos:I
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/high16 v20, 0x447a

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v11, v18, v19

    .line 380
    .local v11, nTime:I
    sget-object v18, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Add time:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 381
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method private static PaserStr(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 7
    .parameter "text"
    .parameter "lyrics"

    .prologue
    const/4 v3, 0x0

    .line 284
    if-nez p1, :cond_1

    move v2, v3

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    const/4 v2, 0x0

    .line 291
    .local v2, result:Z
    invoke-virtual {p1}, Lcom/htc/music/lyrics/Lyrics;->getTimeVector()Ljava/util/Vector;

    move-result-object v1

    .line 292
    .local v1, mVectorTime:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/htc/music/lyrics/Lyrics;->getLyricsVector()Ljava/util/Vector;

    move-result-object v0

    .line 294
    .local v0, mVectorLRC:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 295
    sget-object v4, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lyric: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 296
    if-eqz p0, :cond_0

    .line 298
    sget-object v4, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add text:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",and add time = 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 300
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 301
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/lyrics/LyricGenerator;->mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;

    .line 56
    return-void
.end method

.method public static genLyrics(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;
    .locals 1
    .parameter "path"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/htc/music/lyrics/LyricGenerator;->openLyricFile(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    sput-object v0, Lcom/htc/music/lyrics/LyricGenerator;->mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;

    .line 39
    sget-object v0, Lcom/htc/music/lyrics/LyricGenerator;->mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;

    return-object v0
.end method

.method public static genOnlineLyric(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;
    .locals 1
    .parameter "strLyric"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/htc/music/lyrics/LyricGenerator;->openOnlineLyricFile(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    sput-object v0, Lcom/htc/music/lyrics/LyricGenerator;->mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;

    .line 46
    sget-object v0, Lcom/htc/music/lyrics/LyricGenerator;->mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;

    return-object v0
.end method

.method public static getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/music/lyrics/LyricGenerator;->mCurrentLyrics:Lcom/htc/music/lyrics/Lyrics;

    return-object v0
.end method

.method private static openLyricFile(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;
    .locals 17
    .parameter "strURL"

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 189
    sget-object v14, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v15, "The Lyric is Null"

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 190
    const/4 v6, 0x0

    .line 270
    :cond_0
    :goto_0
    return-object v6

    .line 192
    :cond_1
    new-instance v6, Lcom/htc/music/lyrics/Lyrics;

    invoke-direct {v6}, Lcom/htc/music/lyrics/Lyrics;-><init>()V

    .line 193
    .local v6, lyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-virtual {v6}, Lcom/htc/music/lyrics/Lyrics;->init()V

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/htc/music/lyrics/Lyrics;->setPath(Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, hLyricFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 204
    .local v8, nFileSize:I
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v3           #hLyricFile:Ljava/io/File;
    .local v4, hLyricFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v8, v14

    .line 206
    if-nez v8, :cond_2

    .line 208
    sget-object v14, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v15, "The File Size is 0"

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 209
    const/4 v6, 0x0

    goto :goto_0

    .line 213
    :cond_2
    new-array v12, v8, [C

    .line 215
    .local v12, strArray:[C
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 216
    .local v5, isReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 217
    .local v1, bufferReader:Ljava/io/BufferedReader;
    const/4 v14, 0x0

    invoke-virtual {v1, v12, v14, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v10

    .line 219
    .local v10, nReadCount:I
    const/4 v9, 0x0

    .line 220
    .local v9, nIndex:I
    const/4 v11, 0x0

    .line 221
    .local v11, nStart:I
    const/4 v7, 0x0

    .line 227
    .local v7, nEnd:I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_6

    .line 229
    aget-char v14, v12, v9

    const/16 v15, 0xd

    if-eq v14, v15, :cond_3

    aget-char v14, v12, v9

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    .line 231
    :cond_3
    const/16 v14, 0x20

    aput-char v14, v12, v9

    .line 227
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 233
    :cond_5
    aget-char v14, v12, v9

    const/16 v15, 0x5b

    if-ne v14, v15, :cond_4

    .line 235
    move v7, v9

    .line 236
    if-ge v11, v7, :cond_4

    add-int/lit8 v14, v9, -0x1

    aget-char v14, v12, v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_4

    .line 238
    new-instance v13, Ljava/lang/String;

    sub-int v14, v7, v11

    invoke-direct {v13, v12, v11, v14}, Ljava/lang/String;-><init>([CII)V

    .line 239
    .local v13, strLine:Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "strLine in:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    invoke-static {v13, v6}, Lcom/htc/music/lyrics/LyricGenerator;->Paser(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 241
    move v11, v7

    goto :goto_2

    .line 246
    .end local v13           #strLine:Ljava/lang/String;
    :cond_6
    if-ge v11, v9, :cond_7

    .line 248
    new-instance v13, Ljava/lang/String;

    sub-int v14, v9, v11

    invoke-direct {v13, v12, v11, v14}, Ljava/lang/String;-><init>([CII)V

    .line 249
    .restart local v13       #strLine:Ljava/lang/String;
    invoke-static {v13, v6}, Lcom/htc/music/lyrics/LyricGenerator;->Paser(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 252
    .end local v13           #strLine:Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Lcom/htc/music/lyrics/LyricGenerator;->AdjustOrder(Lcom/htc/music/lyrics/Lyrics;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 254
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 257
    :cond_8
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 265
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v4           #hLyricFile:Ljava/io/File;
    .end local v5           #isReader:Ljava/io/InputStreamReader;
    .end local v7           #nEnd:I
    .end local v9           #nIndex:I
    .end local v10           #nReadCount:I
    .end local v11           #nStart:I
    .end local v12           #strArray:[C
    .restart local v3       #hLyricFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[openLyricFile] Error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 265
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #hLyricFile:Ljava/io/File;
    .restart local v4       #hLyricFile:Ljava/io/File;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #hLyricFile:Ljava/io/File;
    .restart local v3       #hLyricFile:Ljava/io/File;
    goto :goto_3
.end method

.method private static openOnlineLyricFile(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;
    .locals 15
    .parameter "strLyric"

    .prologue
    const/16 v14, 0x5b

    const/16 v13, 0xa

    const/4 v9, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 63
    sget-object v10, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v11, "The Lyric is Null"

    invoke-virtual {v10, v11}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    move-object v1, v9

    .line 173
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lcom/htc/music/lyrics/Lyrics;

    invoke-direct {v1}, Lcom/htc/music/lyrics/Lyrics;-><init>()V

    .line 67
    .local v1, lyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-virtual {v1}, Lcom/htc/music/lyrics/Lyrics;->init()V

    .line 69
    invoke-virtual {v1, p0}, Lcom/htc/music/lyrics/Lyrics;->setLyricStr(Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    new-array v7, v10, [C

    .line 78
    .local v7, strArray:[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v2, mBufferedReader:Ljava/io/BufferedReader;
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v7, v10, v11}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    .line 81
    .local v5, nReadCount:I
    const/4 v4, 0x0

    .line 82
    .local v4, nIndex:I
    const/4 v6, 0x0

    .line 83
    .local v6, nStart:I
    const/4 v3, 0x0

    .line 85
    .local v3, nEnd:I
    const/4 v10, 0x0

    aget-char v10, v7, v10

    if-eq v10, v14, :cond_5

    .line 95
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/htc/music/lyrics/Lyrics;->setLyricType(I)V

    .line 96
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    .line 98
    move v3, v4

    .line 99
    if-ge v6, v3, :cond_2

    add-int/lit8 v10, v4, -0x1

    aget-char v10, v7, v10

    if-ne v10, v13, :cond_2

    .line 101
    new-instance v8, Ljava/lang/String;

    sub-int v10, v3, v6

    invoke-direct {v8, v7, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .line 102
    .local v8, strLine:Ljava/lang/String;
    sget-object v10, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[String Type]strLine in:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 103
    invoke-static {v8, v1}, Lcom/htc/music/lyrics/LyricGenerator;->PaserStr(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 104
    move v6, v3

    .line 96
    .end local v8           #strLine:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 107
    :cond_3
    if-ge v6, v4, :cond_4

    .line 110
    new-instance v8, Ljava/lang/String;

    sub-int v10, v4, v6

    invoke-direct {v8, v7, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .line 111
    .restart local v8       #strLine:Ljava/lang/String;
    sget-object v10, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[last line] strLine in:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 112
    invoke-static {v8, v1}, Lcom/htc/music/lyrics/LyricGenerator;->PaserStr(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 157
    .end local v8           #strLine:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/htc/music/lyrics/LyricGenerator;->AdjustOrder(Lcom/htc/music/lyrics/Lyrics;)Z

    move-result v10

    if-nez v10, :cond_a

    move-object v1, v9

    .line 158
    goto/16 :goto_0

    .line 128
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/htc/music/lyrics/Lyrics;->setLyricType(I)V

    .line 129
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_9

    .line 131
    aget-char v10, v7, v4

    const/16 v11, 0xd

    if-eq v10, v11, :cond_6

    aget-char v10, v7, v4

    if-ne v10, v13, :cond_8

    .line 133
    :cond_6
    const/16 v10, 0x20

    aput-char v10, v7, v4

    .line 129
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 135
    :cond_8
    aget-char v10, v7, v4

    if-ne v10, v14, :cond_7

    .line 137
    move v3, v4

    .line 138
    if-ge v6, v3, :cond_7

    add-int/lit8 v10, v4, -0x1

    aget-char v10, v7, v10

    const/16 v11, 0x5d

    if-eq v10, v11, :cond_7

    .line 140
    new-instance v8, Ljava/lang/String;

    sub-int v10, v3, v6

    invoke-direct {v8, v7, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .line 141
    .restart local v8       #strLine:Ljava/lang/String;
    sget-object v10, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LRC Type]strLine in:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 142
    invoke-static {v8, v1}, Lcom/htc/music/lyrics/LyricGenerator;->Paser(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 143
    move v6, v3

    goto :goto_4

    .line 148
    .end local v8           #strLine:Ljava/lang/String;
    :cond_9
    if-ge v6, v4, :cond_4

    .line 151
    new-instance v8, Ljava/lang/String;

    sub-int v10, v4, v6

    invoke-direct {v8, v7, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .line 152
    .restart local v8       #strLine:Ljava/lang/String;
    sget-object v10, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[last line] strLine in:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 153
    invoke-static {v8, v1}, Lcom/htc/music/lyrics/LyricGenerator;->Paser(Ljava/lang/String;Lcom/htc/music/lyrics/Lyrics;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 168
    .end local v2           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v3           #nEnd:I
    .end local v4           #nIndex:I
    .end local v5           #nReadCount:I
    .end local v6           #nStart:I
    .end local v7           #strArray:[C
    .end local v8           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/music/lyrics/LyricGenerator;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[openLyricFile] Error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    move-object v1, v9

    .line 171
    goto/16 :goto_0

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #nEnd:I
    .restart local v4       #nIndex:I
    .restart local v5       #nReadCount:I
    .restart local v6       #nStart:I
    .restart local v7       #strArray:[C
    :cond_a
    if-eqz v2, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
