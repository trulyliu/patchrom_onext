.class public Lcom/mt/image/ImageEffect;
.super Ljava/lang/Object;
.source "ImageEffect.java"


# static fields
.field private static final MT_TABLE_EFFECT:I = 0x0

.field private static final MT_TABLE_EFFECT_ChiDouRen:I = 0x11

.field private static final MT_TABLE_EFFECT_ChuanYue:I = 0x13

.field private static final MT_TABLE_EFFECT_DanYa:I = 0x2

.field private static final MT_TABLE_EFFECT_DianShiQiang:I = 0x19

.field private static final MT_TABLE_EFFECT_FangDaJing:I = 0x15

.field private static final MT_TABLE_EFFECT_GeTeFeng:I = 0xd

.field private static final MT_TABLE_EFFECT_GuDian:I = 0x3

.field private static final MT_TABLE_EFFECT_JiYa:I = 0x18

.field private static final MT_TABLE_EFFECT_JingDianLomo:I = 0x1

.field private static final MT_TABLE_EFFECT_KEAI_FenHongLeYuan:I = 0x5

.field private static final MT_TABLE_EFFECT_KEAI_FenNenXi:I = 0x8

.field private static final MT_TABLE_EFFECT_KEAI_HuanLeShiGuang:I = 0x9

.field private static final MT_TABLE_EFFECT_KEAI_KeAiXing:I = 0xa

.field private static final MT_TABLE_EFFECT_KEAI_LinJiaTu:I = 0xb

.field private static final MT_TABLE_EFFECT_KEAI_QingLiangYiXia:I = 0xc

.field private static final MT_TABLE_EFFECT_KEAI_XingFuBaShi:I = 0x7

.field private static final MT_TABLE_EFFECT_KEAI_YouLeChang:I = 0x6

.field private static final MT_TABLE_EFFECT_LiangHong:I = 0x10

.field private static final MT_TABLE_EFFECT_LiuJinSuiYue:I = 0xe

.field private static final MT_TABLE_EFFECT_MoSha:I = 0x17

.field private static final MT_TABLE_EFFECT_NuanYangYang:I = 0xf

.field private static final MT_TABLE_EFFECT_RiXi:I = 0x4

.field private static final MT_TABLE_EFFECT_ShuangMianJing:I = 0x14

.field private static final MT_TABLE_EFFECT_ShuiBoWen:I = 0x16

.field private static final MT_TABLE_EFFECT_WuYa:I = 0x12

.field private static jni:Lcom/image/gif/JNI;

