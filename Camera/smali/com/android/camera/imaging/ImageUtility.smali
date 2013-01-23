.class public final Lcom/android/camera/imaging/ImageUtility;
.super Ljava/lang/Object;
.source "ImageUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imaging/ImageUtility$1;
    }
.end annotation


# static fields
.field private static final PIXEL_FORMAT_ARGB8888:I = 0x2

.field private static final PIXEL_FORMAT_RGB565:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageUtility"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/android/camera/CameraNativeLibrary;->initialize()V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method private static addRotateFilter(Lcom/scalado/caps/Session;I)V
    .locals 3
    .parameter "session"
    .parameter "degree"

    .prologue
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "angle can only be 0, 90, 180 or 270"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :sswitch_0
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 56
    .local v0, rotate:Lcom/scalado/caps/filter/Rotate;
    sget-object v1, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    .line 74
    .end local v0           #rotate:Lcom/scalado/caps/filter/Rotate;
    :goto_0
    :sswitch_1
    return-void

    .line 61
    :sswitch_2
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 62
    .restart local v0       #rotate:Lcom/scalado/caps/filter/Rotate;
    sget-object v1, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    goto :goto_0

    .line 67
    .end local v0           #rotate:Lcom/scalado/caps/filter/Rotate;
    :sswitch_3
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 68
    .restart local v0       #rotate:Lcom/scalado/caps/filter/Rotate;
    sget-object v1, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "image"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "image"
    .parameter "rotateDegree"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "rotateDegree"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v1

    .line 196
    .local v1, config:Lcom/scalado/base/Image$Config;
    if-nez p3, :cond_0

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne v1, v9, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    if-ne p1, v9, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    if-eq p2, v9, :cond_1

    .line 198
    :cond_0
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v2, p0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 199
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 200
    .local v7, session:Lcom/scalado/caps/Session;
    new-instance v6, Lcom/scalado/base/Image;

    new-instance v9, Lcom/scalado/base/Size;

    invoke-direct {v9, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v10, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v6, v9, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 201
    .local v6, newImage:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v6}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 202
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {v7, p3}, Lcom/android/camera/imaging/ImageUtility;->addRotateFilter(Lcom/scalado/caps/Session;I)V

    .line 205
    :try_start_0
    invoke-virtual {v7, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 206
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    move-object p0, v6

    .line 216
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #newImage:Lcom/scalado/base/Image;
    .end local v7           #session:Lcom/scalado/caps/Session;
    :cond_1
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    .line 217
    .local v8, size:Lcom/scalado/base/Size;
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 221
    return-object v0

    .line 208
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #size:Lcom/scalado/base/Size;
    .restart local v2       #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v6       #newImage:Lcom/scalado/base/Image;
    .restart local v7       #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v4

    .line 210
    .local v4, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "session"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "session"
    .parameter "rotateDegree"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 86
    .local v0, size:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-static {p0, v1, v2, p1}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "session"
    .parameter "width"
    .parameter "height"
    .parameter "rotateDegree"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v5

    .line 92
    .local v5, size:Lcom/scalado/base/Size;
    sparse-switch p3, :sswitch_data_0

    .line 105
    :goto_0
    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/scalado/base/Image;

    sget-object v6, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 109
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v1, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 110
    .local v1, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-static {p0, p3}, Lcom/android/camera/imaging/ImageUtility;->addRotateFilter(Lcom/scalado/caps/Session;I)V

    .line 113
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 114
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 123
    return-object v0

    .line 96
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :sswitch_0
    new-instance v5, Lcom/scalado/base/Size;

    .end local v5           #size:Lcom/scalado/base/Size;
    invoke-direct {v5, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    .line 97
    .restart local v5       #size:Lcom/scalado/base/Size;
    goto :goto_0

    .line 100
    :sswitch_1
    new-instance v5, Lcom/scalado/base/Size;

    .end local v5           #size:Lcom/scalado/base/Size;
    invoke-direct {v5, p2, p1}, Lcom/scalado/base/Size;-><init>(II)V

    .restart local v5       #size:Lcom/scalado/base/Size;
    goto :goto_0

    .line 116
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v3       #image:Lcom/scalado/base/Image;
    :catch_0
    move-exception v2

    .line 118
    .local v2, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "session"
    .parameter "targetBitmap"
    .parameter "rotateDegree"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V

    .line 128
    return-void
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V
    .locals 25
    .parameter "session"
    .parameter "targetBitmap"
    .parameter "rotateDegree"
    .parameter "maintainRatio"

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v13

    .line 133
    .local v13, srcSize:Lcom/scalado/base/Size;
    sparse-switch p2, :sswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 140
    :sswitch_0
    new-instance v14, Lcom/scalado/base/Size;

    invoke-virtual {v13}, Lcom/scalado/base/Size;->getHeight()I

    move-result v19

    invoke-virtual {v13}, Lcom/scalado/base/Size;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lcom/scalado/base/Size;-><init>(II)V

    .end local v13           #srcSize:Lcom/scalado/base/Size;
    .local v14, srcSize:Lcom/scalado/base/Size;
    move-object v13, v14

    .line 147
    .end local v14           #srcSize:Lcom/scalado/base/Size;
    .restart local v13       #srcSize:Lcom/scalado/base/Size;
    :sswitch_1
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v6, canvas:Landroid/graphics/Canvas;
    if-eqz p3, :cond_0

    .line 152
    const/high16 v19, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-virtual {v13}, Lcom/scalado/base/Size;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v9, v19, v21

    .line 156
    .local v9, ratioX:D
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-virtual {v13}, Lcom/scalado/base/Size;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v11, v19, v21

    .line 157
    .local v11, ratioY:D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 158
    .local v7, ratio:D
    invoke-virtual {v13}, Lcom/scalado/base/Size;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v7

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v16, v0

    .line 159
    .local v16, targetWidth:I
    invoke-virtual {v13}, Lcom/scalado/base/Size;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v7

    move-wide/from16 v0, v19

    double-to-int v15, v0

    .line 160
    .local v15, targetHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 161
    .local v17, targetX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v19, v19, v15

    div-int/lit8 v18, v19, 0x2

    .line 164
    .local v18, targetY:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-static {v0, v1, v15, v2}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 167
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v17, v16

    add-int v22, v18, v15

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    .end local v7           #ratio:D
    .end local v9           #ratioX:D
    .end local v11           #ratioY:D
    .end local v15           #targetHeight:I
    .end local v16           #targetWidth:I
    .end local v17           #targetX:I
    .end local v18           #targetY:I
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 175
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 176
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToScaladoImage(Landroid/graphics/Bitmap;)Lcom/scalado/base/Image;
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 231
    sget-object v4, Lcom/android/camera/imaging/ImageUtility$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 240
    const-string v4, "ImageUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported bitmap config : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupported bitmap config"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :pswitch_0
    sget-object v1, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    .line 245
    .local v1, config:Lcom/scalado/base/Image$Config;
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 246
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 247
    .local v2, height:I
    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 251
    new-instance v4, Lcom/scalado/base/Image;

    new-instance v5, Lcom/scalado/base/Buffer;

    invoke-direct {v5, v0}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v6, Lcom/scalado/base/Size;

    invoke-direct {v6, v3, v2}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v4, v5, v6, v1}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    return-object v4

    .line 237
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #config:Lcom/scalado/base/Image$Config;
    .end local v2           #height:I
    .end local v3           #width:I
    :pswitch_1
    sget-object v1, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    .line 238
    .restart local v1       #config:Lcom/scalado/base/Image$Config;
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "rawData"

    .prologue
    .line 259
    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p3}, Lcom/scalado/base/Buffer;-><init>([B)V

    new-instance v2, Lcom/scalado/base/Size;

    invoke-direct {v2, p0, p1}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, p2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    return-object v0
.end method

.method public static getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;)Landroid/graphics/Rect;
    .locals 1
    .parameter "outerBounds"
    .parameter "contentSize"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;
    .locals 5
    .parameter "outerBounds"
    .parameter "contentSize"
    .parameter "stretch"

    .prologue
    .line 272
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 273
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 286
    :goto_0
    return-object v0

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p1, Lcom/android/camera/imaging/Size;->width:I

    iget v4, p1, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v1, v2, v3, v4, p2}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(IIIIZ)Lcom/android/camera/imaging/Size;

    move-result-object p1

    .line 279
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 280
    .local v0, bounds:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p1, Lcom/android/camera/imaging/Size;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 281
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p1, Lcom/android/camera/imaging/Size;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 282
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/android/camera/imaging/Size;->width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 283
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Lcom/android/camera/imaging/Size;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public static getRatioStretchSize(IIII)Lcom/android/camera/imaging/Size;
    .locals 1
    .parameter "outerWidth"
    .parameter "outerHeight"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(IIIIZ)Lcom/android/camera/imaging/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getRatioStretchSize(IIIIZ)Lcom/android/camera/imaging/Size;
    .locals 11
    .parameter "outerWidth"
    .parameter "outerHeight"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "stretch"

    .prologue
    .line 308
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    .line 309
    :cond_0
    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-direct {v0}, Lcom/android/camera/imaging/Size;-><init>()V

    .line 329
    :cond_1
    :goto_0
    return-object v0

    .line 312
    :cond_2
    int-to-double v7, p0

    int-to-double v9, p2

    div-double v3, v7, v9

    .line 313
    .local v3, ratioX:D
    int-to-double v7, p1

    int-to-double v9, p3

    div-double v5, v7, v9

    .line 314
    .local v5, ratioY:D
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 317
    .local v1, ratio:D
    new-instance v0, Lcom/android/camera/imaging/Size;

    int-to-double v7, p2

    mul-double/2addr v7, v1

    double-to-int v7, v7

    int-to-double v8, p3

    mul-double/2addr v8, v1

    double-to-int v8, v8

    invoke-direct {v0, v7, v8}, Lcom/android/camera/imaging/Size;-><init>(II)V

    .line 320
    .local v0, newSize:Lcom/android/camera/imaging/Size;
    if-eqz p4, :cond_1

    .line 322
    iget v7, v0, Lcom/android/camera/imaging/Size;->width:I

    sub-int v7, p0, v7

    int-to-double v7, v7

    iget v9, v0, Lcom/android/camera/imaging/Size;->width:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    const-wide v9, 0x3fa999999999999aL

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3

    .line 323
    iput p0, v0, Lcom/android/camera/imaging/Size;->width:I

    .line 324
    :cond_3
    iget v7, v0, Lcom/android/camera/imaging/Size;->height:I

    sub-int v7, p1, v7

    int-to-double v7, v7

    iget v9, v0, Lcom/android/camera/imaging/Size;->height:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    const-wide v9, 0x3fa999999999999aL

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    .line 325
    iput p1, v0, Lcom/android/camera/imaging/Size;->height:I

    goto :goto_0
