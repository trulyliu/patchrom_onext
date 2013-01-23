.class public Lcom/mt/image/ImageProcess;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# static fields
.field private static DELTA_INDEX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x65

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    .line 31
    return-void

    .line 32
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x23t 0x3ct
        0xat 0xd7t 0xa3t 0x3ct
        0xat 0xd7t 0x23t 0x3dt
        0xcdt 0xcct 0x4ct 0x3dt
        0x8ft 0xc2t 0x75t 0x3dt
        0x29t 0x5ct 0x8ft 0x3dt
        0xat 0xd7t 0xa3t 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xaet 0x47t 0xe1t 0x3dt
        0x8ft 0xc2t 0xf5t 0x3dt
        0x29t 0x5ct 0xft 0x3et
        0x9at 0x99t 0x19t 0x3et
        0xat 0xd7t 0x23t 0x3et
        0x7bt 0x14t 0x2et 0x3et
        0xect 0x51t 0x38t 0x3et
        0xcdt 0xcct 0x4ct 0x3et
        0x3dt 0xat 0x57t 0x3et
        0xaet 0x47t 0x61t 0x3et
        0x8ft 0xc2t 0x75t 0x3et
        0x0t 0x0t 0x80t 0x3et
        0x71t 0x3dt 0x8at 0x3et
        0x29t 0x5ct 0x8ft 0x3et
        0x9at 0x99t 0x99t 0x3et
        0xat 0xd7t 0xa3t 0x3et
        0x7bt 0x14t 0xaet 0x3et
        0xect 0x51t 0xb8t 0x3et
        0x5ct 0x8ft 0xc2t 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x3dt 0xat 0xd7t 0x3et
        0xaet 0x47t 0xe1t 0x3et
        0x1ft 0x85t 0xebt 0x3et
        0x8ft 0xc2t 0xf5t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x14t 0xaet 0x7t 0x3ft
        0x29t 0x5ct 0xft 0x3ft
        0x3dt 0xat 0x17t 0x3ft
        0x52t 0xb8t 0x1et 0x3ft
        0x66t 0x66t 0x26t 0x3ft
        0x7bt 0x14t 0x2et 0x3ft
        0x8ft 0xc2t 0x35t 0x3ft
        0xa4t 0x70t 0x3dt 0x3ft
        0xb8t 0x1et 0x45t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xe1t 0x7at 0x54t 0x3ft
        0xf6t 0x28t 0x5ct 0x3ft
        0xat 0xd7t 0x63t 0x3ft
        0x1ft 0x85t 0x6bt 0x3ft
        0x33t 0x33t 0x73t 0x3ft
        0x48t 0xe1t 0x7at 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x14t 0xaet 0x87t 0x3ft
        0x29t 0x5ct 0x8ft 0x3ft
        0x3dt 0xat 0x97t 0x3ft
        0x52t 0xb8t 0x9et 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
        0x7bt 0x14t 0xaet 0x3ft
        0x8ft 0xc2t 0xb5t 0x3ft
        0xa4t 0x70t 0xbdt 0x3ft
        0xb8t 0x1et 0xc5t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
        0xe1t 0x7at 0xd4t 0x3ft
        0xf6t 0x28t 0xdct 0x3ft
        0xat 0xd7t 0xe3t 0x3ft
        0x1ft 0x85t 0xebt 0x3ft
        0x33t 0x33t 0xf3t 0x3ft
        0x48t 0xe1t 0xfat 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x14t 0xaet 0x7t 0x40t
        0x0t 0x0t 0x10t 0x40t
        0x14t 0xaet 0x17t 0x40t
        0x0t 0x0t 0x20t 0x40t
        0x14t 0xaet 0x27t 0x40t
        0x0t 0x0t 0x30t 0x40t
        0x14t 0xaet 0x37t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0xcdt 0xcct 0x4ct 0x40t
        0x9at 0x99t 0x59t 0x40t
        0x66t 0x66t 0x66t 0x40t
        0x33t 0x33t 0x73t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x9at 0x99t 0x89t 0x40t
        0x66t 0x66t 0x96t 0x40t
        0xcdt 0xcct 0x9ct 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xb0t 0x40t
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0xd0t 0x40t
        0x9at 0x99t 0xd9t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x9at 0x99t 0xe9t 0x40t
        0x0t 0x0t 0xf0t 0x40t
        0x9at 0x99t 0xf9t 0x40t
        0x0t 0x0t 0x0t 0x41t
        0x66t 0x66t 0x6t 0x41t
        0x33t 0x33t 0xbt 0x41t
        0x0t 0x0t 0x10t 0x41t
        0x66t 0x66t 0x16t 0x41t
        0x9at 0x99t 0x19t 0x41t
        0xcdt 0xcct 0x1ct 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static Bmp565ToBmp888(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmpSrc"
    .parameter "isNeedRelease"

    .prologue
    .line 1199
    const/4 v0, 0x0

    .line 1201
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_0

    .line 1202
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 1212
    .end local p0
    :cond_0
    return-object p0

    .line 1208
    .restart local p0
    :catch_0
    move-exception v1

    .line 1209
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FittingWindow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1210
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmp"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    .line 1046
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1047
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1048
    .local v7, h:I
    array-length v0, p1

    mul-int v1, v3, v7

    if-eq v0, v1, :cond_0

    move-object p0, v9

    .line 1063
    .end local v3           #w:I
    .end local v7           #h:I
    .end local p0
    :goto_0
    return-object p0

    .line 1052
    .restart local v3       #w:I
    .restart local v7       #h:I
    .restart local p0
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1053
    if-nez p0, :cond_1

    move-object p0, v9

    .line 1054
    goto :goto_0

    .line 1056
    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    .end local v3           #w:I
    .end local v7           #h:I
    :catch_0
    move-exception v8

    .line 1061
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    move-object p0, v9

    .line 1063
    goto :goto_0
.end method

.method public static ChangeBitmapDataPart(Landroid/graphics/Bitmap;[IIIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmp"
    .parameter "data"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v9, 0x0

    .line 1071
    :try_start_0
    array-length v0, p1

    mul-int v1, p4, p5

    if-eq v0, v1, :cond_0

    move-object p0, v9

    .line 1086
    .end local p0
    :goto_0
    return-object p0

    .line 1075
    .restart local p0
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1076
    if-nez p0, :cond_1

    move-object p0, v9

    .line 1077
    goto :goto_0

    .line 1079
    :cond_1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v8

    .line 1084
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    move-object p0, v9

    .line 1086
    goto :goto_0
.end method

.method public static Clone(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmp"

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 767
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 769
    :catch_0
    move-exception v1

    .line 770
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "isNeedRelease"

    .prologue
    const/high16 v10, 0x447a

    .line 1260
    const/4 v0, 0x0

    .line 1264
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1265
    .local v7, srcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1266
    .local v6, srcH:I
    mul-int v8, v7, p2

    mul-int v9, v6, p1

    if-le v8, v9, :cond_2

    .line 1267
    move v2, p1

    .line 1268
    .local v2, dstW:I
    mul-int v8, v6, p1

    div-int v1, v8, v7

    .line 1269
    .local v1, dstH:I
    int-to-float v8, v2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 1270
    .local v5, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1290
    :goto_0
    mul-float v8, v5, v10

    float-to-int v8, v8

    int-to-float v8, v8

    div-float v5, v8, v10

    .line 1291
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1292
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1294
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1295
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "srcW="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " srcH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1296
    if-nez p0, :cond_3

    .line 1297
    const-string v8, "2aMTXX src == null"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1302
    :cond_0
    :goto_1
    if-ne v7, v2, :cond_5

    if-ne v6, v1, :cond_5

    .line 1303
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1304
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1309
    :goto_2
    const-string v8, "FittingWindow copy"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1335
    :goto_3
    if-eqz p3, :cond_1

    .line 1336
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1337
    const/4 p0, 0x0

    .line 1344
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :cond_1
    :goto_4
    return-object v0

    .line 1272
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_2
    move v1, p2

    .line 1273
    .restart local v1       #dstH:I
    mul-int v8, v7, p2

    div-int v2, v8, v6

    .line 1274
    .restart local v2       #dstW:I
    int-to-float v8, v1

    int-to-float v9, v6

    div-float v5, v8, v9

    .line 1275
    .restart local v5       #scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1340
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :catch_0
    move-exception v3

    .line 1341
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FittingWindow "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1342
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_4

    .line 1299
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dstH:I
    .restart local v2       #dstW:I
    .restart local v4       #matrix:Landroid/graphics/Matrix;
    .restart local v5       #scale:F
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1300
    const-string v8, "3aMTXX src.isRecycled()"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    goto :goto_1

    .line 1306
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 1312
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p0, v2, v1, v8}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public static FittingWindow(Landroid/graphics/Bitmap;II[FZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "scaleAfter"
    .parameter "isNeedRelease"

    .prologue
    .line 1517
    const/4 v0, 0x0

    .line 1521
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1522
    .local v7, srcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1523
    .local v6, srcH:I
    mul-int v8, v7, p2

    mul-int v9, v6, p1

    if-le v8, v9, :cond_2

    .line 1524
    move v2, p1

    .line 1525
    .local v2, dstW:I
    mul-int v8, v6, p1

    div-int v1, v8, v7

    .line 1526
    .local v1, dstH:I
    int-to-float v8, v2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 1527
    .local v5, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1548
    :goto_0
    const/4 v8, 0x0

    aput v5, p3, v8

    .line 1549
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1550
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1552
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1553
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "srcW="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " srcH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1554
    if-nez p0, :cond_3

    .line 1555
    const-string v8, "2aMTXX src == null"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1560
    :cond_0
    :goto_1
    if-ne v7, v2, :cond_4

    if-ne v6, v1, :cond_4

    .line 1561
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1562
    const-string v8, "FittingWindow copy"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1588
    :goto_2
    if-eqz p4, :cond_1

    .line 1589
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1590
    const/4 p0, 0x0

    .line 1597
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :cond_1
    :goto_3
    return-object v0

    .line 1529
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_2
    move v1, p2

    .line 1530
    .restart local v1       #dstH:I
    mul-int v8, v7, p2

    div-int v2, v8, v6

    .line 1531
    .restart local v2       #dstW:I
    int-to-float v8, v1

    int-to-float v9, v6

    div-float v5, v8, v9

    .line 1532
    .restart local v5       #scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1593
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :catch_0
    move-exception v3

    .line 1594
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FittingWindow "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1595
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1557
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dstH:I
    .restart local v2       #dstW:I
    .restart local v4       #matrix:Landroid/graphics/Matrix;
    .restart local v5       #scale:F
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1558
    const-string v8, "3aMTXX src.isRecycled()"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    goto :goto_1

    .line 1565
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p0, v2, v1, v8}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method public static FittingWindow888(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "isNeedRelease"

    .prologue
    .line 1604
    const/4 v0, 0x0

    .line 1608
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1609
    .local v7, srcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1610
    .local v6, srcH:I
    mul-int v8, v7, p2

    mul-int v9, v6, p1

    if-le v8, v9, :cond_2

    .line 1611
    move v2, p1

    .line 1612
    .local v2, dstW:I
    mul-int v8, v6, p1

    div-int v1, v8, v7

    .line 1613
    .local v1, dstH:I
    int-to-float v8, v2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 1614
    .local v5, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1635
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1636
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1638
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1639
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "srcW="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " srcH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1640
    if-nez p0, :cond_3

    .line 1641
    const-string v8, "2aMTXX src == null"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1646
    :cond_0
    :goto_1
    const/high16 v8, 0x3f80

    cmpl-float v8, v5, v8

    if-nez v8, :cond_4

    .line 1647
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1648
    const-string v8, "FittingWindow copy"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1654
    :goto_2
    if-eqz p3, :cond_1

    .line 1655
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1656
    const/4 p0, 0x0

    .line 1663
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :cond_1
    :goto_3
    return-object v0

    .line 1616
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_2
    move v1, p2

    .line 1617
    .restart local v1       #dstH:I
    mul-int v8, v7, p2

    div-int v2, v8, v6

    .line 1618
    .restart local v2       #dstW:I
    int-to-float v8, v1

    int-to-float v9, v6

    div-float v5, v8, v9

    .line 1619
    .restart local v5       #scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1659
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :catch_0
    move-exception v3

    .line 1660
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FittingWindow "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1661
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1643
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dstH:I
    .restart local v2       #dstW:I
    .restart local v4       #matrix:Landroid/graphics/Matrix;
    .restart local v5       #scale:F
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1644
    const-string v8, "3aMTXX src.isRecycled()"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    goto :goto_1

    .line 1651
    :cond_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v1, v8}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method public static FittingWindowFull(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "isNeedRelease"

    .prologue
    .line 1670
    const/4 v0, 0x0

    .line 1674
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1675
    .local v7, srcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1676
    .local v6, srcH:I
    mul-int v8, v7, p2

    mul-int v9, v6, p1

    if-ge v8, v9, :cond_1

    .line 1677
    move v2, p1

    .line 1678
    .local v2, dstW:I
    mul-int v8, v6, p1

    div-int v1, v8, v7

    .line 1679
    .local v1, dstH:I
    int-to-float v8, v2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 1680
    .local v5, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1688
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1690
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1691
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "srcW="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " srcH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1693
    const/high16 v8, 0x3f80

    cmpl-float v8, v5, v8

    if-nez v8, :cond_2

    .line 1694
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1695
    const-string v8, "FittingWindow copy"

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1700
    :goto_1
    if-eqz p3, :cond_0

    .line 1701
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1702
    const/4 p0, 0x0

    .line 1709
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :cond_0
    :goto_2
    return-object v0

    .line 1682
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_1
    move v1, p2

    .line 1683
    .restart local v1       #dstH:I
    mul-int v8, v7, p2

    div-int v2, v8, v6

    .line 1684
    .restart local v2       #dstW:I
    int-to-float v8, v1

    int-to-float v9, v6

    div-float v5, v8, v9

    .line 1685
    .restart local v5       #scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1705
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v5           #scale:F
    .end local v6           #srcH:I
    .end local v7           #srcW:I
    :catch_0
    move-exception v3

    .line 1706
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FittingWindow "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1707
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 1698
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dstH:I
    .restart local v2       #dstW:I
    .restart local v4       #matrix:Landroid/graphics/Matrix;
    .restart local v5       #scale:F
    .restart local v6       #srcH:I
    .restart local v7       #srcW:I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p0, v2, v1, v8}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static FittingWindowFullSize(IIII)F
    .locals 6
    .parameter "srcW"
    .parameter "srcH"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1715
    const/high16 v3, 0x3f80

    .line 1719
    .local v3, scale:F
    mul-int v4, p0, p3

    mul-int v5, p1, p2

    if-ge v4, v5, :cond_0

    .line 1720
    move v1, p2

    .line 1721
    .local v1, dstW:I
    mul-int v4, p1, p2

    :try_start_0
    div-int v0, v4, p0

    .line 1722
    .local v0, dstH:I
    int-to-float v4, v1

    int-to-float v5, p0

    div-float v3, v4, v5

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scale="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1731
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "srcW="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srcH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1738
    .end local v0           #dstH:I
    .end local v1           #dstW:I
    :goto_1
    return v3

    .line 1725
    :cond_0
    move v0, p3

    .line 1726
    .restart local v0       #dstH:I
    mul-int v4, p0, p3

    div-int v1, v4, p1

    .line 1727
    .restart local v1       #dstW:I
    int-to-float v4, v0

    int-to-float v5, p1

    div-float v3, v4, v5

    .line 1728
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scale="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1734
    .end local v0           #dstH:I
    .end local v1           #dstW:I
    :catch_0
    move-exception v2

    .line 1735
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FittingWindow "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1736
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static FittingWindowSave(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "isNeedRelease"

    .prologue
    .line 1864
    const/4 v0, 0x0

    .line 1866
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FittingWindowSave w="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " srcW="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " srcH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1867
    const/high16 v4, 0x3f80

    .line 1870
    .local v4, scale:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v7, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gt v7, p2, :cond_0

    .line 1909
    .end local v4           #scale:F
    .end local p0
    :goto_0
    return-object p0

    .line 1873
    .restart local v4       #scale:F
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1874
    .local v6, srcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1875
    .local v5, srcH:I
    mul-int v7, v6, p2

    mul-int v8, v5, p1

    if-le v7, v8, :cond_2

    .line 1876
    move v2, p1

    .line 1877
    .local v2, dstW:I
    mul-int v7, v5, p1

    div-int v1, v7, v6

    .line 1878
    .local v1, dstH:I
    int-to-float v7, v2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 1890
    :goto_1
    if-ne v6, v2, :cond_3

    if-ne v5, v1, :cond_3

    .line 1891
    sget-object v7, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1892
    const-string v7, "FittingWindowSave copy"

    invoke-static {v7}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1898
    :goto_2
    if-eqz p3, :cond_1

    .line 1899
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1900
    const/4 p0, 0x0

    .line 1902
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "w="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1903
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1902
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v4           #scale:F
    .end local v5           #srcH:I
    .end local v6           #srcW:I
    :goto_3
    move-object p0, v0

    .line 1909
    goto :goto_0

    .line 1880
    .restart local v4       #scale:F
    .restart local v5       #srcH:I
    .restart local v6       #srcW:I
    :cond_2
    move v1, p2

    .line 1881
    .restart local v1       #dstH:I
    mul-int v7, v6, p2

    div-int v2, v7, v5

    .line 1882
    .restart local v2       #dstW:I
    int-to-float v7, v1

    int-to-float v8, v5

    div-float v4, v7, v8

    goto :goto_1

    .line 1895
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {p0, v2, v1, v7}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 1906
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    .end local v4           #scale:F
    .end local v5           #srcH:I
    .end local v6           #srcW:I
    :catch_0
    move-exception v3

    .line 1907
    .local v3, e:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static FittingWindowSize(IIII[F)Z
    .locals 5
    .parameter "srcW"
    .parameter "srcH"
    .parameter "dstW"
    .parameter "dstH"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 1496
    mul-int v1, p0, p3

    mul-int v2, p1, p2

    if-le v1, v2, :cond_0

    .line 1497
    const/4 v1, 0x0

    int-to-float v2, p2

    :try_start_0
    aput v2, p4, v1

    .line 1498
    const/4 v1, 0x1

    mul-int v2, p1, p2

    div-int/2addr v2, p0

    int-to-float v2, v2

    aput v2, p4, v1

    .line 1499
    const/4 v1, 0x2

    int-to-float v2, p2

    int-to-float v3, p0

    div-float/2addr v2, v3

    aput v2, p4, v1

    .line 1511
    :goto_0
    return v4

    .line 1502
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, p4, v1

    .line 1503
    const/4 v1, 0x0

    mul-int v2, p0, p3

    div-int/2addr v2, p1

    int-to-float v2, v2

    aput v2, p4, v1

    .line 1504
    const/4 v1, 0x2

    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    aput v2, p4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1509
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static FittingWindowSquare(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "isNeedRelease"

    .prologue
    .line 1351
    const/4 v1, 0x0

    .line 1355
    .local v1, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1356
    .local v9, srcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1357
    .local v8, srcH:I
    mul-int v10, v9, p2

    mul-int v11, v8, p1

    if-ge v10, v11, :cond_3

    .line 1358
    move v4, p1

    .line 1359
    .local v4, dstW:I
    mul-int v10, v8, p1

    div-int v3, v10, v9

    .line 1360
    .local v3, dstH:I
    int-to-float v10, v4

    int-to-float v11, v9

    div-float v7, v10, v11

    .line 1361
    .local v7, scale:F
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1381
    :goto_0
    const/high16 v10, 0x447a

    mul-float/2addr v10, v7

    float-to-int v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x447a

    div-float v7, v10, v11

    .line 1382
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1383
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1385
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1386
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "srcW="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " srcH="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1387
    if-nez p0, :cond_4

    .line 1388
    const-string v10, "2aMTXX src == null"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1393
    :cond_0
    :goto_1
    if-ne v9, v4, :cond_5

    if-ne v8, v3, :cond_5

    .line 1394
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1395
    const-string v10, "FittingWindow copy"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1400
    :goto_2
    if-eqz p3, :cond_1

    .line 1401
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1402
    const/4 p0, 0x0

    .line 1404
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_6

    .line 1405
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1406
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1407
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1408
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1409
    move-object v1, v0

    .line 1423
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #dstH:I
    .end local v4           #dstW:I
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    .end local v8           #srcH:I
    .end local v9           #srcW:I
    :cond_2
    :goto_3
    return-object v1

    .line 1363
    .restart local v8       #srcH:I
    .restart local v9       #srcW:I
    :cond_3
    move v3, p2

    .line 1364
    .restart local v3       #dstH:I
    mul-int v10, v9, p2

    div-int v4, v10, v8

    .line 1365
    .restart local v4       #dstW:I
    int-to-float v10, v3

    int-to-float v11, v8

    div-float v7, v10, v11

    .line 1366
    .restart local v7       #scale:F
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1419
    .end local v3           #dstH:I
    .end local v4           #dstW:I
    .end local v7           #scale:F
    .end local v8           #srcH:I
    .end local v9           #srcW:I
    :catch_0
    move-exception v5

    .line 1420
    .local v5, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "FittingWindow "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1421
    invoke-static {v5}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1390
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #dstH:I
    .restart local v4       #dstW:I
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v7       #scale:F
    .restart local v8       #srcH:I
    .restart local v9       #srcW:I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1391
    const-string v10, "3aMTXX src.isRecycled()"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1398
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p0, v4, v3, v10}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_2

    .line 1411
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 1412
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1413
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1414
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v2, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1415
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1416
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public static GetFittingSize(IIIIIIIIFF[F)Z
    .locals 9
    .parameter "srcW"
    .parameter "srcH"
    .parameter "curW"
    .parameter "curH"
    .parameter "backW"
    .parameter "backH"
    .parameter "posX"
    .parameter "posY"
    .parameter "scale"
    .parameter "angle"
    .parameter "val"

    .prologue
    .line 1473
    div-int/lit8 v6, p2, 0x2

    add-int v1, p6, v6

    .line 1474
    .local v1, midX:I
    div-int/lit8 v6, p3, 0x2

    add-int v2, p7, v6

    .line 1475
    .local v2, midY:I
    const-string v6, "TC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "___GetFittingSize midX="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " midY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " curW="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " curH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v6, "TC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "___GetFittingSize midX="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " midY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1478
    .local v5, rotateSize:[I
    move/from16 v0, p9

    invoke-static {p0, p1, v0, v5}, Lcom/mt/image/ImageProcess;->GetRotateSize(IIF[I)Z

    .line 1479
    const/4 v6, 0x0

    aget v6, v5, v6

    div-int/lit8 v4, v6, 0x2

    .line 1480
    .local v4, optHalfW:I
    const/4 v6, 0x1

    aget v6, v5, v6

    div-int/lit8 v3, v6, 0x2

    .line 1482
    .local v3, optHalfH:I
    const-string v6, "TC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "optHalfW="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " optHalfH="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mt/tools/MTDebug;->PrintD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/4 v6, 0x0

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float v8, v8, p8

    sub-float/2addr v7, v8

    aput v7, p10, v6

    .line 1485
    const/4 v6, 0x1

    int-to-float v7, v2

    int-to-float v8, v3

    mul-float v8, v8, p8

    sub-float/2addr v7, v8

    aput v7, p10, v6

    .line 1486
    const/4 v6, 0x2

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float v8, v8, p8

    add-float/2addr v7, v8

    aput v7, p10, v6

    .line 1487
    const/4 v6, 0x3

    int-to-float v7, v2

    int-to-float v8, v3

    mul-float v8, v8, p8

    add-float/2addr v7, v8

    aput v7, p10, v6

    .line 1488
    const/4 v6, 0x4

    aput p8, p10, v6

    .line 1489
    const-string v6, "TC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "x="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget v8, p10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, p10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " l="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " b="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mt/tools/MTDebug;->PrintD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const/4 v6, 0x1

    return v6
.end method

.method public static GetRotateSize(IIF[I)Z
    .locals 12
    .parameter "srcW"
    .parameter "srcH"
    .parameter "angle"
    .parameter "dstSize"

    .prologue
    const/high16 v11, 0x4387

    const/high16 v10, 0x4334

    const/high16 v7, 0x42b4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1428
    const-string v4, "TC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_____________________________GetRotateSize srcW="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srcH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_0

    cmpl-float v4, p2, v10

    if-eqz v4, :cond_0

    const/high16 v4, 0x43b4

    cmpl-float v4, p2, v4

    if-nez v4, :cond_2

    .line 1430
    :cond_0
    const-string v4, "________0"

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 1431
    aput p0, p3, v9

    .line 1432
    aput p1, p3, v8

    .line 1466
    :cond_1
    :goto_0
    return v8

    .line 1434
    :cond_2
    cmpl-float v4, p2, v7

    if-eqz v4, :cond_3

    cmpl-float v4, p2, v11

    if-nez v4, :cond_4

    .line 1435
    :cond_3
    aput p1, p3, v9

    .line 1436
    aput p0, p3, v8

    goto :goto_0

    .line 1438
    :cond_4
    cmpg-float v4, p2, v7

    if-ltz v4, :cond_5

    cmpl-float v4, p2, v10

    if-lez v4, :cond_6

    cmpg-float v4, p2, v11

    if-gez v4, :cond_6

    .line 1439
    :cond_5
    float-to-double v4, p2

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    double-to-float p2, v4

    .line 1442
    int-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1443
    .local v1, hs:I
    int-to-double v4, p0

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1445
    .local v2, wc:I
    int-to-double v4, p0

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1446
    .local v3, ws:I
    int-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1448
    .local v0, hc:I
    const-string v4, "TC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hs0="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ws="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    add-int v4, v1, v2

    aput v4, p3, v9

    .line 1450
    add-int v4, v0, v3

    aput v4, p3, v8

    goto/16 :goto_0

    .line 1452
    .end local v0           #hc:I
    .end local v1           #hs:I
    .end local v2           #wc:I
    .end local v3           #ws:I
    :cond_6
    cmpl-float v4, p2, v7

    if-lez v4, :cond_7

    cmpg-float v4, p2, v10

    if-ltz v4, :cond_8

    :cond_7
    cmpl-float v4, p2, v11

    if-lez v4, :cond_1

    const/high16 v4, 0x43b4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 1453
    :cond_8
    float-to-double v4, p2

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    double-to-float p2, v4

    .line 1456
    int-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1457
    .restart local v1       #hs:I
    int-to-double v4, p0

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1459
    .restart local v2       #wc:I
    int-to-double v4, p0

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1460
    .restart local v3       #ws:I
    int-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1461
    .restart local v0       #hc:I
    const-string v4, "TC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hs1="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ws="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    add-int v4, v1, v2

    aput v4, p3, v9

    .line 1463
    add-int v4, v0, v3

    aput v4, p3, v8

    goto/16 :goto_0
.end method

.method public static LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "path"
    .parameter "am"

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 712
    .local v3, lastTime:J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LoadAssertsPic path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 714
    .local v2, is:Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 715
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 716
    sget-object v6, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 717
    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 720
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    .line 723
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LoadAssertsPic time="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #lastTime:J
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 724
    :catch_0
    move-exception v1

    .line 726
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static LoadAssertsPic(Ljava/lang/String;Landroid/content/res/AssetManager;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "path"
    .parameter "am"
    .parameter "isARGB8888"

    .prologue
    .line 3107
    const/4 v0, 0x0

    .line 3109
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3110
    .local v3, lastTime:J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LoadAssertsPic path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 3112
    .local v2, is:Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3113
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3114
    if-eqz p2, :cond_0

    .line 3115
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3120
    :goto_0
    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3123
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    .line 3126
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LoadAssertsPic time="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 3131
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #lastTime:J
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v0

    .line 3118
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #lastTime:J
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3127
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #lastTime:J
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 3129
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static MoveBmpToMiddle(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bmp"
    .parameter "w"
    .parameter "h"
    .parameter "isNeedRelease"

    .prologue
    .line 1172
    const/4 v0, 0x0

    .line 1174
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1175
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1176
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, p1, v6

    div-int/lit8 v2, v6, 0x2

    .line 1177
    .local v2, dx:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, p2, v6

    div-int/lit8 v3, v6, 0x2

    .line 1178
    .local v3, dy:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1179
    .local v5, mPaint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1180
    if-gtz v2, :cond_0

    .line 1181
    const/4 v2, 0x1

    .line 1183
    :cond_0
    if-gtz v3, :cond_1

    .line 1184
    const/4 v3, 0x1

    .line 1186
    :cond_1
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v1, p0, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1187
    if-eqz p3, :cond_2

    .line 1188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    const/4 p0, 0x0

    .line 1195
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v5           #mPaint:Landroid/graphics/Paint;
    :cond_2
    :goto_0
    return-object v0

    .line 1192
    :catch_0
    move-exception v4

    .line 1193
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static OpenPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 55
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static OpenPic(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 62
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 63
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static PreviewBigPic(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 254
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, f:Ljava/io/File;
    :try_start_0
    const-string v10, "PreviewBigPic0"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 258
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    .local v5, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 261
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_0
    :try_start_2
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, width_tmp:I
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 272
    .local v3, height_tmp:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "width_tmp="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 273
    const/4 v8, 0x1

    .line 275
    .local v8, scale:I
    :goto_1
    if-ge v9, p1, :cond_0

    if-ge v3, p2, :cond_0

    .line 276
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic___ scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 283
    const/4 v10, 0x1

    if-le v8, v10, :cond_1

    .line 284
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v6, o2:Landroid/graphics/BitmapFactory$Options;
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 286
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 287
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 288
    iput-object p3, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 291
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #input:Ljava/io/FileInputStream;
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 292
    .restart local v4       #input:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v4, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 294
    .local v0, bmpReturn:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 327
    .end local v0           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v3           #height_tmp:I
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #scale:I
    .end local v9           #width_tmp:I
    :goto_2
    return-object v0

    .line 264
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 322
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 327
    const/4 v0, 0x0

    goto :goto_2

    .line 279
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #height_tmp:I
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #scale:I
    .restart local v9       #width_tmp:I
    :cond_0
    :try_start_5
    div-int/lit8 v9, v9, 0x2

    .line 280
    div-int/lit8 v3, v3, 0x2

    .line 281
    mul-int/lit8 v8, v8, 0x2

    .line 274
    goto :goto_1

    .line 295
    .restart local v0       #bmpReturn:Landroid/graphics/Bitmap;
    .restart local v6       #o2:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v1

    .line 297
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 304
    .end local v0           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic scale=1 ____"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 306
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 307
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 308
    iput-object p3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 309
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    .line 320
    .restart local v0       #bmpReturn:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static PreviewBigPic(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "config"

    .prologue
    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, f:Ljava/io/File;
    :try_start_0
    const-string v10, "PreviewBigPic0"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 171
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    .local v5, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 173
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 174
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :goto_0
    :try_start_2
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, width_tmp:I
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    .local v3, height_tmp:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "width_tmp="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 186
    const/4 v8, 0x1

    .line 191
    .local v8, scale:I
    :goto_1
    const/16 v10, 0x4b0

    if-ge v9, v10, :cond_0

    const/16 v10, 0x4b0

    if-ge v3, v10, :cond_0

    .line 192
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic___ scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 200
    const-string v10, "PreviewBigPic1"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 202
    const/4 v10, 0x1

    if-le v8, v10, :cond_1

    .line 203
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 204
    .local v6, o2:Landroid/graphics/BitmapFactory$Options;
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 205
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 207
    iput-object p1, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 211
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #input:Ljava/io/FileInputStream;
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 212
    .restart local v4       #input:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v4, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    .local v0, bmpReturn:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic bmpReturn w="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 214
    const-string v10, "PreviewBigPic3"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 216
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 249
    .end local v0           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v3           #height_tmp:I
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #scale:I
    .end local v9           #width_tmp:I
    :goto_2
    return-object v0

    .line 177
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 244
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 245
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 249
    const/4 v0, 0x0

    goto :goto_2

    .line 195
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #height_tmp:I
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #scale:I
    .restart local v9       #width_tmp:I
    :cond_0
    :try_start_5
    div-int/lit8 v9, v9, 0x2

    .line 196
    div-int/lit8 v3, v3, 0x2

    .line 198
    mul-int/lit8 v8, v8, 0x2

    .line 187
    goto/16 :goto_1

    .line 217
    .restart local v0       #bmpReturn:Landroid/graphics/Bitmap;
    .restart local v6       #o2:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v1

    .line 219
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 226
    .end local v0           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic scale=1 ____"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 228
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 230
    iput-object p1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 231
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    .line 242
    .restart local v0       #bmpReturn:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static PreviewBigPic(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "config"
    .parameter "radius"

    .prologue
    .line 601
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, f:Ljava/io/File;
    :try_start_0
    const-string v10, "PreviewBigPic0"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 605
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 606
    .local v5, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 607
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 608
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v4, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 610
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    :goto_0
    :try_start_2
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, width_tmp:I
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 619
    .local v3, height_tmp:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "width_tmp="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 620
    const/4 v8, 0x1

    .line 625
    .local v8, scale:I
    :goto_1
    if-ge v9, p2, :cond_0

    if-ge v3, p2, :cond_0

    .line 626
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic___ scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 634
    const-string v10, "PreviewBigPic1"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 636
    const/4 v10, 0x1

    if-le v8, v10, :cond_1

    .line 637
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 638
    .local v6, o2:Landroid/graphics/BitmapFactory$Options;
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 639
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 640
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 641
    iput-object p1, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic scale="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height_tmp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 645
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #input:Ljava/io/FileInputStream;
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 646
    .restart local v4       #input:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    invoke-static {v4, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    .local v0, bmpReturn:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic bmpReturn w="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 648
    const-string v10, "PreviewBigPic3"

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 650
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 683
    .end local v0           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v3           #height_tmp:I
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #scale:I
    .end local v9           #width_tmp:I
    :goto_2
    return-object v0

    .line 611
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 613
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 678
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 679
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 683
    const/4 v0, 0x0

    goto :goto_2

    .line 629
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #height_tmp:I
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #scale:I
    .restart local v9       #width_tmp:I
    :cond_0
    :try_start_5
    div-int/lit8 v9, v9, 0x2

    .line 630
    div-int/lit8 v3, v3, 0x2

    .line 632
    mul-int/lit8 v8, v8, 0x2

    .line 621
    goto/16 :goto_1

    .line 651
    .restart local v0       #bmpReturn:Landroid/graphics/Bitmap;
    .restart local v6       #o2:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v1

    .line 653
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 660
    .end local v0           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #o2:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PreviewBigPic scale=1 ____"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 662
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 663
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 664
    iput-object p1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 665
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    .line 676
    .restart local v0       #bmpReturn:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static PreviewBigPicTemplate(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "path"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 332
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v9, f:Ljava/io/File;
    :try_start_0
    const-string v3, "PreviewBigPic0"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 336
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    .local v13, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 338
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 339
    .local v11, input:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    invoke-static {v11, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :goto_0
    :try_start_2
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .local v20, width_tmp:I
    iget v10, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 350
    .local v10, height_tmp:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "width_tmp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 351
    const/16 v18, 0x1

    .line 353
    .local v18, scale:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic___ scale="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 361
    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_3

    .line 362
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 363
    .local v14, o2:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v18

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 364
    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 365
    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 366
    move-object/from16 v0, p3

    iput-object v0, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 369
    new-instance v11, Ljava/io/FileInputStream;

    .end local v11           #input:Ljava/io/FileInputStream;
    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    .restart local v11       #input:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    invoke-static {v11, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 373
    .local v2, bmpReturn:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 379
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_0

    .line 380
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 381
    .local v5, pw:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 382
    .local v17, ph:I
    mul-int/lit8 v12, v5, 0x3

    .line 383
    .local v12, newH:I
    const/4 v3, 0x0

    sub-int v4, v17, v12

    div-int/lit8 v4, v4, 0x2

    sub-int v6, v17, v12

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 389
    .end local v5           #pw:I
    .end local v12           #newH:I
    .end local v17           #ph:I
    :cond_0
    const-string v19, "1"

    .line 390
    .local v19, strOrival:Ljava/lang/String;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 393
    invoke-static/range {p0 .. p0}, Lcom/mt/image/ImageProcess;->getJpgOritation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 394
    const-string v3, "TG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "__PreviewBigPicTemplate1  strOrival="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1
    invoke-static/range {v19 .. v19}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I

    move-result v16

    .line 397
    .local v16, ori:I
    packed-switch v16, :pswitch_data_0

    .line 445
    .end local v2           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v10           #height_tmp:I
    .end local v11           #input:Ljava/io/FileInputStream;
    .end local v13           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #ori:I
    .end local v18           #scale:I
    .end local v19           #strOrival:Ljava/lang/String;
    .end local v20           #width_tmp:I
    :goto_3
    :pswitch_0
    return-object v2

    .line 342
    .restart local v11       #input:Ljava/io/FileInputStream;
    .restart local v13       #o:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 344
    .local v8, e:Ljava/io/IOException;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 440
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #input:Ljava/io/FileInputStream;
    .end local v13           #o:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v8

    .line 441
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 445
    const/4 v2, 0x0

    goto :goto_3

    .line 357
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v10       #height_tmp:I
    .restart local v11       #input:Ljava/io/FileInputStream;
    .restart local v13       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v18       #scale:I
    .restart local v20       #width_tmp:I
    :cond_2
    :try_start_5
    div-int/lit8 v20, v20, 0x2

    .line 358
    div-int/lit8 v10, v10, 0x2

    .line 359
    mul-int/lit8 v18, v18, 0x2

    .line 352
    goto/16 :goto_1

    .line 374
    .restart local v2       #bmpReturn:Landroid/graphics/Bitmap;
    .restart local v14       #o2:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v8

    .line 376
    .local v8, e:Ljava/io/IOException;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 401
    .end local v8           #e:Ljava/io/IOException;
    .restart local v16       #ori:I
    .restart local v19       #strOrival:Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 402
    goto :goto_3

    .line 404
    :pswitch_2
    const/high16 v3, 0x4334

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 405
    goto :goto_3

    .line 407
    :pswitch_3
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 408
    goto :goto_3

    .line 410
    :pswitch_4
    const/high16 v3, 0x42b4

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 411
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 412
    goto :goto_3

    .line 414
    :pswitch_5
    const/high16 v3, 0x42b4

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 415
    goto :goto_3

    .line 417
    :pswitch_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 418
    const/high16 v3, 0x42b4

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 419
    goto :goto_3

    .line 421
    :pswitch_7
    const/high16 v3, 0x4387

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 422
    goto :goto_3

    .line 431
    .end local v2           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v14           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #ori:I
    .end local v19           #strOrival:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic scale=1 ____"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 433
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 434
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 435
    move-object/from16 v0, p3

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 436
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 438
    .restart local v2       #bmpReturn:Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 397
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
    .end packed-switch
.end method

.method public static PreviewBigPicTemplate(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "path"
    .parameter "config"
    .parameter "radius"

    .prologue
    .line 450
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v9, f:Ljava/io/File;
    :try_start_0
    const-string v3, "PreviewBigPic0"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 454
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v13, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 456
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 457
    .local v11, input:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    invoke-static {v11, v3, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    :goto_0
    :try_start_2
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .local v20, width_tmp:I
    iget v10, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 468
    .local v10, height_tmp:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "width_tmp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 469
    const/16 v18, 0x1

    .line 474
    .local v18, scale:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic___ scale="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 483
    const-string v3, "PreviewBigPic1"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 485
    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_3

    .line 486
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    .local v14, o2:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v18

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 488
    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 490
    move-object/from16 v0, p1

    iput-object v0, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic scale="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height_tmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 494
    new-instance v11, Ljava/io/FileInputStream;

    .end local v11           #input:Ljava/io/FileInputStream;
    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 495
    .restart local v11       #input:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    invoke-static {v11, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 498
    .local v2, bmpReturn:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_0

    .line 499
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 500
    .local v5, pw:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 501
    .local v17, ph:I
    mul-int/lit8 v12, v5, 0x3

    .line 502
    .local v12, newH:I
    const/4 v3, 0x0

    sub-int v4, v17, v12

    div-int/lit8 v4, v4, 0x2

    sub-int v6, v17, v12

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 506
    .end local v5           #pw:I
    .end local v12           #newH:I
    .end local v17           #ph:I
    :cond_0
    const-string v19, "1"

    .line 507
    .local v19, strOrival:Ljava/lang/String;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 510
    invoke-static/range {p0 .. p0}, Lcom/mt/image/ImageProcess;->getJpgOritation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 511
    const-string v3, "TG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "__PreviewBigPicTemplate0  strOrival="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_1
    invoke-static/range {v19 .. v19}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I

    move-result v16

    .line 514
    .local v16, ori:I
    packed-switch v16, :pswitch_data_0

    .line 544
    :goto_2
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic bmpReturn w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintPT(Ljava/lang/String;)V

    .line 545
    const-string v3, "PreviewBigPic3"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 547
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 571
    .end local v2           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v10           #height_tmp:I
    .end local v11           #input:Ljava/io/FileInputStream;
    .end local v13           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #ori:I
    .end local v18           #scale:I
    .end local v19           #strOrival:Ljava/lang/String;
    .end local v20           #width_tmp:I
    :goto_3
    return-object v2

    .line 460
    .restart local v11       #input:Ljava/io/FileInputStream;
    .restart local v13       #o:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 462
    .local v8, e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 566
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #input:Ljava/io/FileInputStream;
    .end local v13           #o:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v8

    .line 567
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 571
    const/4 v2, 0x0

    goto :goto_3

    .line 478
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v10       #height_tmp:I
    .restart local v11       #input:Ljava/io/FileInputStream;
    .restart local v13       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v18       #scale:I
    .restart local v20       #width_tmp:I
    :cond_2
    :try_start_5
    div-int/lit8 v20, v20, 0x2

    .line 479
    div-int/lit8 v10, v10, 0x2

    .line 481
    mul-int/lit8 v18, v18, 0x2

    .line 470
    goto/16 :goto_1

    .line 518
    .restart local v2       #bmpReturn:Landroid/graphics/Bitmap;
    .restart local v14       #o2:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #ori:I
    .restart local v19       #strOrival:Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 519
    goto :goto_2

    .line 521
    :pswitch_2
    const/high16 v3, 0x4334

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 522
    goto :goto_2

    .line 524
    :pswitch_3
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 525
    goto :goto_2

    .line 527
    :pswitch_4
    const/high16 v3, 0x42b4

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 528
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 529
    goto :goto_2

    .line 531
    :pswitch_5
    const/high16 v3, 0x42b4

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 532
    goto :goto_2

    .line 534
    :pswitch_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    const/high16 v3, 0x42b4

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 536
    goto :goto_2

    .line 538
    :pswitch_7
    const/high16 v3, 0x4387

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 539
    goto/16 :goto_2

    .line 548
    :catch_2
    move-exception v8

    .line 550
    .local v8, e:Ljava/io/IOException;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 557
    .end local v2           #bmpReturn:Landroid/graphics/Bitmap;
    .end local v8           #e:Ljava/io/IOException;
    .end local v14           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #ori:I
    .end local v19           #strOrival:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreviewBigPic scale=1 ____"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 559
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 560
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 561
    move-object/from16 v0, p1

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 562
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 564
    .restart local v2       #bmpReturn:Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 514
    nop

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
    .end packed-switch
.end method

.method public static SafeRelease(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bmp"

    .prologue
    .line 3139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3141
    const/4 p0, 0x0

    .line 3142
    const/4 v0, 0x1

    .line 3144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bitmap2Byte(Landroid/graphics/Bitmap;)[B
    .locals 14
    .parameter "bmp"

    .prologue
    const/4 v8, 0x0

    .line 735
    check-cast v8, [B

    .line 737
    .local v8, data:[B
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 738
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 739
    .local v7, h:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 740
    .local v1, pix:[I
    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x3

    new-array v8, v0, [B

    .line 741
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 743
    const/4 v12, 0x0

    .local v12, posOne:I
    move v13, v12

    .local v13, posThree:I
    move v10, v12

    .local v10, i:I
    :goto_0
    if-lt v10, v7, :cond_0

    .line 755
    const/4 v1, 0x0

    check-cast v1, [I

    .line 760
    .end local v1           #pix:[I
    .end local v3           #w:I
    .end local v7           #h:I
    .end local v10           #i:I
    .end local v12           #posOne:I
    .end local v13           #posThree:I
    :goto_1
    return-object v8

    .line 744
    .restart local v1       #pix:[I
    .restart local v3       #w:I
    .restart local v7       #h:I
    .restart local v10       #i:I
    .restart local v12       #posOne:I
    .restart local v13       #posThree:I
    :cond_0
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    if-lt v11, v3, :cond_1

    .line 743
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 748
    :cond_1
    aget v0, v1, v12

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v8, v13

    .line 749
    add-int/lit8 v0, v13, 0x1

    aget v2, v1, v12

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 750
    add-int/lit8 v0, v13, 0x2

    aget v2, v1, v12

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    add-int/lit8 v13, v13, 0x3

    .line 752
    add-int/lit8 v12, v12, 0x1

    .line 744
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 756
    .end local v1           #pix:[I
    .end local v3           #w:I
    .end local v7           #h:I
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #posOne:I
    .end local v13           #posThree:I
    :catch_0
    move-exception v9

    .line 757
    .local v9, e:Ljava/lang/Exception;
    invoke-static {v9}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static bitmap2ByteARGB(Landroid/graphics/Bitmap;)[B
    .locals 15
    .parameter "bmp"

    .prologue
    const/4 v8, 0x0

    .line 813
    check-cast v8, [B

    .line 815
    .local v8, data:[B
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 816
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 818
    .local v7, h:I
    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [B

    .line 819
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 820
    .local v1, pix:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 824
    const/4 v13, 0x0

    .local v13, posOne:I
    move v12, v13

    .local v12, pos:I
    move v10, v13

    .local v10, i:I
    :goto_0
    if-lt v10, v7, :cond_0

    .line 844
    const/4 v1, 0x0

    check-cast v1, [I

    .line 849
    .end local v1           #pix:[I
    .end local v3           #w:I
    .end local v7           #h:I
    .end local v10           #i:I
    .end local v12           #pos:I
    .end local v13           #posOne:I
    :goto_1
    return-object v8

    .line 826
    .restart local v1       #pix:[I
    .restart local v3       #w:I
    .restart local v7       #h:I
    .restart local v10       #i:I
    .restart local v12       #pos:I
    .restart local v13       #posOne:I
    :cond_0
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    if-lt v11, v3, :cond_1

    .line 824
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 827
    :cond_1
    aget v14, v1, v13

    .line 836
    .local v14, value:I
    and-int/lit16 v0, v14, 0xff

    int-to-byte v0, v0

    aput-byte v0, v8, v12

    .line 837
    add-int/lit8 v0, v12, 0x1

    shr-int/lit8 v2, v14, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 838
    add-int/lit8 v0, v12, 0x2

    shr-int/lit8 v2, v14, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 839
    add-int/lit8 v0, v12, 0x3

    shr-int/lit8 v2, v14, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    add-int/lit8 v12, v12, 0x4

    .line 841
    add-int/lit8 v13, v13, 0x1

    .line 826
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 846
    .end local v1           #pix:[I
    .end local v3           #w:I
    .end local v7           #h:I
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #pos:I
    .end local v13           #posOne:I
    .end local v14           #value:I
    :catch_0
    move-exception v9

    .line 847
    .local v9, e:Ljava/lang/Exception;
    invoke-static {v9}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static bitmap2IntARGB(Landroid/graphics/Bitmap;)[I
    .locals 9
    .parameter "bmp"

    .prologue
    .line 856
    const/4 v1, 0x0

    check-cast v1, [I

    .line 858
    .local v1, pix:[I
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 859
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 860
    .local v7, h:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 861
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v3           #w:I
    .end local v7           #h:I
    :goto_0
    return-object v1

    .line 863
    :catch_0
    move-exception v8

    .line 864
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static bitmap2IntARGBPart(Landroid/graphics/Bitmap;IIII)[I
    .locals 9
    .parameter "bmp"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 874
    const/4 v1, 0x0

    check-cast v1, [I

    .line 878
    .local v1, pix:[I
    mul-int v0, p3, p4

    :try_start_0
    new-array v1, v0, [I

    .line 879
    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-object v1

    .line 881
    :catch_0
    move-exception v8

    .line 882
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static bright(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "src"
    .parameter "degree"
    .parameter "isNeedRelease"

    .prologue
    const/4 v10, 0x0

    .line 2900
    const/4 v1, 0x0

    .line 2902
    .local v1, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2904
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2906
    .local v2, canvas:Landroid/graphics/Canvas;
    cmpg-float v7, p1, v10

    if-gez v7, :cond_0

    .line 2907
    const/high16 p1, 0x3f80

    .line 2909
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 2910
    .local v6, paint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2912
    .local v3, colorMatrix:Landroid/graphics/ColorMatrix;
    const/16 v7, 0x14

    new-array v0, v7, [F

    const/4 v7, 0x0

    aput p1, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x6

    aput p1, v0, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0x8

    .line 2913
    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0xc

    aput p1, v0, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    aput v8, v0, v7

    const/16 v7, 0x12

    .line 2914
    const/high16 v8, 0x3f80

    aput v8, v0, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 2915
    .local v0, array:[F
    invoke-virtual {v3, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 2916
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2918
    .local v4, colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2919
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2920
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2921
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2922
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2923
    if-eqz p2, :cond_1

    .line 2924
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2925
    const/4 p0, 0x0

    .line 2931
    .end local v0           #array:[F
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v4           #colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_1
    :goto_0
    return-object v1

    .line 2928
    :catch_0
    move-exception v5

    .line 2929
    .local v5, e:Ljava/lang/Exception;
    invoke-static {v5}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static bytes2Bimap([BII)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 891
    :try_start_0
    array-length v2, p0

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    if-eq v2, v3, :cond_0

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes2Bimap data.length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w*h*4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    .line 893
    const/4 v0, 0x0

    .line 927
    :goto_0
    return-object v0

    .line 895
    :cond_0
    array-length v2, p0

    if-lez v2, :cond_4

    .line 897
    sget-object v2, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 898
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 899
    const/4 v0, 0x0

    goto :goto_0

    .line 901
    :cond_1
    mul-int v2, p1, p2

    new-array v1, v2, [I

    .line 904
    .local v1, pix:[I
    const/4 v11, 0x0

    .local v11, posOne:I
    move v12, v11

    .local v12, posThree:I
    move v9, v11

    .local v9, i:I
    :goto_1
    if-lt v9, p2, :cond_2

    .line 917
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #pix:[I
    .end local v9           #i:I
    .end local v11           #posOne:I
    .end local v12           #posThree:I
    :catch_0
    move-exception v8

    .line 925
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 927
    const/4 v0, 0x0

    goto :goto_0

    .line 905
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #pix:[I
    .restart local v9       #i:I
    .restart local v11       #posOne:I
    .restart local v12       #posThree:I
    :cond_2
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-lt v10, p1, :cond_3

    .line 904
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 906
    :cond_3
    :try_start_1
    aget-byte v2, p0, v12

    and-int/lit16 v2, v2, 0xff

    .line 907
    add-int/lit8 v3, v12, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 908
    add-int/lit8 v3, v12, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    .line 906
    aput v2, v1, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    add-int/lit8 v12, v12, 0x3

    .line 913
    add-int/lit8 v11, v11, 0x1

    .line 905
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 921
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #pix:[I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #posOne:I
    .end local v12           #posThree:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bytesARGB2Bimap([BII)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 933
    :try_start_0
    array-length v2, p0

    if-lez v2, :cond_4

    .line 934
    array-length v2, p0

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_0

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytesARGB2Bimap data.length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w*h*4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    .line 936
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    .line 939
    :cond_0
    sget-object v2, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 940
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 941
    const/4 v0, 0x0

    goto :goto_0

    .line 943
    :cond_1
    mul-int v2, p1, p2

    new-array v1, v2, [I

    .line 947
    .local v1, pix:[I
    const/4 v11, 0x0

    .local v11, posFour:I
    move v12, v11

    .local v12, posOne:I
    move v9, v11

    .local v9, i:I
    :goto_1
    if-lt v9, p2, :cond_2

    .line 959
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 960
    const/4 v1, 0x0

    check-cast v1, [I

    .line 961
    goto :goto_0

    .line 948
    :cond_2
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-lt v10, p1, :cond_3

    .line 947
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 950
    :cond_3
    aget-byte v2, p0, v11

    and-int/lit16 v2, v2, 0xff

    .line 951
    add-int/lit8 v3, v11, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 952
    add-int/lit8 v3, v11, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    .line 953
    add-int/lit8 v3, v11, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    .line 950
    aput v2, v1, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    add-int/lit8 v11, v11, 0x4

    .line 955
    add-int/lit8 v12, v12, 0x1

    .line 948
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 963
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #pix:[I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #posFour:I
    .end local v12           #posOne:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v8

    .line 967
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 969
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bytesARGB2BimapNew([BII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "data"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 975
    :try_start_0
    array-length v4, p0

    if-lez v4, :cond_1

    .line 976
    array-length v4, p0

    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x4

    if-eq v4, v5, :cond_0

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytesARGB2Bimap data.length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w*h*4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v1, v3

    .line 992
    :goto_0
    return-object v1

    .line 980
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 982
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 983
    .local v0, bbf:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    .end local v0           #bbf:Ljava/nio/ByteBuffer;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 990
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v1, v3

    .line 992
    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    move-object v1, v3

    .line 986
    goto :goto_0
.end method

.method public static bytesARGB2BimapNew([BIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "data"
    .parameter "w"
    .parameter "h"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 1000
    :try_start_0
    array-length v4, p0

    if-lez v4, :cond_1

    .line 1001
    array-length v4, p0

    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, p3

    if-ge v4, v5, :cond_0

    .line 1002
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytesARGB2Bimap data.length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w*h*4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v1, v3

    .line 1017
    :goto_0
    return-object v1

    .line 1005
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1007
    .local v1, bmp:Landroid/graphics/Bitmap;
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {p0, p3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1008
    .local v0, bbf:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1014
    .end local v0           #bbf:Ljava/nio/ByteBuffer;
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1015
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v1, v3

    .line 1017
    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    move-object v1, v3

    .line 1011
    goto :goto_0
.end method

.method public static changeARGB([BIIII)Z
    .locals 4
    .parameter "data"
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 1093
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 1111
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 1094
    :cond_0
    if-ltz p1, :cond_1

    .line 1095
    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, p0, v2

    .line 1097
    :cond_1
    if-ltz p2, :cond_2

    .line 1098
    add-int/lit8 v2, v1, 0x2

    int-to-byte v3, p2

    aput-byte v3, p0, v2

    .line 1100
    :cond_2
    if-ltz p3, :cond_3

    .line 1101
    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p3

    aput-byte v3, p0, v2

    .line 1103
    :cond_3
    if-ltz p4, :cond_4

    .line 1104
    add-int/lit8 v2, v1, 0x0

    int-to-byte v3, p4

    aput-byte v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_4
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static changeIntARGB([IIIII)Z
    .locals 5
    .parameter "data"
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/16 v4, 0x100

    .line 1118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 1136
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 1119
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 1120
    aget v2, p0, v1

    const v3, 0xffffff

    and-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x18

    add-int/2addr v2, v3

    aput v2, p0, v1

    .line 1122
    :cond_1
    if-ltz p2, :cond_2

    if-ge p2, v4, :cond_2

    .line 1123
    aget v2, p0, v1

    const v3, -0xff0001

    and-int/2addr v2, v3

    shl-int/lit8 v3, p2, 0x10

    add-int/2addr v2, v3

    aput v2, p0, v1

    .line 1125
    :cond_2
    if-ltz p3, :cond_3

    if-ge p3, v4, :cond_3

    .line 1126
    aget v2, p0, v1

    const v3, -0xff01

    and-int/2addr v2, v3

    shl-int/lit8 v3, p3, 0x8

    add-int/2addr v2, v3

    aput v2, p0, v1

    .line 1128
    :cond_3
    if-ltz p4, :cond_4

    if-ge p4, v4, :cond_4

    .line 1129
    aget v2, p0, v1

    and-int/lit16 v2, v2, -0x100

    add-int/2addr v2, p4

    aput v2, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static colorRGB(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "axis"
    .parameter "degree"

    .prologue
    .line 2856
    const/4 v0, 0x0

    .line 2858
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2860
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2862
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2863
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2869
    .local v2, colorMatrix:Landroid/graphics/ColorMatrix;
    if-nez p1, :cond_1

    .line 2871
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x437f

    invoke-virtual {v2, p2, v6, v7, v8}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 2884
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2886
    .local v3, colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2887
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2888
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2889
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, p0, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2894
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v3           #colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v5           #paint:Landroid/graphics/Paint;
    :goto_1
    return-object v0

    .line 2872
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v2       #colorMatrix:Landroid/graphics/ColorMatrix;
    .restart local v5       #paint:Landroid/graphics/Paint;
    :cond_1
    if-nez p1, :cond_2

    .line 2874
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x437f

    invoke-virtual {v2, v6, p2, v7, v8}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2891
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v5           #paint:Landroid/graphics/Paint;
    :catch_0
    move-exception v4

    .line 2892
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2875
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v2       #colorMatrix:Landroid/graphics/ColorMatrix;
    .restart local v5       #paint:Landroid/graphics/Paint;
    :cond_2
    if-nez p1, :cond_0

    .line 2877
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x437f

    :try_start_1
    invoke-virtual {v2, v6, v7, p2, v8}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static contrast(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "src"
    .parameter "val"
    .parameter "isNeedRelease"

    .prologue
    .line 2937
    const/4 v1, 0x0

    .line 2939
    .local v1, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2941
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2943
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 2944
    .local v6, paint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2946
    .local v3, colorMatrix:Landroid/graphics/ColorMatrix;
    mul-int/lit8 v9, p1, 0x3

    div-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, -0x1e

    mul-int/lit8 p1, v9, 0x2

    .line 2947
    const/4 v8, 0x0

    .line 2948
    .local v8, x:F
    if-gez p1, :cond_1

    .line 2949
    const/high16 v9, 0x42fe

    const/high16 v10, 0x3f80

    int-to-float v11, p1

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    const/high16 v11, 0x42fe

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 2964
    :goto_0
    const/high16 v9, 0x42fe

    div-float v7, v8, v9

    .line 2965
    .local v7, scale:F
    const/16 v9, 0x19

    new-array v0, v9, [F

    const/4 v9, 0x0

    aput v7, v0, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v0, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v0, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v0, v9

    const/4 v9, 0x4

    const/high16 v10, 0x3f00

    const/high16 v11, 0x42fe

    sub-float/2addr v11, v8

    mul-float/2addr v10, v11

    aput v10, v0, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput v10, v0, v9

    const/4 v9, 0x6

    .line 2966
    aput v7, v0, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x8

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x9

    const/high16 v10, 0x3f00

    const/high16 v11, 0x42fe

    sub-float/2addr v11, v8

    mul-float/2addr v10, v11

    aput v10, v0, v9

    const/16 v9, 0xa

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0xb

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0xc

    aput v7, v0, v9

    const/16 v9, 0xd

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0xe

    .line 2967
    const/high16 v10, 0x3f00

    const/high16 v11, 0x42fe

    sub-float/2addr v11, v8

    mul-float/2addr v10, v11

    aput v10, v0, v9

    const/16 v9, 0xf

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x10

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x11

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x12

    const/high16 v10, 0x3f80

    aput v10, v0, v9

    const/16 v9, 0x13

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x14

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x15

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x16

    .line 2968
    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x17

    const/4 v10, 0x0

    aput v10, v0, v9

    const/16 v9, 0x18

    const/high16 v10, 0x3f80

    aput v10, v0, v9

    .line 2969
    .local v0, array:[F
    invoke-virtual {v3, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 2970
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2972
    .local v4, colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2973
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2974
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2975
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2976
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2977
    if-eqz p2, :cond_0

    .line 2978
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2979
    const/4 p0, 0x0

    .line 2985
    .end local v0           #array:[F
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v4           #colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #scale:F
    .end local v8           #x:F
    :cond_0
    :goto_1
    return-object v1

    .line 2951
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    .restart local v3       #colorMatrix:Landroid/graphics/ColorMatrix;
    .restart local v6       #paint:Landroid/graphics/Paint;
    .restart local v8       #x:F
    :cond_1
    rem-int/lit8 v9, p1, 0x1

    int-to-float v8, v9

    .line 2952
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_2

    .line 2953
    sget-object v9, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    aget v8, v9, p1

    .line 2959
    :goto_2
    const/high16 v9, 0x42fe

    mul-float/2addr v9, v8

    const/high16 v10, 0x42fe

    add-float v8, v9, v10

    goto/16 :goto_0

    .line 2956
    :cond_2
    sget-object v9, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    shl-int/lit8 v10, p1, 0x0

    aget v9, v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v8

    mul-float/2addr v9, v10

    sget-object v10, Lcom/mt/image/ImageProcess;->DELTA_INDEX:[F

    shl-int/lit8 v11, p1, 0x0

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2957
    mul-float/2addr v10, v8

    .line 2956
    add-float v8, v9, v10

    goto :goto_2

    .line 2982
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v8           #x:F
    :catch_0
    move-exception v5

    .line 2983
    .local v5, e:Ljava/lang/Exception;
    invoke-static {v5}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static copyDraw(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "dst"
    .parameter "src"

    .prologue
    .line 801
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 803
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-object p0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "putBitmap"
    .parameter "dstW"
    .parameter "dstH"
    .parameter "dstConfig"

    .prologue
    .line 1215
    const/4 v0, 0x0

    .line 1219
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1221
    .local v3, p:Landroid/graphics/Paint;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1222
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1223
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1232
    if-gtz p1, :cond_0

    .line 1233
    const/4 p1, 0x1

    .line 1235
    :cond_0
    if-gtz p2, :cond_1

    .line 1236
    const/4 p2, 0x1

    .line 1238
    :cond_1
    if-nez p3, :cond_2

    .line 1239
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1241
    :cond_2
    const-string v4, "TA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createScaledBitmap "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1243
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1245
    .local v1, c2:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1246
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1245
    invoke-virtual {v1, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    .end local v1           #c2:Landroid/graphics/Canvas;
    .end local v3           #p:Landroid/graphics/Paint;
    :goto_0
    return-object v0

    .line 1249
    :catch_0
    move-exception v2

    .line 1250
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmp"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "isNeedRelease"

    .prologue
    .line 2015
    const/4 v0, 0x0

    .line 2020
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    if-gt p3, p1, :cond_0

    .line 2021
    add-int/lit8 p3, p1, 0x1

    .line 2023
    :cond_0
    if-ge p4, p2, :cond_1

    .line 2024
    add-int/lit8 p4, p2, 0x1

    .line 2026
    :cond_1
    sub-int v4, p3, p1

    sub-int v5, p4, p2

    .line 2027
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 2026
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2028
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2030
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2031
    .local v3, mPaint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2032
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    .line 2033
    const/4 v7, 0x0

    sub-int v8, p3, p1

    sub-int v9, p4, p2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2032
    invoke-virtual {v1, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2034
    if-eqz p5, :cond_2

    .line 2035
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    const/4 p0, 0x0

    .line 2043
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #mPaint:Landroid/graphics/Paint;
    :cond_2
    :goto_0
    return-object v0

    .line 2040
    :catch_0
    move-exception v2

    .line 2041
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static cutAndResizeRotate(Landroid/graphics/Bitmap;IIIIIIZZ)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "bmp"
    .parameter "dstW"
    .parameter "dstH"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "isNeedRelease"
    .parameter "isPreview"

    .prologue
    .line 2093
    const/4 v4, 0x0

    .line 2095
    .local v4, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cutAndResizeRotate DstW="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " DstH="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2096
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "left="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " top="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " right"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bottom="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2097
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cutAndResizeRotate bmpw="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bmph="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2098
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2097
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2100
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2102
    move/from16 v0, p1

    int-to-float v11, v0

    sub-int v12, p5, p3

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 2103
    .local v10, scale:F
    const/4 v5, 0x0

    .line 2106
    .local v5, bmpMid:Landroid/graphics/Bitmap;
    const/high16 v11, 0x3f80

    cmpl-float v11, v10, v11

    if-nez v11, :cond_1

    .line 2107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2108
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2109
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 2110
    .local v9, mPaint:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2111
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2112
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2113
    new-instance v11, Landroid/graphics/Rect;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2114
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v13, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2113
    invoke-virtual {v6, p0, v11, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2115
    if-eqz p7, :cond_0

    .line 2116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2117
    const/4 p0, 0x0

    .line 2200
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #mPaint:Landroid/graphics/Paint;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2206
    .end local v5           #bmpMid:Landroid/graphics/Bitmap;
    .end local v10           #scale:F
    :goto_1
    return-object v4

    .line 2121
    .restart local v5       #bmpMid:Landroid/graphics/Bitmap;
    .restart local v10       #scale:F
    :cond_1
    const/high16 v11, 0x3f80

    cmpl-float v11, v10, v11

    if-eqz v11, :cond_0

    .line 2122
    const-string v11, "cutAndResizeRotate bmp.getWidth() * bmp.getHeight() <= 900 * 900"

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2123
    move/from16 v0, p5

    move/from16 v1, p3

    if-gt v0, v1, :cond_2

    .line 2124
    add-int/lit8 p5, p3, 0x1

    .line 2126
    :cond_2
    move/from16 v0, p6

    move/from16 v1, p4

    if-gt v0, v1, :cond_3

    .line 2127
    add-int/lit8 p6, p4, 0x1

    .line 2129
    :cond_3
    sub-int v11, p5, p3

    sub-int v12, p6, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2130
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2131
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 2132
    .restart local v9       #mPaint:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2133
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2134
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2135
    move/from16 v0, p3

    neg-int v11, v0

    int-to-float v11, v11

    move/from16 v0, p4

    neg-int v12, v0

    int-to-float v12, v12

    invoke-virtual {v6, p0, v11, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 2137
    .local v7, config:Landroid/graphics/Bitmap$Config;
    if-eqz p7, :cond_4

    .line 2138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2139
    const/4 p0, 0x0

    .line 2141
    :cond_4
    if-eqz p8, :cond_6

    .line 2142
    const-string v11, "cutAndResizeRotate0"

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V

    .line 2145
    const/high16 v11, 0x3f80

    cmpl-float v11, v10, v11

    if-nez v11, :cond_5

    .line 2146
    move-object v4, v5

    .line 2147
    const-string v11, "FittingWindow copy"

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2158
    :goto_2
    const-string v11, "cutAndResizeRotate1"

    invoke-static {v11}, Lcom/mt/tools/MTDebug;->memeryUsed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2203
    .end local v5           #bmpMid:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #config:Landroid/graphics/Bitmap$Config;
    .end local v9           #mPaint:Landroid/graphics/Paint;
    .end local v10           #scale:F
    :catch_0
    move-exception v8

    .line 2204
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2152
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #bmpMid:Landroid/graphics/Bitmap;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v7       #config:Landroid/graphics/Bitmap$Config;
    .restart local v9       #mPaint:Landroid/graphics/Paint;
    .restart local v10       #scale:F
    :cond_5
    :try_start_1
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v5, v0, v1, v7}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2154
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2155
    const/4 v5, 0x0

    goto :goto_2

    .line 2161
    :cond_6
    move-object v4, v5

    goto/16 :goto_0
.end method

.method public static cutBmpTemplate(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bmp"
    .parameter "dstW"
    .parameter "dstH"
    .parameter "isNeedRelease"

    .prologue
    const/4 v1, 0x0

    .line 2055
    int-to-float v0, p1

    int-to-float v4, p2

    div-float v11, v0, v4

    .line 2056
    .local v11, scale:F
    const/4 v10, 0x0

    .line 2057
    .local v10, bmpDst:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 2058
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v11

    sub-float/2addr v0, v4

    float-to-int v0, v0

    div-int/lit8 v2, v0, 0x2

    .line 2059
    .local v2, dh:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2060
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v4, v2, 0x2

    sub-int v8, v0, v4

    .line 2061
    .local v8, h:I
    add-int v4, v2, v8

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2069
    .end local v2           #dh:I
    :goto_0
    return-object v10

    .line 2064
    .end local v3           #w:I
    .end local v8           #h:I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    sub-float/2addr v0, v4

    float-to-int v0, v0

    div-int/lit8 v5, v0, 0x2

    .line 2065
    .local v5, dw:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v4, v5, 0x2

    sub-int v3, v0, v4

    .line 2066
    .restart local v3       #w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2067
    .restart local v8       #h:I
    add-int v7, v5, v3

    move-object v4, p0

    move v6, v1

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/mt/image/ImageProcess;->cut(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_0
.end method

.method public static cutRectAlpha(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 10
    .parameter "bmp"
    .parameter "rect"

    .prologue
    .line 2077
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v9, v0, v2

    .line 2078
    .local v9, n:I
    new-array v1, v9, [I

    .line 2081
    .local v1, data:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v9, :cond_0

    .line 2084
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2085
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p0

    .line 2084
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 2087
    const/4 v0, 0x1

    return v0

    .line 2082
    :cond_0
    const v0, 0x110000ff

    aput v0, v1, v8

    .line 2081
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static decodeYUV420SP([I[BII)V
    .locals 16
    .parameter "rgbBuf"
    .parameter "yuv420sp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3149
    mul-int v2, p2, p3

    .line 3163
    .local v2, frameSize:I
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v11, 0x0

    .line 3164
    .local v11, y:I
    const/4 v8, 0x0

    .local v8, uvp:I
    const/4 v7, 0x0

    .local v7, u:I
    const/4 v10, 0x0

    .line 3165
    .local v10, v:I
    const/4 v12, 0x0

    .local v12, y1192:I
    const/4 v6, 0x0

    .local v6, r:I
    const/4 v3, 0x0

    .local v3, g:I
    const/4 v1, 0x0

    .line 3167
    .local v1, b:I
    const/4 v5, 0x0

    .local v5, j:I
    const/4 v13, 0x0

    .local v13, yp:I
    :goto_0
    move/from16 v0, p3

    if-lt v5, v0, :cond_0

    .line 3208
    return-void

    .line 3168
    :cond_0
    shr-int/lit8 v14, v5, 0x1

    mul-int v14, v14, p2

    add-int v8, v2, v14

    .line 3169
    const/4 v7, 0x0

    .line 3170
    const/4 v10, 0x0

    .line 3171
    const/4 v4, 0x0

    move v9, v8

    .end local v8           #uvp:I
    .local v9, uvp:I
    :goto_1
    move/from16 v0, p2

    if-lt v4, v0, :cond_1

    .line 3167
    add-int/lit8 v5, v5, 0x1

    move v8, v9

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    goto :goto_0

    .line 3172
    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    :cond_1
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v11, v14, -0x10

    .line 3173
    if-gez v11, :cond_2

    .line 3174
    const/4 v11, 0x0

    .line 3175
    :cond_2
    and-int/lit8 v14, v4, 0x1

    if-nez v14, :cond_9

    .line 3176
    add-int/lit8 v8, v9, 0x1

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v10, v14, -0x80

    .line 3177
    add-int/lit8 v9, v8, 0x1

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    aget-byte v14, p1, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v7, v14, -0x80

    move v8, v9

    .line 3180
    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    :goto_2
    mul-int/lit16 v12, v11, 0x4a8

    .line 3181
    mul-int/lit16 v14, v10, 0x662

    add-int v6, v12, v14

    .line 3182
    mul-int/lit16 v14, v10, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v7, 0x190

    sub-int v3, v14, v15

    .line 3183
    mul-int/lit16 v14, v7, 0x812

    add-int v1, v12, v14

    .line 3185
    if-gez v6, :cond_6

    .line 3186
    const/4 v6, 0x0

    .line 3189
    :cond_3
    :goto_3
    if-gez v3, :cond_7

    .line 3190
    const/4 v3, 0x0

    .line 3193
    :cond_4
    :goto_4
    if-gez v1, :cond_8

    .line 3194
    const/4 v1, 0x0

    .line 3201
    :cond_5
    :goto_5
    shr-int/lit8 v6, v6, 0xa

    .line 3202
    shr-int/lit8 v3, v3, 0xa

    .line 3203
    shr-int/lit8 v1, v1, 0xa

    .line 3204
    const/high16 v14, -0x100

    shl-int/lit8 v15, v6, 0x10

    add-int/2addr v14, v15

    shl-int/lit8 v15, v3, 0x8

    add-int/2addr v14, v15

    add-int/2addr v14, v1

    aput v14, p0, v13

    .line 3171
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    move v9, v8

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    goto :goto_1

    .line 3187
    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    :cond_6
    const v14, 0x3ffff

    if-le v6, v14, :cond_3

    .line 3188
    const v6, 0x3ffff

    goto :goto_3

    .line 3191
    :cond_7
    const v14, 0x3ffff

    if-le v3, v14, :cond_4

    .line 3192
    const v3, 0x3ffff

    goto :goto_4

    .line 3195
    :cond_8
    const v14, 0x3ffff

    if-le v1, v14, :cond_5

    .line 3196
    const v1, 0x3ffff

    goto :goto_5

    .end local v8           #uvp:I
    .restart local v9       #uvp:I
    :cond_9
    move v8, v9

    .end local v9           #uvp:I
    .restart local v8       #uvp:I
    goto :goto_2
.end method

.method public static decodeYUV420SPMid([BII)[I
    .locals 23
    .parameter "yuv420sp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3212
    mul-int v3, p1, p2

    .line 3215
    .local v3, frameSize:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 3216
    const/4 v5, 0x0

    .line 3217
    .local v5, fromY:I
    move/from16 v12, p2

    .line 3218
    .local v12, toY:I
    sub-int v21, p1, p2

    div-int/lit8 v4, v21, 0x2

    .line 3219
    .local v4, fromX:I
    add-int v11, v4, p2

    .line 3221
    .local v11, toX:I
    mul-int v21, p2, p2

    move/from16 v0, v21

    new-array v10, v0, [I

    .line 3232
    .local v10, rgbBuf:[I
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    const/16 v17, 0x0

    .line 3233
    .local v17, y:I
    const/4 v14, 0x0

    .local v14, uvp:I
    const/4 v13, 0x0

    .local v13, u:I
    const/16 v16, 0x0

    .line 3234
    .local v16, v:I
    const/16 v18, 0x0

    .local v18, y1192:I
    const/4 v9, 0x0

    .local v9, r:I
    const/4 v6, 0x0

    .local v6, g:I
    const/4 v2, 0x0

    .line 3236
    .local v2, b:I
    move v8, v5

    .local v8, j:I
    const/16 v20, 0x0

    .local v20, ypc:I
    move/from16 v19, v20

    .local v19, yp:I
    :goto_1
    if-lt v8, v12, :cond_1

    .line 3273
    return-object v10

    .line 3223
    .end local v2           #b:I
    .end local v4           #fromX:I
    .end local v5           #fromY:I
    .end local v6           #g:I
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #r:I
    .end local v10           #rgbBuf:[I
    .end local v11           #toX:I
    .end local v12           #toY:I
    .end local v13           #u:I
    .end local v14           #uvp:I
    .end local v16           #v:I
    .end local v17           #y:I
    .end local v18           #y1192:I
    .end local v19           #yp:I
    .end local v20           #ypc:I
    :cond_0
    const/4 v4, 0x0

    .line 3224
    .restart local v4       #fromX:I
    move/from16 v11, p1

    .line 3225
    .restart local v11       #toX:I
    sub-int v21, p2, p1

    div-int/lit8 v5, v21, 0x2

    .line 3226
    .restart local v5       #fromY:I
    add-int v12, v5, p1

    .line 3228
    .restart local v12       #toY:I
    mul-int v21, p1, p1

    move/from16 v0, v21

    new-array v10, v0, [I

    .restart local v10       #rgbBuf:[I
    goto :goto_0

    .line 3237
    .restart local v2       #b:I
    .restart local v6       #g:I
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #r:I
    .restart local v13       #u:I
    .restart local v14       #uvp:I
    .restart local v16       #v:I
    .restart local v17       #y:I
    .restart local v18       #y1192:I
    .restart local v19       #yp:I
    .restart local v20       #ypc:I
    :cond_1
    shr-int/lit8 v21, v8, 0x1

    mul-int v21, v21, p1

    add-int v21, v21, v3

    rem-int/lit8 v22, v4, 0x2

    sub-int v22, v4, v22

    add-int v14, v21, v22

    .line 3238
    mul-int v21, v8, p1

    add-int v20, v21, v4

    .line 3239
    const/4 v13, 0x0

    .line 3240
    const/16 v16, 0x0

    .line 3241
    move v7, v4

    move v15, v14

    .end local v14           #uvp:I
    .local v15, uvp:I
    :goto_2
    if-lt v7, v11, :cond_2

    .line 3236
    add-int/lit8 v8, v8, 0x1

    move v14, v15

    .end local v15           #uvp:I
    .restart local v14       #uvp:I
    goto :goto_1

    .line 3242
    .end local v14           #uvp:I
    .restart local v15       #uvp:I
    :cond_2
    aget-byte v21, p0, v20

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v17, v21, -0x10

    .line 3243
    if-gez v17, :cond_3

    .line 3244
    const/16 v17, 0x0

    .line 3245
    :cond_3
    and-int/lit8 v21, v7, 0x1

    if-nez v21, :cond_a

    .line 3246
    add-int/lit8 v14, v15, 0x1

    .end local v15           #uvp:I
    .restart local v14       #uvp:I
    aget-byte v21, p0, v15

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v16, v21, -0x80

    .line 3247
    add-int/lit8 v15, v14, 0x1

    .end local v14           #uvp:I
    .restart local v15       #uvp:I
    aget-byte v21, p0, v14

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x80

    move v14, v15

    .line 3250
    .end local v15           #uvp:I
    .restart local v14       #uvp:I
    :goto_3
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x4a8

    move/from16 v18, v0

    .line 3251
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x662

    move/from16 v21, v0

    add-int v9, v18, v21

    .line 3252
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x341

    move/from16 v21, v0

    sub-int v21, v18, v21

    mul-int/lit16 v0, v13, 0x190

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 3253
    mul-int/lit16 v0, v13, 0x812

    move/from16 v21, v0

    add-int v2, v18, v21

    .line 3255
    if-gez v9, :cond_7

    .line 3256
    const/4 v9, 0x0

    .line 3259
    :cond_4
    :goto_4
    if-gez v6, :cond_8

    .line 3260
    const/4 v6, 0x0

    .line 3263
    :cond_5
    :goto_5
    if-gez v2, :cond_9

    .line 3264
    const/4 v2, 0x0

    .line 3267
    :cond_6
    :goto_6
    shr-int/lit8 v9, v9, 0xa

    .line 3268
    shr-int/lit8 v6, v6, 0xa

    .line 3269
    shr-int/lit8 v2, v2, 0xa

    .line 3270
    const/high16 v21, -0x100

    shl-int/lit8 v22, v9, 0x10

    add-int v21, v21, v22

    shl-int/lit8 v22, v6, 0x8

    add-int v21, v21, v22

    add-int v21, v21, v2

    aput v21, v10, v19

    .line 3241
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v20, 0x1

    move v15, v14

    .end local v14           #uvp:I
    .restart local v15       #uvp:I
    goto :goto_2

    .line 3257
    .end local v15           #uvp:I
    .restart local v14       #uvp:I
    :cond_7
    const v21, 0x3ffff

    move/from16 v0, v21

    if-le v9, v0, :cond_4

    .line 3258
    const v9, 0x3ffff

    goto :goto_4

    .line 3261
    :cond_8
    const v21, 0x3ffff

    move/from16 v0, v21

    if-le v6, v0, :cond_5

    .line 3262
    const v6, 0x3ffff

    goto :goto_5

    .line 3265
    :cond_9
    const v21, 0x3ffff

    move/from16 v0, v21

    if-le v2, v0, :cond_6

    .line 3266
    const v2, 0x3ffff

    goto :goto_6

    .end local v14           #uvp:I
    .restart local v15       #uvp:I
    :cond_a
    move v14, v15

    .end local v15           #uvp:I
    .restart local v14       #uvp:I
    goto :goto_3
.end method

.method public static drawBmpMidToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 10
    .parameter "canvas"
    .parameter "bmp"
    .parameter "rect"

    .prologue
    .line 3062
    const/4 v4, 0x0

    .line 3063
    .local v4, isNew:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 3064
    const/4 v4, 0x1

    .line 3065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int v3, v7, v8

    .line 3066
    .local v3, h:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p1, v7, v3, v8}, Lcom/mt/image/ImageProcess;->resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3068
    .end local v3           #h:I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 3069
    .local v1, dw:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 3070
    .local v0, dh:I
    const-string v7, "TEMP"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "drawBmpMidToCanvas  dw="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dh="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bmp W="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3071
    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3070
    invoke-static {v7, v8}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int v6, v1, v7

    .line 3082
    .local v6, tw:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 3083
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 3085
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v5, v0, v7

    .line 3086
    .local v5, th:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_2

    .line 3087
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 3089
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v0, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, p2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3090
    if-eqz v4, :cond_3

    .line 3091
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3092
    const/4 p1, 0x0

    .line 3097
    .end local v0           #dh:I
    .end local v1           #dw:I
    .end local v5           #th:I
    .end local v6           #tw:I
    :cond_3
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 3094
    :catch_0
    move-exception v2

    .line 3095
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 1141
    const/4 v0, 0x0

    .line 1145
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1146
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1144
    :goto_0
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1149
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1151
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1152
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1151
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1153
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1158
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 1148
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v2

    .line 1156
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getJpgOritation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 695
    const-string v0, ""

    .line 696
    .local v0, ori:Ljava/lang/String;
    invoke-static {p0}, Lcom/mt/tools/VerifyMothod;->getAttri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    return-object v0
.end method

.method public static gray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"

    .prologue
    .line 2798
    const/4 v0, 0x0

    .line 2800
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2802
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2804
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2805
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2806
    .local v2, colorMatrix:Landroid/graphics/ColorMatrix;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 2807
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2809
    .local v3, colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2810
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2811
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, p0, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v3           #colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v5           #paint:Landroid/graphics/Paint;
    :goto_0
    return-object v0

    .line 2813
    :catch_0
    move-exception v4

    .line 2814
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static hue(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "src"
    .parameter "degree"
    .parameter "isNeedRelease"

    .prologue
    .line 2991
    const/4 v2, 0x0

    .line 2993
    .local v2, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2995
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2997
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2998
    .local v12, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 3000
    .local v4, colorMatrix:Landroid/graphics/ColorMatrix;
    const/high16 v14, 0x4334

    const/high16 v15, -0x3ccc

    move/from16 v0, p1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, 0x4334

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide v16, 0x400921fb54442d18L

    mul-double v14, v14, v16

    double-to-int v11, v14

    .line 3001
    .local v11, nHue:I
    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v6, v14

    .line 3002
    .local v6, cosVal:F
    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    .line 3003
    .local v13, sinVal:F
    const v10, 0x3e5a1cac

    .line 3004
    .local v10, lumR:F
    const v9, 0x3f370a3d

    .line 3005
    .local v9, lumG:F
    const v8, 0x3d9374bc

    .line 3006
    .local v8, lumB:F
    const/16 v14, 0x14

    new-array v1, v14, [F

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v10

    mul-float/2addr v15, v6

    add-float/2addr v15, v10

    neg-float v0, v10

    move/from16 v16, v0

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/4 v14, 0x1

    .line 3007
    neg-float v15, v9

    mul-float/2addr v15, v6

    add-float/2addr v15, v9

    neg-float v0, v9

    move/from16 v16, v0

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/4 v14, 0x2

    .line 3008
    neg-float v15, v8

    mul-float/2addr v15, v6

    add-float/2addr v15, v8

    const/high16 v16, 0x3f80

    sub-float v16, v16, v8

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v1, v14

    const/4 v14, 0x5

    .line 3009
    neg-float v15, v10

    mul-float/2addr v15, v6

    add-float/2addr v15, v10

    const v16, 0x3e126e98

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/4 v14, 0x6

    .line 3010
    const/high16 v15, 0x3f80

    sub-float/2addr v15, v9

    mul-float/2addr v15, v6

    add-float/2addr v15, v9

    const v16, 0x3e0f5c29

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/4 v14, 0x7

    .line 3011
    neg-float v15, v8

    mul-float/2addr v15, v6

    add-float/2addr v15, v8

    const v16, -0x416f1aa0

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/16 v14, 0x8

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0x9

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0xa

    .line 3012
    neg-float v15, v10

    mul-float/2addr v15, v6

    add-float/2addr v15, v10

    const/high16 v16, 0x3f80

    sub-float v16, v16, v10

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v13

    add-float v15, v15, v16

    aput v15, v1, v14

    const/16 v14, 0xb

    .line 3013
    neg-float v15, v9

    mul-float/2addr v15, v6

    add-float/2addr v15, v9

    mul-float v16, v13, v9

    add-float v15, v15, v16

    aput v15, v1, v14

    const/16 v14, 0xc

    .line 3014
    const/high16 v15, 0x3f80

    sub-float/2addr v15, v8

    mul-float/2addr v15, v6

    add-float/2addr v15, v8

    mul-float v16, v13, v8

    add-float v15, v15, v16

    aput v15, v1, v14

    const/16 v14, 0xd

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0xe

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0xf

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0x10

    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0x11

    .line 3015
    const/4 v15, 0x0

    aput v15, v1, v14

    const/16 v14, 0x12

    const/high16 v15, 0x3f80

    aput v15, v1, v14

    const/16 v14, 0x13

    const/4 v15, 0x0

    aput v15, v1, v14

    .line 3016
    .local v1, array:[F
    invoke-virtual {v4, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 3017
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 3019
    .local v5, colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3020
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3021
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3022
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3023
    if-eqz p2, :cond_0

    .line 3024
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3025
    const/16 p0, 0x0

    .line 3031
    .end local v1           #array:[F
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v5           #colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v6           #cosVal:F
    .end local v8           #lumB:F
    .end local v9           #lumG:F
    .end local v10           #lumR:F
    .end local v11           #nHue:I
    .end local v12           #paint:Landroid/graphics/Paint;
    .end local v13           #sinVal:F
    :cond_0
    :goto_0
    return-object v2

    .line 3028
    :catch_0
    move-exception v7

    .line 3029
    .local v7, e:Ljava/lang/Exception;
    invoke-static {v7}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static intARGB2Bimap([III)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "data"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v9, 0x0

    .line 1023
    :try_start_0
    array-length v1, p0

    mul-int v2, p1, p2

    if-eq v1, v2, :cond_0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytesARGB2Bimap data.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w*h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    move-object v0, v9

    .line 1040
    :goto_0
    return-object v0

    .line 1027
    :cond_0
    array-length v1, p0

    if-lez v1, :cond_2

    .line 1029
    sget-object v1, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1030
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    move-object v0, v9

    .line 1031
    goto :goto_0

    .line 1033
    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1037
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 1038
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    move-object v0, v9

    .line 1040
    goto :goto_0
.end method

.method public static loadPic(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v6, 0x0

    .line 3278
    const/4 v5, 0x0

    .line 3279
    .local v5, val:I
    const/4 v0, 0x0

    .line 3282
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v4, "1"

    .line 3283
    .local v4, strOrival:Ljava/lang/String;
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    .line 3284
    invoke-static {p0}, Lcom/mt/tools/VerifyMothod;->getJpgOrit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3286
    :cond_0
    invoke-static {v4}, Lcom/mt/mtgif/MyPro;->stringToInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 3290
    .local v3, ori:I
    const/16 v7, 0x258

    const/16 v8, 0x258

    :try_start_1
    invoke-static {p0, v7, v8, p2}, Lcom/mt/image/ImageProcess;->PreviewBigPic(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 3306
    :goto_0
    if-nez v0, :cond_1

    .line 3307
    :try_start_2
    const-string v7, "loadPic bmpSrc=null"

    invoke-static {v7}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V

    .line 3369
    .end local v3           #ori:I
    .end local v4           #strOrival:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 3297
    .restart local v3       #ori:I
    .restart local v4       #strOrival:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3298
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    .line 3299
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3300
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/16 v7, 0x4b0

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3301
    const/16 v7, 0x4b0

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3302
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3303
    const-string v7, "loadPic bmpSrc = BitmapFactory.decodeFile(MyData.strPicPath,opt)"

    invoke-static {v7}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3365
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #ori:I
    .end local v4           #strOrival:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3366
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 3333
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #ori:I
    .restart local v4       #strOrival:Ljava/lang/String;
    :cond_1
    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    move-object v6, v0

    .line 3369
    goto :goto_1

    .line 3337
    :pswitch_1
    const/4 v7, 0x1

    const/4 v8, 0x1

    :try_start_3
    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3338
    goto :goto_2

    .line 3340
    :pswitch_2
    const/high16 v7, 0x4334

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3341
    goto :goto_2

    .line 3343
    :pswitch_3
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3344
    goto :goto_2

    .line 3346
    :pswitch_4
    const/high16 v7, 0x42b4

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3347
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3348
    goto :goto_2

    .line 3350
    :pswitch_5
    const/high16 v7, 0x42b4

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3351
    goto :goto_2

    .line 3353
    :pswitch_6
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3354
    const/high16 v7, 0x42b4

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3355
    goto :goto_2

    .line 3357
    :pswitch_7
    const/high16 v7, 0x4387

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 3358
    goto :goto_2

    .line 3333
    nop

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
    .end packed-switch
.end method

.method public static mirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "kind"
    .parameter "isNeedRelease"

    .prologue
    .line 2542
    const/4 v8, 0x0

    .line 2544
    .local v8, mirrorPic:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mirror kind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2545
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2546
    .local v5, mirrorMatrix:Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 2559
    :goto_0
    const/4 v0, 0x0

    .line 2594
    .end local v5           #mirrorMatrix:Landroid/graphics/Matrix;
    :goto_1
    return-object v0

    .line 2550
    .restart local v5       #mirrorMatrix:Landroid/graphics/Matrix;
    :pswitch_0
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2570
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 2571
    const-string v0, "mirror bmpSrc.getConfig() == Config.RGB_565"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2577
    :cond_0
    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2578
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2577
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2579
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_4

    .line 2580
    const-string v0, "mirror mirrorPic.getConfig() == Config.RGB_565"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2585
    :cond_1
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mirrorPic w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2586
    if-eqz p2, :cond_2

    .line 2587
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2588
    const/4 p0, 0x0

    .end local v5           #mirrorMatrix:Landroid/graphics/Matrix;
    :cond_2
    :goto_5
    move-object v0, v8

    .line 2594
    goto :goto_1

    .line 2553
    .restart local v5       #mirrorMatrix:Landroid/graphics/Matrix;
    :pswitch_1
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2591
    .end local v5           #mirrorMatrix:Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 2592
    .local v7, e:Ljava/lang/Exception;
    invoke-static {v7}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_5

    .line 2556
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #mirrorMatrix:Landroid/graphics/Matrix;
    :pswitch_2
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    :try_start_1
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2557
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 2573
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 2574
    const-string v0, "mirror bmpSrc.getConfig() == Config.ARGB_8888"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    goto :goto_3

    .line 2582
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 2583
    const-string v0, "mirror mirrorPic.getConfig() == Config.ARGB_8888"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static mutable(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmp"
    .parameter "isRelease"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 785
    if-eqz p1, :cond_0

    .line 786
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :cond_0
    :goto_0
    return-object v0

    .line 789
    :catch_0
    move-exception v1

    .line 790
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static resize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmp"
    .parameter "width"
    .parameter "height"
    .parameter "isNeedRelease"

    .prologue
    .line 1962
    const/4 v0, 0x0

    .line 1977
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 1978
    sget-object v2, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1979
    const-string v2, "FittingWindow copy"

    invoke-static {v2}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 1986
    :goto_0
    if-eqz p3, :cond_0

    .line 1987
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1988
    const/4 p0, 0x0

    .line 2009
    :cond_0
    :goto_1
    return-object v0

    .line 1982
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2006
    :catch_0
    move-exception v1

    .line 2007
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "degress"
    .parameter "isNeedRelease"

    .prologue
    .line 2211
    const/4 v7, 0x0

    .line 2219
    .local v7, bmpDst:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 2220
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2221
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2246
    :goto_0
    if-eqz p2, :cond_1

    .line 2247
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2248
    const/4 p0, 0x0

    .line 2254
    :cond_1
    :goto_1
    return-object v7

    .line 2224
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2225
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2228
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2228
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 2251
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 2252
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static rotate90(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "isNeedRelease"

    .prologue
    .line 2392
    const/4 v0, 0x0

    .line 2408
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2409
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2410
    .local v1, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2411
    .local v5, p:Landroid/graphics/Paint;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2412
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2413
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2414
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 2415
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2416
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2417
    .local v3, h:I
    const/high16 v7, 0x42b4

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    invoke-virtual {v4, v7, v8, v9}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 2418
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, v3, v6

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2422
    invoke-virtual {v1, p0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2425
    if-eqz p1, :cond_0

    .line 2426
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2427
    const/4 p0, 0x0

    .line 2433
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v3           #h:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #p:Landroid/graphics/Paint;
    .end local v6           #w:I
    :cond_0
    :goto_0
    return-object v0

    .line 2430
    :catch_0
    move-exception v2

    .line 2431
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static rotateAndResize(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "rotate"
    .parameter "scale"

    .prologue
    .line 2599
    const/4 v7, 0x0

    .line 2602
    .local v7, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2603
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2604
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2605
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 2606
    :cond_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2607
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2618
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :goto_0
    return-object v7

    .line 2610
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2610
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 2615
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 2616
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static rotateDirect(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "direct"
    .parameter "screenW"
    .parameter "screenH"
    .parameter "isNeedRelease"

    .prologue
    const/4 v2, 0x0

    .line 2259
    const/4 v7, 0x0

    .line 2261
    .local v7, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotateResize direct="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2268
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 2269
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2270
    const-string v0, "FittingWindow copy"

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2271
    if-eqz p4, :cond_1

    .line 2272
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2273
    const/4 p0, 0x0

    .line 2310
    :cond_1
    :goto_0
    return-object v7

    .line 2277
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2278
    .local v5, matrix:Landroid/graphics/Matrix;
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_4

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "direct="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2281
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 2281
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2283
    .local v8, bmpMid:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_3

    .line 2284
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2285
    const/4 p0, 0x0

    .line 2287
    :cond_3
    const/4 v0, 0x1

    invoke-static {v8, p2, p3, v0}, Lcom/mt/image/ImageProcess;->FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2289
    .end local v8           #bmpMid:Landroid/graphics/Bitmap;
    :cond_4
    const-string v0, "rotate src"

    invoke-static {p0, v0}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2290
    const-string v0, "rotate bmpDst"

    invoke-static {v7, v0}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2307
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :catch_0
    move-exception v9

    .line 2308
    .local v9, e:Ljava/lang/Exception;
    invoke-static {v9}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static rotateRect(Landroid/graphics/Bitmap;FFZZZ)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "src"
    .parameter "angle"
    .parameter "degree"
    .parameter "isLeftOrRight"
    .parameter "isNeedRelease"
    .parameter "isPreview"

    .prologue
    .line 2439
    const/4 v2, 0x0

    .line 2441
    .local v2, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 2442
    .local v18, picWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 2443
    .local v17, picHeight:I
    div-int/lit8 v13, v18, 0x2

    .line 2444
    .local v13, mx:I
    div-int/lit8 v14, v17, 0x2

    .line 2445
    .local v14, my:I
    const/4 v12, 0x0

    .line 2446
    .local v12, fSrcAngle:F
    move/from16 v21, p1

    .line 2447
    .local v21, tempAngle:F
    const/4 v5, 0x0

    cmpg-float v5, v21, v5

    if-gez v5, :cond_0

    .line 2448
    const/high16 v5, 0x43b4

    add-float v21, v21, v5

    .line 2461
    :cond_0
    const/high16 v5, 0x3f80

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    move/from16 v0, v18

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v12, v5

    .line 2463
    const-string v5, "rotateRect0"

    invoke-static {v5}, Lcom/mt/tools/MTDebug;->printAvilableMemery2(Ljava/lang/String;)V

    .line 2464
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2466
    const-string v5, "rotateRect"

    invoke-static {v5}, Lcom/mt/tools/MTDebug;->printAvilableMemery2(Ljava/lang/String;)V

    .line 2467
    if-eqz p4, :cond_1

    .line 2468
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2469
    const/16 p0, 0x0

    .line 2472
    :cond_1
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 2474
    .local v20, rectCut:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v18, v5

    div-int/lit8 v15, v5, 0x2

    .line 2475
    .local v15, nPosX:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v17, v5

    div-int/lit8 v16, v5, 0x2

    .line 2476
    .local v16, nPosY:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "angle="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2477
    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 2478
    const/high16 v5, -0x4080

    mul-float p1, p1, v5

    .line 2480
    :cond_2
    :goto_0
    const/high16 v5, 0x43b4

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_6

    .line 2483
    const/high16 v5, 0x4334

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    .line 2484
    const/high16 v5, 0x43b4

    sub-float p1, v5, p1

    .line 2486
    :cond_3
    const/high16 v5, 0x42b4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 2487
    const/high16 v5, 0x4334

    sub-float p1, v5, p1

    .line 2491
    :cond_4
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 2492
    const/high16 v5, 0x3f80

    move/from16 v0, v18

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v12

    move/from16 v0, p1

    float-to-double v9, v0

    .line 2493
    const-wide v22, 0x400921fb54442d18L

    mul-double v9, v9, v22

    const-wide v22, 0x4066800000000000L

    div-double v9, v9, v22

    sub-double/2addr v7, v9

    .line 2492
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v0, v5

    move/from16 v19, v0

    .line 2494
    .local v19, r:I
    move/from16 v0, v19

    int-to-double v5, v0

    float-to-double v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 2495
    .local v3, w:I
    move/from16 v0, v19

    int-to-double v5, v0

    float-to-double v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 2502
    .local v4, h:I
    :goto_1
    sub-int v5, v13, v3

    sub-int v6, v14, v4

    add-int v7, v13, v3

    add-int v8, v14, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2517
    if-eqz p3, :cond_8

    .line 2518
    move/from16 v3, v17

    .line 2519
    move/from16 v4, v18

    .line 2525
    :goto_2
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v15

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v16

    .line 2526
    move-object/from16 v0, v20

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v15

    .line 2527
    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v16

    const/4 v9, 0x1

    move/from16 v10, p5

    .line 2524
    invoke-static/range {v2 .. v10}, Lcom/mt/image/ImageProcess;->cutAndResizeRotate(Landroid/graphics/Bitmap;IIIIIIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2529
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x43b4

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_5

    .line 2530
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-static {v2, v0, v5}, Lcom/mt/image/ImageProcess;->rotate(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2537
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v12           #fSrcAngle:F
    .end local v13           #mx:I
    .end local v14           #my:I
    .end local v15           #nPosX:I
    .end local v16           #nPosY:I
    .end local v17           #picHeight:I
    .end local v18           #picWidth:I
    .end local v19           #r:I
    .end local v20           #rectCut:Landroid/graphics/Rect;
    .end local v21           #tempAngle:F
    :cond_5
    :goto_3
    return-object v2

    .line 2481
    .restart local v12       #fSrcAngle:F
    .restart local v13       #mx:I
    .restart local v14       #my:I
    .restart local v15       #nPosX:I
    .restart local v16       #nPosY:I
    .restart local v17       #picHeight:I
    .restart local v18       #picWidth:I
    .restart local v20       #rectCut:Landroid/graphics/Rect;
    .restart local v21       #tempAngle:F
    :cond_6
    const/high16 v5, 0x43b4

    sub-float p1, p1, v5

    goto/16 :goto_0

    .line 2497
    :cond_7
    const/high16 v5, 0x3f80

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v12

    move/from16 v0, p1

    float-to-double v9, v0

    .line 2498
    const-wide v22, 0x400921fb54442d18L

    mul-double v9, v9, v22

    const-wide v22, 0x4066800000000000L

    div-double v9, v9, v22

    add-double/2addr v7, v9

    const-wide v9, 0x3ff921fb54442d18L

    sub-double/2addr v7, v9

    .line 2497
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v0, v5

    move/from16 v19, v0

    .line 2499
    .restart local v19       #r:I
    move/from16 v0, v19

    int-to-double v5, v0

    float-to-double v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 2500
    .restart local v3       #w:I
    move/from16 v0, v19

    int-to-double v5, v0

    float-to-double v7, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 2521
    :cond_8
    move/from16 v3, v18

    .line 2522
    move/from16 v4, v17

    goto :goto_2

    .line 2534
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v12           #fSrcAngle:F
    .end local v13           #mx:I
    .end local v14           #my:I
    .end local v15           #nPosX:I
    .end local v16           #nPosY:I
    .end local v17           #picHeight:I
    .end local v18           #picWidth:I
    .end local v19           #r:I
    .end local v20           #rectCut:Landroid/graphics/Rect;
    .end local v21           #tempAngle:F
    :catch_0
    move-exception v11

    .line 2535
    .local v11, e:Ljava/lang/Exception;
    invoke-static {v11}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static rotateResize(Landroid/graphics/Bitmap;FFIIZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "src"
    .parameter "direct"
    .parameter "degress"
    .parameter "screenW"
    .parameter "screenH"
    .parameter "isNeedRelease"

    .prologue
    .line 2314
    const/4 v15, 0x0

    .line 2316
    .local v15, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rotateResize direct="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " degress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2323
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x43b4

    cmpl-float v3, p2, v3

    if-nez v3, :cond_2

    .line 2324
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2325
    const-string v3, "FittingWindow copy"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2326
    if-eqz p5, :cond_1

    .line 2327
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2328
    const/16 p0, 0x0

    .line 2388
    :cond_1
    :goto_0
    return-object v15

    .line 2333
    :cond_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 2334
    .local v7, matrix:Landroid/graphics/Matrix;
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_6

    .line 2335
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "direct="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2336
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2337
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2338
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    .line 2337
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2339
    .local v2, bmpMid:Landroid/graphics/Bitmap;
    if-eqz p5, :cond_3

    .line 2340
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2341
    const/16 p0, 0x0

    .line 2343
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v1, v3}, Lcom/mt/image/ImageProcess;->FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2344
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_5

    .line 2345
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "degress="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2347
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2348
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2349
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 2348
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2350
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2367
    .end local v2           #bmpMid:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    const-string v3, "rotate src"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2368
    const-string v3, "rotate bmpDst"

    invoke-static {v15, v3}, Lcom/mt/tools/MTDebug;->printConfig(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2385
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :catch_0
    move-exception v16

    .line 2386
    .local v16, e:Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 2353
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v2       #bmpMid:Landroid/graphics/Bitmap;
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    :cond_5
    move-object v15, v2

    goto :goto_1

    .line 2357
    .end local v2           #bmpMid:Landroid/graphics/Bitmap;
    :cond_6
    :try_start_1
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2358
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2359
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 2360
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    move-object/from16 v8, p0

    move-object v13, v7

    .line 2359
    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2361
    if-eqz p5, :cond_4

    .line 2362
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2363
    const/16 p0, 0x0

    goto :goto_1
.end method

.method public static saturation(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "sat"
    .parameter "isNeedRelease"

    .prologue
    .line 2821
    const/4 v0, 0x0

    .line 2823
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2824
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_2

    .line 2825
    const-string v6, "saturation bmpDst.getConfig() == Config.RGB_565"

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2831
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2833
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2834
    .local v5, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 2835
    .local v2, colorMatrix:Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 2836
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 2838
    .local v3, colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2839
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2840
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2841
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2842
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, p0, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2843
    if-eqz p2, :cond_1

    .line 2844
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2845
    const/4 p0, 0x0

    .line 2851
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #colorMatrix:Landroid/graphics/ColorMatrix;
    .end local v3           #colorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_1
    :goto_1
    return-object v0

    .line 2827
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_0

    .line 2828
    const-string v6, "saturation bmpDst.getConfig() == Config.ARGB_8888"

    invoke-static {v6}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2848
    :catch_0
    move-exception v4

    .line 2849
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static savePic(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "path"
    .parameter "bmp"
    .parameter "quality"

    .prologue
    .line 83
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, myCaptureFile:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 86
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 90
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 91
    const-string v3, "savepic jpeg 95"

    invoke-static {v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 97
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    :goto_1
    return-void

    .line 92
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 93
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 103
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 98
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-static {v1}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static savePic2(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "path"
    .parameter "bmp"
    .parameter "quality"

    .prologue
    const/4 v5, 0x1

    .line 112
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v4, myCaptureFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 117
    .local v1, bos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    .end local v1           #bos:Ljava/io/FileOutputStream;
    .local v2, bos:Ljava/io/FileOutputStream;
    if-ne p2, v5, :cond_1

    .line 120
    :try_start_1
    sget-object v5, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, bmpMid:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v0           #bmpMid:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 128
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .end local v2           #bos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 123
    .restart local v2       #bos:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    .line 124
    :try_start_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 136
    .end local v2           #bos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/FileOutputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 129
    .end local v1           #bos:Ljava/io/FileOutputStream;
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #bos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 131
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 134
    .end local v2           #bos:Ljava/io/FileOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public static savePicHigh(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "path"
    .parameter "bmp"
    .parameter "quality"

    .prologue
    .line 75
    return-void
.end method

.method public static scale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "scale"
    .parameter "isNeedRelease"

    .prologue
    const/4 v5, 0x1

    .line 2623
    const/4 v0, 0x0

    .line 2629
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    const/high16 v4, 0x3f80

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    .line 2630
    :try_start_0
    sget-object v4, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2631
    const-string v4, "FittingWindow copy"

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2649
    :goto_0
    if-eqz p2, :cond_0

    .line 2650
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2651
    const/4 p0, 0x0

    .line 2657
    :cond_0
    :goto_1
    return-object v0

    .line 2634
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v2, v4

    .line 2635
    .local v2, dstW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 2636
    .local v1, dstH:I
    if-ge v2, v5, :cond_2

    .line 2637
    const/4 v2, 0x1

    .line 2639
    :cond_2
    if-ge v1, v5, :cond_3

    .line 2640
    const/4 v1, 0x1

    .line 2642
    :cond_3
    const-string v4, "TEMP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "__________scale dstW="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2643
    const-string v6, " srcW="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2642
    invoke-static {v4, v5}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p0, v2, v1, v4}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2654
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    :catch_0
    move-exception v3

    .line 2655
    .local v3, e:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static scalePingTu(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "scale"
    .parameter "isNeedRelease"

    .prologue
    const v6, 0x3f7d70a4

    const/4 v5, 0x1

    .line 2662
    const/4 v0, 0x0

    .line 2668
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    const/high16 v4, 0x3f80

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    .line 2669
    :try_start_0
    sget-object v4, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2670
    const-string v4, "FittingWindow copy"

    invoke-static {v4}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;)V

    .line 2686
    :goto_0
    if-eqz p2, :cond_0

    .line 2687
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2688
    const/4 p0, 0x0

    .line 2694
    :cond_0
    :goto_1
    return-object v0

    .line 2673
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 2674
    .local v2, dstW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 2675
    .local v1, dstH:I
    if-ge v2, v5, :cond_2

    .line 2676
    const/4 v2, 0x1

    .line 2678
    :cond_2
    if-ge v1, v5, :cond_3

    .line 2679
    const/4 v1, 0x1

    .line 2681
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p0, v2, v1, v4}, Lcom/mt/image/ImageProcess;->createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2691
    .end local v1           #dstH:I
    .end local v2           #dstW:I
    :catch_0
    move-exception v3

    .line 2692
    .local v3, e:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static toARGB(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"

    .prologue
    .line 2782
    const/4 v0, 0x0

    .line 2784
    .local v0, bmpDst:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2785
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2786
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2787
    .local v3, mPaint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2788
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #mPaint:Landroid/graphics/Paint;
    :goto_0
    return-object v0

    .line 2790
    :catch_0
    move-exception v2

    .line 2791
    .local v2, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