.field public static mCurIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/image/gif/JNI;

    invoke-direct {v0}, Lcom/image/gif/JNI;-><init>()V

    sput-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChiDouRen(Ljava/util/List;Landroid/content/Context;)Z
    .locals 16
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 259
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 260
    .local v4, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 262
    .local v5, height:I
    const-string v1, "effect/chidouren1.mtbk"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v7

    .line 263
    .local v7, MaskData:[B
    const-string v1, "effect/chidouren2.mtbk"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v8

    .line 264
    .local v8, MaskData2:[B
    const/16 v12, 0x21

    .line 265
    .local v12, pc:I
    invoke-static {v7, v12}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v14

    .line 266
    .local v14, pn:I
    add-int/lit8 v12, v12, 0x4

    .line 267
    invoke-static {v7, v12}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 268
    .local v15, pw:I
    add-int/lit8 v12, v12, 0x4

    .line 269
    invoke-static {v7, v12}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 270
    .local v13, ph:I
    const/4 v11, 0x0

    .line 271
    .local v11, j:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_0

    .line 294
    const/4 v7, 0x0

    check-cast v7, [B

    .line 295
    const/4 v8, 0x0

    check-cast v8, [B

    .line 296
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 301
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #MaskData:[B
    .end local v8           #MaskData2:[B
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #pc:I
    .end local v13           #ph:I
    .end local v14           #pn:I
    .end local v15           #pw:I
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 272
    .restart local v4       #width:I
    .restart local v5       #height:I
    .restart local v7       #MaskData:[B
    .restart local v8       #MaskData2:[B
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #pc:I
    .restart local v13       #ph:I
    .restart local v14       #pn:I
    .restart local v15       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 273
    .local v2, data:[I
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v3, 0x0

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 274
    const/4 v1, 0x4

    if-ge v11, v1, :cond_2

    .line 275
    invoke-static {v2, v7, v11, v15, v13}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 280
    :goto_2
    const/4 v1, 0x1

    if-eq v14, v1, :cond_1

    .line 283
    add-int/lit8 v1, v14, -0x1

    if-ge v11, v1, :cond_3

    .line 284
    add-int/lit8 v11, v11, 0x1

    .line 289
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 290
    const/4 v2, 0x0

    check-cast v2, [I

    .line 291
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 292
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 271
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 278
    :cond_2
    add-int/lit8 v1, v11, -0x4

    invoke-static {v2, v8, v1, v15, v13}, Lcom/mt/image/ImageEffect;->ProcessFrameMid([I[BIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 298
    .end local v2           #data:[I
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #MaskData:[B
    .end local v8           #MaskData2:[B
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #pc:I
    .end local v13           #ph:I
    .end local v14           #pn:I
    .end local v15           #pw:I
    :catch_0
    move-exception v9

    .line 299
    .local v9, e:Ljava/lang/Exception;
    invoke-static {v9}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 287
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #data:[I
    .restart local v4       #width:I
    .restart local v5       #height:I
    .restart local v7       #MaskData:[B
    .restart local v8       #MaskData2:[B
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #pc:I
    .restart local v13       #ph:I
    .restart local v14       #pn:I
    .restart local v15       #pw:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public static ChuanYue(Ljava/util/List;Landroid/content/Context;)Z
    .locals 31
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    :try_start_0
    sput v4, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 794
    .local v25, lastTime:J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 795
    .local v7, width:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 797
    .local v11, height:I
    const-string v4, "effect/mtxx_cy.eb"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v15

    .line 799
    .local v15, TransData:[B
    const-string v4, "effect/shiGuangSuiDao.mtbk"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v18

    .line 802
    .local v18, MaskData:[B
    const/16 v27, 0x21

    .line 803
    .local v27, pc:I
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v29

    .line 804
    .local v29, pn:I
    add-int/lit8 v27, v27, 0x4

    .line 805
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v30

    .line 806
    .local v30, pw:I
    add-int/lit8 v27, v27, 0x4

    .line 807
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v28

    .line 808
    .local v28, ph:I
    const/16 v24, 0x0

    .line 809
    .local v24, j:I
    const-string v4, "TEMP"

    const-string v6, "Effect  ChuanYue "

    invoke-static {v4, v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 812
    .local v19, bmpMid:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 813
    .local v20, bmpScale:Landroid/graphics/Bitmap;
    mul-int v4, v7, v11

    new-array v14, v4, [I

    .line 814
    .local v14, dataScale:[I
    mul-int v4, v7, v11

    new-array v5, v4, [I

    .line 815
    .local v5, data:[I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v23

    if-lt v0, v4, :cond_0

    .line 842
    const/4 v5, 0x0

    check-cast v5, [I

    .line 843
    const/4 v14, 0x0

    check-cast v14, [I

    .line 844
    const/4 v15, 0x0

    check-cast v15, [B

    .line 845
    const/16 v18, 0x0

    check-cast v18, [B

    .line 846
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 849
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v25, v8, v25

    .line 852
    const-string v4, "TEMP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Total  ChuanYue time="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .end local v5           #data:[I
    .end local v7           #width:I
    .end local v11           #height:I
    .end local v14           #dataScale:[I
    .end local v15           #TransData:[B
    .end local v18           #MaskData:[B
    .end local v19           #bmpMid:Landroid/graphics/Bitmap;
    .end local v20           #bmpScale:Landroid/graphics/Bitmap;
    .end local v23           #i:I
    .end local v24           #j:I
    .end local v25           #lastTime:J
    .end local v27           #pc:I
    .end local v28           #ph:I
    .end local v29           #pn:I
    .end local v30           #pw:I
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 816
    .restart local v5       #data:[I
    .restart local v7       #width:I
    .restart local v11       #height:I
    .restart local v14       #dataScale:[I
    .restart local v15       #TransData:[B
    .restart local v18       #MaskData:[B
    .restart local v19       #bmpMid:Landroid/graphics/Bitmap;
    .restart local v20       #bmpScale:Landroid/graphics/Bitmap;
    .restart local v23       #i:I
    .restart local v24       #j:I
    .restart local v25       #lastTime:J
    .restart local v27       #pc:I
    .restart local v28       #ph:I
    .restart local v29       #pn:I
    .restart local v30       #pw:I
    :cond_0
    invoke-static {}, Lcom/mt/tools/MTDebug;->startCount()V

    .line 817
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 818
    sget-object v12, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    move-object v13, v5

    move/from16 v16, v7

    move/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/image/gif/JNI;->StyleChuanYueP1([I[I[BII)V

    .line 820
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 821
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 822
    new-instance v21, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    .local v21, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/16 v6, 0x1c

    const/16 v8, 0x1c

    const/16 v9, 0xb8

    const/16 v10, 0xb8

    invoke-direct {v4, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 824
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v19

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 826
    sget-object v4, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v4, v5, v14, v7, v11}, Lcom/image/gif/JNI;->StyleChuanYueP2([I[III)V

    .line 827
    const-string v4, "TEMP"

    const-string v6, "StyleChuanYue"

    invoke-static {v4, v6}, Lcom/mt/tools/MTDebug;->stopCount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 829
    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v30

    move/from16 v3, v28

    invoke-static {v5, v0, v1, v2, v3}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 830
    const/4 v4, 0x1

    move/from16 v0, v29

    if-eq v0, v4, :cond_1

    .line 833
    add-int/lit8 v4, v29, -0x1

    move/from16 v0, v24

    if-ge v0, v4, :cond_2

    .line 834
    add-int/lit8 v24, v24, 0x1

    .line 839
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 840
    sget v4, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 837
    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    .line 854
    .end local v5           #data:[I
    .end local v7           #width:I
    .end local v11           #height:I
    .end local v14           #dataScale:[I
    .end local v15           #TransData:[B
    .end local v18           #MaskData:[B
    .end local v19           #bmpMid:Landroid/graphics/Bitmap;
    .end local v20           #bmpScale:Landroid/graphics/Bitmap;
    .end local v21           #canvas:Landroid/graphics/Canvas;
    .end local v23           #i:I
    .end local v24           #j:I
    .end local v25           #lastTime:J
    .end local v27           #pc:I
    .end local v28           #ph:I
    .end local v29           #pn:I
    .end local v30           #pw:I
    :catch_0
    move-exception v22

    .line 855
    .local v22, e:Ljava/lang/Exception;
    invoke-static/range {v22 .. v22}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectDanYa(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/danYa.mtbk"

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectFenHongLeYuan(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/keAi1.mtbk"

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectFenNenXi(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/mtxx_fnx.png"

    const-string v1, "effect/.mtbk"

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, p1, v2}, Lcom/mt/image/ImageEffect;->EffectOne(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectGeTeFeng(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/geTeFeng.mtbk"

    const/16 v1, 0xd

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectGuDian(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/guDian.mtbk"

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectJingDianLomo(Ljava/util/List;Landroid/content/Context;)Z
    .locals 23
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :try_start_0
    const-string v2, "TEMP"

    const-string v21, "______________-----StyleJingDianLomo"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x0

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 55
    .local v15, lastTime:J
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 56
    .local v7, width:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 60
    .local v8, height:I
    const-string v2, "effect/mtxx_lomo4.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    .line 59
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 61
    .local v10, bmpMask1:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v10, v7, v8, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 62
    invoke-static {v10}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 63
    .local v4, dataMask1:[I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    const/4 v10, 0x0

    .line 65
    const-string v2, "TEMP"

    const-string v21, "_____1"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "effect/mtxx_lomo1_2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    .line 66
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 68
    .local v11, bmpMask2:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v11, v7, v8, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 69
    invoke-static {v11}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v5

    .line 70
    .local v5, dataMask2:[I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    const/4 v11, 0x0

    .line 73
    const-string v2, "effect/effect034.eb"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v6

    .line 75
    .local v6, TransData:[B
    const-string v2, "TEMP"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "_____2 TransData="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v6

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "effect/lomo.mtbk"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v9

    .line 78
    .local v9, MaskData:[B
    const/16 v17, 0x21

    .line 79
    .local v17, pc:I
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v19

    .line 80
    .local v19, pn:I
    add-int/lit8 v17, v17, 0x4

    .line 81
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v20

    .line 82
    .local v20, pw:I
    add-int/lit8 v17, v17, 0x4

    .line 83
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v18

    .line 84
    .local v18, ph:I
    const/4 v14, 0x0

    .line 85
    .local v14, j:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v13, v2, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v15, v21, v15

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v21, "StyleBrightRed time="

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 115
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #TransData:[B
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v9           #MaskData:[B
    .end local v10           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v11           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #lastTime:J
    .end local v17           #pc:I
    .end local v18           #ph:I
    .end local v19           #pn:I
    .end local v20           #pw:I
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 86
    .restart local v4       #dataMask1:[I
    .restart local v5       #dataMask2:[I
    .restart local v6       #TransData:[B
    .restart local v7       #width:I
    .restart local v8       #height:I
    .restart local v9       #MaskData:[B
    .restart local v10       #bmpMask1:Landroid/graphics/Bitmap;
    .restart local v11       #bmpMask2:Landroid/graphics/Bitmap;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #lastTime:J
    .restart local v17       #pc:I
    .restart local v18       #ph:I
    .restart local v19       #pn:I
    .restart local v20       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 87
    .local v3, data:[I
    const-string v2, "TEMP"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "data="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v3

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dataMask1="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v4

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dataMask2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " w="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " height="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v2, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v2 .. v8}, Lcom/image/gif/JNI;->EffectJingDianLomo([I[I[I[BII)V

    .line 90
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v3, v9, v14, v0, v1}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 91
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 94
    add-int/lit8 v2, v19, -0x1

    if-ge v14, v2, :cond_2

    .line 95
    add-int/lit8 v14, v14, 0x1

    .line 101
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 104
    sget v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 98
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 112
    .end local v3           #data:[I
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #TransData:[B
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v9           #MaskData:[B
    .end local v10           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v11           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #lastTime:J
    .end local v17           #pc:I
    .end local v18           #ph:I
    .end local v19           #pn:I
    .end local v20           #pw:I
    :catch_0
    move-exception v12

    .line 113
    .local v12, e:Ljava/lang/Exception;
    invoke-static {v12}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectJiuShiGuang(Ljava/util/List;Landroid/content/Context;)Z
    .locals 24
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x0

    .line 122
    .local v10, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 125
    .local v16, lastTime:J
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 126
    .local v7, width:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 130
    .local v8, height:I
    const-string v2, "effect/mtxx_lomo5_1.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    .line 129
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 131
    .local v11, bmpMask1:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v11, v7, v8, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 132
    invoke-static {v11}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 133
    .local v4, dataMask1:[I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 v11, 0x0

    .line 137
    const-string v2, "effect/mtxx_lomo5_2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    .line 136
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 138
    .local v12, bmpMask2:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v12, v7, v8, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 139
    invoke-static {v12}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v5

    .line 140
    .local v5, dataMask2:[I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    const/4 v12, 0x0

    .line 143
    const-string v2, "effect/effect5.eb"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v6

    .line 146
    .local v6, TransData:[B
    const-string v2, "effect/keAi5.mtbk"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v9

    .line 147
    .local v9, MaskData:[B
    const/16 v18, 0x21

    .line 148
    .local v18, pc:I
    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v20

    .line 149
    .local v20, pn:I
    add-int/lit8 v18, v18, 0x4

    .line 150
    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v21

    .line 151
    .local v21, pw:I
    add-int/lit8 v18, v18, 0x4

    .line 152
    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v19

    .line 153
    .local v19, ph:I
    const/4 v15, 0x0

    .line 154
    .local v15, j:I
    const-string v2, "TEMP"

    const-string v22, "EffectJiuShiGuang "

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v14, v2, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v16, v22, v16

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v22, "StyleBrightRed time="

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 183
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #TransData:[B
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v9           #MaskData:[B
    .end local v11           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v12           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #lastTime:J
    .end local v18           #pc:I
    .end local v19           #ph:I
    .end local v20           #pn:I
    .end local v21           #pw:I
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 156
    .restart local v4       #dataMask1:[I
    .restart local v5       #dataMask2:[I
    .restart local v6       #TransData:[B
    .restart local v7       #width:I
    .restart local v8       #height:I
    .restart local v9       #MaskData:[B
    .restart local v11       #bmpMask1:Landroid/graphics/Bitmap;
    .restart local v12       #bmpMask2:Landroid/graphics/Bitmap;
    .restart local v14       #i:I
    .restart local v15       #j:I
    .restart local v16       #lastTime:J
    .restart local v18       #pc:I
    .restart local v19       #ph:I
    .restart local v20       #pn:I
    .restart local v21       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 157
    .local v3, data:[I
    const-string v2, "TEMP"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "data="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v3

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dataMask1="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v4

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dataMask2="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v5

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " TransData="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v6

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " w="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " h="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v2 .. v8}, Lcom/image/gif/JNI;->EffectJiuShiGuang([I[I[I[BII)V

    .line 160
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v3, v9, v15, v0, v1}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 161
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    .line 164
    add-int/lit8 v2, v20, -0x1

    if-ge v15, v2, :cond_2

    .line 165
    add-int/lit8 v15, v15, 0x1

    .line 171
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 172
    sget v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 168
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 180
    .end local v3           #data:[I
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #TransData:[B
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v9           #MaskData:[B
    .end local v11           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v12           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #lastTime:J
    .end local v18           #pc:I
    .end local v19           #ph:I
    .end local v20           #pn:I
    .end local v21           #pw:I
    :catch_0
    move-exception v13

    .line 181
    .local v13, e:Ljava/lang/Exception;
    invoke-static {v13}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectKeAiXing(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/keAi6.mtbk"

    const/16 v1, 0xa

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectLiangHong(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/mtxx_lianghong_001.jpg"

    const-string v1, "effect/liangHong.mtbk"

    const/16 v2, 0x10

    invoke-static {p0, v0, v1, p1, v2}, Lcom/mt/image/ImageEffect;->EffectOne(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectLinJiaTu(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/keAi7.mtbk"

    const/16 v1, 0xb

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectLiuJinSuiYue(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/liuJinSuiYue.mtbk"

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectNuanYangYang(Ljava/util/List;Landroid/content/Context;)Z
    .locals 23
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v9, 0x0

    .line 190
    .local v9, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 191
    .local v15, lastTime:J
    const/4 v2, 0x0

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 193
    .local v6, width:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 197
    .local v7, height:I
    const-string v2, "effect/blowout2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    .line 196
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 198
    .local v10, bmpMask1:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v10, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 199
    invoke-static {v10}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 200
    .local v4, dataMask1:[I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    const/4 v10, 0x0

    .line 204
    const-string v2, "effect/vignette640.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    .line 203
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 205
    .local v11, bmpMask2:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-static {v11, v6, v7, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 206
    invoke-static {v11}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v5

    .line 207
    .local v5, dataMask2:[I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v11, 0x0

    .line 210
    const-string v2, "effect/nuanYangYang.mtbk"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v8

    .line 211
    .local v8, MaskData:[B
    const/16 v17, 0x21

    .line 212
    .local v17, pc:I
    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v19

    .line 213
    .local v19, pn:I
    add-int/lit8 v17, v17, 0x4

    .line 214
    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v20

    .line 215
    .local v20, pw:I
    add-int/lit8 v17, v17, 0x4

    .line 216
    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v18

    .line 217
    .local v18, ph:I
    const/4 v14, 0x0

    .line 218
    .local v14, j:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v13, v2, :cond_0

    .line 237
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v15, v21, v15

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v21, "StyleBrightRed time="

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 245
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #MaskData:[B
    .end local v10           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v11           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #lastTime:J
    .end local v17           #pc:I
    .end local v18           #ph:I
    .end local v19           #pn:I
    .end local v20           #pw:I
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 219
    .restart local v4       #dataMask1:[I
    .restart local v5       #dataMask2:[I
    .restart local v6       #width:I
    .restart local v7       #height:I
    .restart local v8       #MaskData:[B
    .restart local v10       #bmpMask1:Landroid/graphics/Bitmap;
    .restart local v11       #bmpMask2:Landroid/graphics/Bitmap;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #lastTime:J
    .restart local v17       #pc:I
    .restart local v18       #ph:I
    .restart local v19       #pn:I
    .restart local v20       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 220
    .local v3, data:[I
    sget-object v2, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v2 .. v7}, Lcom/image/gif/JNI;->EffectNuanYangYang([I[I[III)V

    .line 222
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v3, v8, v14, v0, v1}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 223
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 226
    add-int/lit8 v2, v19, -0x1

    if-ge v14, v2, :cond_2

    .line 227
    add-int/lit8 v14, v14, 0x1

    .line 233
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 234
    sget v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 230
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 242
    .end local v3           #data:[I
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #MaskData:[B
    .end local v10           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v11           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #lastTime:J
    .end local v17           #pc:I
    .end local v18           #ph:I
    .end local v19           #pn:I
    .end local v20           #pw:I
    :catch_0
    move-exception v12

    .line 243
    .local v12, e:Ljava/lang/Exception;
    invoke-static {v12}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static EffectOne(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 17
    .parameter
    .parameter "pathMask"
    .parameter "path"
    .parameter "context"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :try_start_0
    const-string v1, "TEMP"

    const-string v6, "________________EffectOne1"

    invoke-static {v1, v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 475
    .local v4, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 476
    .local v5, height:I
    const/4 v1, 0x0

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 477
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 479
    .local v8, bmpMask1:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-static {v8, v4, v5, v1}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 480
    invoke-static {v8}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 481
    .local v3, dataMask1:[I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    const/4 v8, 0x0

    .line 483
    const-string v1, "TEMP"

    const-string v6, "________________EffectOne2"

    invoke-static {v1, v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static/range {p2 .. p3}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v7

    .line 486
    .local v7, MaskData:[B
    const/16 v12, 0x21

    .line 487
    .local v12, pc:I
    invoke-static {v7, v12}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v14

    .line 488
    .local v14, pn:I
    add-int/lit8 v12, v12, 0x4

    .line 489
    invoke-static {v7, v12}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 490
    .local v15, pw:I
    add-int/lit8 v12, v12, 0x4

    .line 491
    invoke-static {v7, v12}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 492
    .local v13, ph:I
    const/4 v11, 0x0

    .line 493
    .local v11, j:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_0

    .line 513
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 518
    .end local v3           #dataMask1:[I
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #MaskData:[B
    .end local v8           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #pc:I
    .end local v13           #ph:I
    .end local v14           #pn:I
    .end local v15           #pw:I
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 494
    .restart local v3       #dataMask1:[I
    .restart local v4       #width:I
    .restart local v5       #height:I
    .restart local v7       #MaskData:[B
    .restart local v8       #bmpMask1:Landroid/graphics/Bitmap;
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #pc:I
    .restart local v13       #ph:I
    .restart local v14       #pn:I
    .restart local v15       #pw:I
    :cond_0
    const-string v1, "TEMP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v16, "________________EffectOne"

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, " kind="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 496
    .local v2, data:[I
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 498
    invoke-static {v2, v7, v11, v15, v13}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 499
    const/4 v1, 0x1

    if-eq v14, v1, :cond_1

    .line 502
    add-int/lit8 v1, v14, -0x1

    if-ge v11, v1, :cond_2

    .line 503
    add-int/lit8 v11, v11, 0x1

    .line 509
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 510
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 506
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 515
    .end local v2           #data:[I
    .end local v3           #dataMask1:[I
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #MaskData:[B
    .end local v8           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #pc:I
    .end local v13           #ph:I
    .end local v14           #pn:I
    .end local v15           #pw:I
    :catch_0
    move-exception v9

    .line 516
    .local v9, e:Ljava/lang/Exception;
    invoke-static {v9}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static EffectQingLiangYiXia(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/keAi8.mtbk"

    const/16 v1, 0xc

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectRiXi(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/riXi.mtbk"

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectWuYa(Ljava/util/List;Landroid/content/Context;)Z
    .locals 23
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    :try_start_0
    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 867
    .local v15, lastTime:J
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 868
    .local v7, width:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 872
    .local v8, height:I
    const-string v2, "effect/mtxx_lomo5_1.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    .line 871
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 873
    .local v10, bmpMask1:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v10, v7, v8, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 874
    invoke-static {v10}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 875
    .local v4, dataMask1:[I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 876
    const/4 v10, 0x0

    .line 879
    const-string v2, "effect/mtxx_lomo5_2.jpg"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    .line 878
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/image/ImageProcess;->LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 880
    .local v11, bmpMask2:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v11, v7, v8, v2}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 881
    invoke-static {v11}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v5

    .line 882
    .local v5, dataMask2:[I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 883
    const/4 v11, 0x0

    .line 885
    const-string v2, "effect/effect5.eb"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v6

    .line 887
    .local v6, TransData:[B
    const-string v2, "effect/keAi10.mtbk"

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v9

    .line 888
    .local v9, MaskData:[B
    const/16 v17, 0x21

    .line 889
    .local v17, pc:I
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v19

    .line 890
    .local v19, pn:I
    add-int/lit8 v17, v17, 0x4

    .line 891
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v20

    .line 892
    .local v20, pw:I
    add-int/lit8 v17, v17, 0x4

    .line 893
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v18

    .line 894
    .local v18, ph:I
    const/4 v14, 0x0

    .line 895
    .local v14, j:I
    const-string v2, "TEMP"

    const-string v21, "EffectJiuShiGuang "

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v13, v2, :cond_0

    .line 916
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v15, v21, v15

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v21, "StyleBrightRed time="

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 924
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #TransData:[B
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v9           #MaskData:[B
    .end local v10           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v11           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #lastTime:J
    .end local v17           #pc:I
    .end local v18           #ph:I
    .end local v19           #pn:I
    .end local v20           #pw:I
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 897
    .restart local v4       #dataMask1:[I
    .restart local v5       #dataMask2:[I
    .restart local v6       #TransData:[B
    .restart local v7       #width:I
    .restart local v8       #height:I
    .restart local v9       #MaskData:[B
    .restart local v10       #bmpMask1:Landroid/graphics/Bitmap;
    .restart local v11       #bmpMask2:Landroid/graphics/Bitmap;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #lastTime:J
    .restart local v17       #pc:I
    .restart local v18       #ph:I
    .restart local v19       #pn:I
    .restart local v20       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 898
    .local v3, data:[I
    const-string v2, "TEMP"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "data="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v3

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dataMask1="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v4

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dataMask2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v5

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " TransData="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v6

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " w="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " h="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    sget-object v2, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    invoke-virtual/range {v2 .. v8}, Lcom/image/gif/JNI;->EffectJiuShiGuang([I[I[I[BII)V

    .line 901
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v3, v9, v14, v0, v1}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 902
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 905
    add-int/lit8 v2, v19, -0x1

    if-ge v14, v2, :cond_2

    .line 906
    add-int/lit8 v14, v14, 0x1

    .line 912
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 913
    sget v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 909
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 921
    .end local v3           #data:[I
    .end local v4           #dataMask1:[I
    .end local v5           #dataMask2:[I
    .end local v6           #TransData:[B
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v9           #MaskData:[B
    .end local v10           #bmpMask1:Landroid/graphics/Bitmap;
    .end local v11           #bmpMask2:Landroid/graphics/Bitmap;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #lastTime:J
    .end local v17           #pc:I
    .end local v18           #ph:I
    .end local v19           #pn:I
    .end local v20           #pw:I
    :catch_0
    move-exception v12

    .line 922
    .local v12, e:Ljava/lang/Exception;
    invoke-static {v12}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public static EffectXingFuBaShi(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/keAi3.mtbk"

    const/4 v1, 0x7

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZeroBus(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectYouLeChang(Ljava/util/List;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "effect/keAi2.mtbk"

    const/4 v1, 0x6

    invoke-static {p0, v0, p1, v1}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static EffectZero(Ljava/util/List;I)Z
    .locals 8
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 372
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 373
    .local v3, width:I
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 374
    .local v4, height:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 383
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 388
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v7           #i:I
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 375
    .restart local v3       #width:I
    .restart local v4       #height:I
    .restart local v7       #i:I
    :cond_0
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    .line 376
    .local v1, data:[I
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v2, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 378
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 379
    const/4 v1, 0x0

    check-cast v1, [I

    .line 380
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 381
    sget v0, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 385
    .end local v1           #data:[I
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 386
    .local v6, e:Ljava/lang/Exception;
    invoke-static {v6}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static EffectZero(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 20
    .parameter
    .parameter "path"
    .parameter "context"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v8, 0x0

    .line 307
    .local v8, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v1, "MP"

    const-string v3, "___________________EffectZero"

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "MP"

    const-string v3, "EffectZero"

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 310
    .local v12, lastTime:J
    const/4 v1, 0x0

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 311
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 312
    .local v4, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 314
    .local v5, height:I
    const-string v1, "MP"

    const-string v3, "EffectZero1"

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "MP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "path="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static/range {p1 .. p2}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v7

    .line 317
    .local v7, MaskData:[B
    const-string v1, "MP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "len="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/16 v14, 0x21

    .line 323
    .local v14, pc:I
    invoke-static {v7, v14}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v16

    .line 324
    .local v16, pn:I
    add-int/lit8 v14, v14, 0x4

    .line 325
    invoke-static {v7, v14}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v17

    .line 326
    .local v17, pw:I
    add-int/lit8 v14, v14, 0x4

    .line 327
    invoke-static {v7, v14}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v15

    .line 328
    .local v15, ph:I
    const/4 v11, 0x0

    .line 329
    .local v11, j:I
    const-string v1, "MP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "  pn="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " pw="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ph="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "MP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "EffectZero2 num="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_0

    .line 356
    const/4 v7, 0x0

    check-cast v7, [B

    .line 357
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v12, v18, v12

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "StyleBrightRed time="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 365
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #MaskData:[B
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #lastTime:J
    .end local v14           #pc:I
    .end local v15           #ph:I
    .end local v16           #pn:I
    .end local v17           #pw:I
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 333
    .restart local v4       #width:I
    .restart local v5       #height:I
    .restart local v7       #MaskData:[B
    .restart local v10       #i:I
    .restart local v11       #j:I
    .restart local v12       #lastTime:J
    .restart local v14       #pc:I
    .restart local v15       #ph:I
    .restart local v16       #pn:I
    .restart local v17       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 334
    .local v2, data:[I
    sget-object v1, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v3, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 337
    move/from16 v0, v17

    invoke-static {v2, v7, v11, v0, v15}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 340
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_1

    .line 343
    add-int/lit8 v1, v16, -0x1

    if-ge v11, v1, :cond_2

    .line 344
    add-int/lit8 v11, v11, 0x1

    .line 350
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 351
    const/4 v2, 0x0

    check-cast v2, [I

    .line 352
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 353
    sget v1, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mt/image/ImageEffect;->mCurIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 347
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 362
    .end local v2           #data:[I
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v7           #MaskData:[B
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #lastTime:J
    .end local v14           #pc:I
    .end local v15           #ph:I
    .end local v16           #pn:I
    .end local v17           #pw:I
    :catch_0
    move-exception v9

    .line 363
    .local v9, e:Ljava/lang/Exception;
    invoke-static {v9}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static EffectZeroBus(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 22
    .parameter
    .parameter "path"
    .parameter "context"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x0

    .line 402
    .local v10, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v2, "MP"

    const-string v4, "___________________EffectZero"

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "MP"

    const-string v4, "EffectZero"

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 405
    .local v14, lastTime:J
    const/4 v2, 0x0

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 407
    .local v5, width:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 409
    .local v6, height:I
    const-string v2, "MP"

    const-string v4, "EffectZero1"

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "MP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "path="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v2, "effect/keAi3-1.mtbk"

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v8

    .line 412
    .local v8, MaskData:[B
    const-string v2, "effect/keAi3-2.mtbk"

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v9

    .line 413
    .local v9, MaskData2:[B
    const-string v2, "MP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "len="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v16, 0x21

    .line 419
    .local v16, pc:I
    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v18

    .line 420
    .local v18, pn:I
    add-int/lit8 v16, v16, 0x4

    .line 421
    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v19

    .line 422
    .local v19, pw:I
    add-int/lit8 v16, v16, 0x4

    .line 423
    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v17

    .line 424
    .local v17, ph:I
    const/4 v13, 0x0

    .line 425
    .local v13, j:I
    const-string v2, "MP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "  pn="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " pw="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ph="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v2, "MP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "EffectZero2 num="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v12, v2, :cond_0

    .line 457
    const/4 v8, 0x0

    check-cast v8, [B

    .line 458
    const/4 v9, 0x0

    check-cast v9, [B

    .line 459
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v14, v20, v14

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "StyleBrightRed time="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 467
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v8           #MaskData:[B
    .end local v9           #MaskData2:[B
    .end local v12           #i:I
    .end local v13           #j:I
    .end local v14           #lastTime:J
    .end local v16           #pc:I
    .end local v17           #ph:I
    .end local v18           #pn:I
    .end local v19           #pw:I
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 429
    .restart local v5       #width:I
    .restart local v6       #height:I
    .restart local v8       #MaskData:[B
    .restart local v9       #MaskData2:[B
    .restart local v12       #i:I
    .restart local v13       #j:I
    .restart local v14       #lastTime:J
    .restart local v16       #pc:I
    .restart local v17       #ph:I
    .restart local v18       #pn:I
    .restart local v19       #pw:I
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 430
    .local v3, data:[I
    sget-object v2, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    const/4 v4, 0x0

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/image/gif/JNI;->EffectProcess([I[IIII)V

    .line 433
    const/4 v2, 0x4

    if-ge v13, v2, :cond_2

    .line 434
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v3, v8, v13, v0, v1}, Lcom/mt/image/ImageEffect;->ProcessFrame([I[BIII)Z

    .line 441
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    .line 444
    add-int/lit8 v2, v18, -0x1

    if-ge v13, v2, :cond_3

    .line 445
    add-int/lit8 v13, v13, 0x1

    .line 451
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 452
    const/4 v3, 0x0

    check-cast v3, [I

    .line 453
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 454
    sget v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mt/image/ImageEffect;->mCurIndex:I

    .line 427
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 437
    :cond_2
    add-int/lit8 v2, v13, -0x4

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v3, v9, v2, v0, v1}, Lcom/mt/image/ImageEffect;->ProcessFrameMid([I[BIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 464
    .end local v3           #data:[I
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v8           #MaskData:[B
    .end local v9           #MaskData2:[B
    .end local v12           #i:I
    .end local v13           #j:I
    .end local v14           #lastTime:J
    .end local v16           #pc:I
    .end local v17           #ph:I
    .end local v18           #pn:I
    .end local v19           #pw:I
    :catch_0
    move-exception v11

    .line 465
    .local v11, e:Ljava/lang/Exception;
    invoke-static {v11}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 448
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #data:[I
    .restart local v5       #width:I
    .restart local v6       #height:I
    .restart local v8       #MaskData:[B
    .restart local v9       #MaskData2:[B
    .restart local v12       #i:I
    .restart local v13       #j:I
    .restart local v14       #lastTime:J
    .restart local v16       #pc:I
    .restart local v17       #ph:I
    .restart local v18       #pn:I
    .restart local v19       #pw:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public static FangDaJing(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/16 v0, 0x15

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static GenerateEffect(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    .line 590
    const-string v10, "effect/riXi.mtbk"

    invoke-static {v10, p0}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    .line 591
    .local v0, TransData:[B
    const-string v10, "TEMP"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "______________ProcessEffect len="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/16 v6, 0x21

    .line 593
    .local v6, pc:I
    invoke-static {v0, v6}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v8

    .line 594
    .local v8, pn:I
    add-int/lit8 v6, v6, 0x4

    .line 595
    invoke-static {v0, v6}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v9

    .line 596
    .local v9, pw:I
    add-int/lit8 v6, v6, 0x4

    .line 597
    invoke-static {v0, v6}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v7

    .line 598
    .local v7, ph:I
    add-int/lit8 v6, v6, 0x4

    .line 599
    add-int/lit8 v6, v6, 0x8

    .line 601
    mul-int v10, v9, v7

    mul-int/lit8 v5, v10, 0x4

    .line 602
    .local v5, num:I
    new-array v2, v5, [B

    .line 603
    .local v2, data:[B
    const/4 v10, 0x0

    invoke-static {v0, v6, v2, v10, v5}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 604
    mul-int v5, v9, v7

    .line 605
    new-array v3, v5, [I

    .line 606
    .local v3, dataDst:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 609
    invoke-static {v3, v2, v9, v7}, Lcom/mt/image/ImageGif;->AddFrame([I[BII)Z

    .line 610
    invoke-static {v3, v9, v7}, Lcom/mt/image/ImageProcess;->intARGB2Bimap([III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 611
    .local v1, bmp:Landroid/graphics/Bitmap;
    const-string v10, "/sdcard/TEST/effectG.png"

    const/4 v11, 0x2

    invoke-static {v10, v1, v11}, Lcom/mt/image/ImageProcess;->savePic(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 629
    const/4 v10, 0x1

    return v10

    .line 607
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v10, -0x1

    aput v10, v3, v4

    .line 606
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static JiYa(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static MoSha(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/16 v0, 0x17

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static ProcessEffect(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 17
    .parameter
    .parameter "path"
    .parameter "context"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, mBitmapList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/mt/mtgif/MyPro;->getBytesFromAssets(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v1

    .line 685
    .local v1, TransData:[B
    const-string v14, "TEMP"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "______________ProcessEffect len="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/16 v10, 0x21

    .line 687
    .local v10, pc:I
    invoke-static {v1, v10}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v12

    .line 688
    .local v12, pn:I
    add-int/lit8 v10, v10, 0x4

    .line 689
    invoke-static {v1, v10}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v13

    .line 690
    .local v13, pw:I
    add-int/lit8 v10, v10, 0x4

    .line 691
    invoke-static {v1, v10}, Lcom/mt/mtgif/MyPro;->getIntData([BI)I

    move-result v11

    .line 692
    .local v11, ph:I
    add-int/lit8 v10, v10, 0x4

    .line 693
    add-int/lit8 v10, v10, 0x8

    .line 695
    const-string v14, "TEMP"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "pn="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pw="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ph="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pc="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hh="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v1, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    mul-int v14, v13, v11

    mul-int/lit8 v9, v14, 0x4

    .line 698
    .local v9, num:I
    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_4

    .line 699
    new-array v5, v9, [B

    .line 700
    .local v5, data:[B
    const/4 v14, 0x0

    invoke-static {v1, v10, v5, v14, v9}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 701
    const-string v14, "TEMP"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "data="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-byte v16, v5, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {v5, v13, v11}, Lcom/mt/image/ImageProcess;->bytesARGB2BimapNew([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 703
    .local v3, bmpItem:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 704
    const-string v14, "TEMP"

    const-string v15, "________bmpItem is null"

    invoke-static {v14, v15}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v14, 0x0

    .line 751
    .end local v1           #TransData:[B
    .end local v3           #bmpItem:Landroid/graphics/Bitmap;
    .end local v5           #data:[B
    .end local v9           #num:I
    .end local v10           #pc:I
    .end local v11           #ph:I
    .end local v12           #pn:I
    .end local v13           #pw:I
    :goto_0
    return v14

    .line 708
    .restart local v1       #TransData:[B
    .restart local v3       #bmpItem:Landroid/graphics/Bitmap;
    .restart local v5       #data:[B
    .restart local v9       #num:I
    .restart local v10       #pc:I
    .restart local v11       #ph:I
    .restart local v12       #pn:I
    .restart local v13       #pw:I
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 709
    .local v2, bmp:Landroid/graphics/Bitmap;
    const-string v14, "TEMP"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "________bmp w="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " h="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-eq v13, v14, :cond_1

    .line 711
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-eq v11, v14, :cond_1

    .line 712
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v3, v14, v15, v0}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 714
    :cond_1
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-lt v8, v14, :cond_3

    .line 720
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 751
    .end local v1           #TransData:[B
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpItem:Landroid/graphics/Bitmap;
    .end local v5           #data:[B
    .end local v8           #j:I
    .end local v9           #num:I
    .end local v10           #pc:I
    .end local v11           #ph:I
    .end local v12           #pn:I
    .end local v13           #pw:I
    :cond_2
    :goto_2
    const/4 v14, 0x1

    goto :goto_0

    .line 715
    .restart local v1       #TransData:[B
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #bmpItem:Landroid/graphics/Bitmap;
    .restart local v5       #data:[B
    .restart local v8       #j:I
    .restart local v9       #num:I
    .restart local v10       #pc:I
    .restart local v11       #ph:I
    .restart local v12       #pn:I
    .restart local v13       #pw:I
    :cond_3
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bmp:Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 716
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 718
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v3, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 714
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 723
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpItem:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #data:[B
    .end local v8           #j:I
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #j:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 724
    new-array v5, v9, [B

    .line 725
    .restart local v5       #data:[B
    const/4 v14, 0x0

    invoke-static {v1, v10, v5, v14, v9}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 726
    const-string v14, "TEMP"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "data="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-byte v16, v5, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {v5, v13, v11}, Lcom/mt/image/ImageProcess;->bytesARGB2BimapNew([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 728
    .restart local v3       #bmpItem:Landroid/graphics/Bitmap;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/sdcard/TEST/effect"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v3, v15}, Lcom/mt/image/ImageProcess;->savePic(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 729
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 734
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v3, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 737
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    add-int/lit8 v10, v10, 0xc

    .line 740
    add-int/lit8 v7, v7, 0x1

    .line 742
    if-ne v7, v12, :cond_5

    .line 743
    const/4 v7, 0x0

    .line 744
    const/16 v10, 0x31

    .line 723
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 748
    .end local v1           #TransData:[B
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #bmpItem:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #data:[B
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #num:I
    .end local v10           #pc:I
    .end local v11           #ph:I
    .end local v12           #pn:I
    .end local v13           #pw:I
    :catch_0
    move-exception v6

    .line 749
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public static ProcessFrame([I[BIII)Z
    .locals 5
    .parameter "data"
    .parameter "mask"
    .parameter "id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 641
    mul-int v4, p3, p4

    mul-int/lit8 v2, v4, 0x4

    .line 642
    .local v2, num:I
    mul-int v4, p3, p4

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xc

    mul-int/2addr v4, p2

    add-int/lit8 v3, v4, 0x35

    .line 643
    .local v3, pc:I
    :try_start_0
    new-array v0, v2, [B

    .line 644
    .local v0, dataMask:[B
    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 645
    invoke-static {p0, v0, p3, p4}, Lcom/mt/image/ImageGif;->AddFrame([I[BII)Z

    .line 646
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0           #dataMask:[B
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ProcessFrameMid([I[BIII)Z
    .locals 5
    .parameter "data"
    .parameter "mask"
    .parameter "id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 662
    mul-int v4, p3, p4

    mul-int/lit8 v2, v4, 0x4

    .line 663
    .local v2, num:I
    mul-int v4, p3, p4

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xc

    mul-int v3, p2, v4

    .line 664
    .local v3, pc:I
    :try_start_0
    new-array v0, v2, [B

    .line 665
    .local v0, dataMask:[B
    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Lcom/mt/mtgif/MyPro;->arraycopy([BI[BII)I

    .line 666
    invoke-static {p0, v0, p3, p4}, Lcom/mt/image/ImageGif;->AddFrame([I[BII)Z

    .line 667
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .end local v0           #dataMask:[B
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ShuangMianJing(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 929
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static ShuiBoWen(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 937
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/mt/image/ImageEffect;->EffectZero(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static TVWall(Ljava/util/List;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, bmpList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 949
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 959
    const/4 v5, 0x1

    return v5

    .line 950
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const/high16 v6, 0x3f00

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/mt/image/ImageProcess;->scale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 951
    .local v0, bmpT:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 952
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 953
    .local v4, w:I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 954
    .local v2, h:I
    invoke-virtual {v1, v0, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 955
    int-to-float v5, v4

    invoke-virtual {v1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 956
    int-to-float v5, v2

    invoke-virtual {v1, v0, v8, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 957
    int-to-float v5, v4

    int-to-float v6, v2

    invoke-virtual {v1, v0, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 949
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static decodeYUV420SPMid([BIII)[I
    .locals 8
    .parameter "yuv420sp"
    .parameter "width"
    .parameter "height"
    .parameter "dy"

    .prologue
    .line 765
    const-string v0, "TEMP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decodeYUV420SPMid w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    if-le p1, p2, :cond_0

    .line 767
    move v2, p2

    .line 768
    .local v2, dw:I
    mul-int v0, p2, p2

    new-array v1, v0, [I

    .line 774
    .local v1, rgbBuf:[I
    :goto_0
    sget-object v0, Lcom/mt/image/ImageEffect;->jni:Lcom/image/gif/JNI;

    move v3, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/image/gif/JNI;->DecodeYUV420SPMid([III[BIII)V

    .line 776
    return-object v1

    .line 770
    .end local v1           #rgbBuf:[I
    .end local v2           #dw:I
    :cond_0
    move v2, p1

    .line 771
    .restart local v2       #dw:I
    mul-int v0, p1, p1

    new-array v1, v0, [I

    .restart local v1       #rgbBuf:[I
    goto :goto_0
.end method