.end method

.method public static getRatioStretchSize(Lcom/android/camera/imaging/Size;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 4
    .parameter "outerSize"
    .parameter "contentSize"

    .prologue
    .line 295
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    new-instance v0, Lcom/android/camera/imaging/Size;

    invoke-direct {v0}, Lcom/android/camera/imaging/Size;-><init>()V

    .line 299
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/camera/imaging/Size;->width:I

    iget v1, p0, Lcom/android/camera/imaging/Size;->height:I

    iget v2, p1, Lcom/android/camera/imaging/Size;->width:I

    iget v3, p1, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(IIII)Lcom/android/camera/imaging/Size;

    move-result-object v0

    goto :goto_0
.end method

.method public static mapFromCameraArea(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 4
    .parameter "cameraAreaPoint"

    .prologue
    const/high16 v3, 0x44fa

    .line 360
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Point;->x:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Landroid/graphics/Point;->y:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static mapFromCameraArea(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 6
    .parameter "cameraAreaBounds"

    .prologue
    const/high16 v5, 0x44fa

    .line 352
    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float v1, v4, v5

    .line 353
    .local v1, left:F
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 354
    .local v3, top:F
    iget v4, p0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float v2, v4, v5

    .line 355
    .local v2, right:F
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float v0, v4, v5

    .line 356
    .local v0, bottom:F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public static mapToCameraArea(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 4
    .parameter "normalizedPoint"

    .prologue
    const/high16 v3, 0x44fa

    .line 345
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0x3e8

    iget v2, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit16 v2, v2, -0x3e8

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6
    .parameter "normalizedBounds"

    .prologue
    const/high16 v5, 0x44fa

    .line 337
    iget v4, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit16 v1, v4, -0x3e8

    .line 338
    .local v1, left:I
    iget v4, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit16 v3, v4, -0x3e8

    .line 339
    .local v3, top:I
    iget v4, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit16 v2, v4, -0x3e8

    .line 340
    .local v2, right:I
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit16 v0, v4, -0x3e8

    .line 341
    .local v0, bottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 396
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 398
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 402
    :cond_0
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "degree"

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "degree"
    .parameter "recycle"

    .prologue
    const/4 v1, 0x0

    .line 414
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 415
    .local v5, matrix:Landroid/graphics/Matrix;
    sparse-switch p1, :sswitch_data_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "degree can only be 0, 90, 180 or 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :sswitch_0
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 428
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 429
    .local v7, newBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    :cond_0
    return-object v7

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static native rotateRgb565Image90Clockwise(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Z
.end method

.method public static roundOrientation(I)I
    .locals 2
    .parameter "orientation"

    .prologue
    .line 371
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 372
    const/4 p0, 0x0

    .line 374
    :cond_0
    rem-int/lit16 p0, p0, 0x168

    .line 376
    const/16 v1, 0x2d

    if-ge p0, v1, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 388
    .local v0, retVal:I
    :goto_0
    return v0

    .line 378
    .end local v0           #retVal:I
    :cond_1
    const/16 v1, 0x87

    if-ge p0, v1, :cond_2

    .line 379
    const/16 v0, 0x5a

    .restart local v0       #retVal:I
    goto :goto_0

    .line 380
    .end local v0           #retVal:I
    :cond_2
    const/16 v1, 0xe1

    if-ge p0, v1, :cond_3

    .line 381
    const/16 v0, 0xb4

    .restart local v0       #retVal:I
    goto :goto_0

    .line 382
    .end local v0           #retVal:I
    :cond_3
    const/16 v1, 0x13b

    if-ge p0, v1, :cond_4

    .line 383
    const/16 v0, 0x10e

    .restart local v0       #retVal:I
    goto :goto_0

    .line 385
    .end local v0           #retVal:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #retVal:I
    goto :goto_0
.end method

.method public static yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "yuvData"
    .parameter "width"
    .parameter "height"
    .parameter "rotateAngle"
    .parameter "flipY"

    .prologue
    .line 452
    sparse-switch p3, :sswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 456
    :sswitch_0
    move v8, p1

    .line 457
    .local v8, bmpWidth:I
    move v7, p2

    .line 469
    .local v7, bmpHeight:I
    :goto_0
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 470
    .local v3, rgbBuffer:Ljava/nio/ByteBuffer;
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, bitmap:Landroid/graphics/Bitmap;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 473
    invoke-static/range {v0 .. v5}, Lcom/android/camera/imaging/ImageUtility;->yvu420spToRgb565([BIILjava/nio/ByteBuffer;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 461
    .end local v3           #rgbBuffer:Ljava/nio/ByteBuffer;
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bmpHeight:I
    .end local v8           #bmpWidth:I
    :sswitch_1
    move v8, p2

    .line 462
    .restart local v8       #bmpWidth:I
    move v7, p1

    .line 463
    .restart local v7       #bmpHeight:I
    goto :goto_0

    .line 477
    .restart local v3       #rgbBuffer:Ljava/nio/ByteBuffer;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 478
    return-object v6

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static native yvu420spToRgb565(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Z
.end method

.method public static native yvu420spToRgb565([BIILjava/nio/ByteBuffer;IZ)Z
.end method
