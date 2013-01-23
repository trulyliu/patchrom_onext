.class public final Lcom/android/camera/imaging/ThumbnailUtility;
.super Ljava/lang/Object;
.source "ThumbnailUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create3DVideoThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const-string v8, "ThumbnailUtility"

    const-string v9, "create3DVideoThumbnailImage("

    const-string v10, ")"

    invoke-static {v8, v9, p0, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 42
    .local v6, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 43
    const-wide/16 v8, -0x1

    invoke-virtual {v6, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    .local v2, firstFrame:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 47
    .local v5, imageWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 48
    .local v4, imageHeight:I
    invoke-static {v2}, Lcom/android/camera/imaging/ImageUtility;->convertToScaladoImage(Landroid/graphics/Bitmap;)Lcom/scalado/base/Image;

    move-result-object v3

    .line 49
    .local v3, image:Lcom/scalado/base/Image;
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v0, v3}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 50
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 53
    .local v7, session:Lcom/scalado/caps/Session;
    const/4 v8, 0x0

    invoke-static {v7, v5, v4, v8}, Lcom/android/camera/imaging/ThumbnailUtility;->cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 62
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v8

    .line 55
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v2           #firstFrame:Landroid/graphics/Bitmap;
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #imageHeight:I
    .end local v5           #imageWidth:I
    .end local v7           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v1

    .line 57
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "ThumbnailUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot create thumbnail image from 3D video file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v8
.end method

.method private static createJpsThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    const-string v6, "ThumbnailUtility"

    const-string v7, "createJpsThumbnailImage("

    const-string v8, ")"

    invoke-static {v6, v7, p0, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    new-instance v5, Lcom/scalado/stream/FileStream;

    sget-object v6, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v5, p0, v6}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    .line 77
    .local v5, stream:Lcom/scalado/stream/FileStream;
    :try_start_0
    invoke-static {v5}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v3

    .line 78
    .local v3, iterator:Lcom/scalado/base/Iterator;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/scalado/base/Iterator;->step(I)F

    .line 79
    invoke-virtual {v3}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 80
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 83
    .local v4, session:Lcom/scalado/caps/Session;
    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 84
    .local v2, imageSize:Lcom/scalado/base/Size;
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/camera/imaging/ThumbnailUtility;->cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 93
    invoke-virtual {v5}, Lcom/scalado/stream/FileStream;->close()V

    return-object v6

    .line 86
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v2           #imageSize:Lcom/scalado/base/Size;
    .end local v3           #iterator:Lcom/scalado/base/Iterator;
    .end local v4           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ThumbnailUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create thumbnail image from JPS file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/scalado/stream/FileStream;->close()V

    throw v6
.end method

.method public static createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 142
    if-nez p0, :cond_0

    .line 144
    const-string v1, "filePath"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 147
    :cond_0
    if-nez p1, :cond_1

    .line 149
    const-string v1, "mimeType"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 154
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_3

    .line 172
    :cond_2
    :goto_0
    return-object v1

    .line 156
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, mediaType:Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    const-string v1, "image/jps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    invoke-static {p0}, Lcom/android/camera/imaging/ThumbnailUtility;->createJpsThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_4
    invoke-static {p0, v4}, Lcom/htc/wrap/android/media/HtcWrapThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_5
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const-string v1, "video/3gpp-3d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "video/mp4-3d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    :cond_6
    invoke-static {p0}, Lcom/android/camera/imaging/ThumbnailUtility;->create3DVideoThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_7
    invoke-static {p0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static createThumbnailImage([BIIII)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "jpegRawData"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "thumbWidth"
    .parameter "thumbHeight"

    .prologue
    .line 198
    if-nez p0, :cond_1

    .line 200
    const-string v11, "jpegRawData"

    invoke-static {v11}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 201
    const/4 v9, 0x0

    .line 248
    :cond_0
    :goto_0
    return-object v9

    .line 203
    :cond_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    if-gtz p4, :cond_3

    .line 205
    :cond_2
    const-string v11, "ThumbnailUtility"

    const-string v12, "createThumbnailImage() - Invalid image or thumbnail size"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v9, 0x0

    goto :goto_0

    .line 210
    :cond_3
    const/4 v5, 0x0

    .line 214
    .local v5, originalImage:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 216
    .local v3, iamgeSize:I
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 217
    .local v10, thumbSize:I
    if-le v3, v10, :cond_4

    .line 219
    int-to-double v11, v3

    int-to-double v13, v10

    div-double v6, v11, v13

    .line 220
    .local v6, ratio:D
    const/4 v8, 0x2

    .line 222
    .local v8, sampleSize:I
    :goto_1
    int-to-double v11, v8

    cmpl-double v11, v11, v6

    if-ltz v11, :cond_5

    .line 224
    shr-int/lit8 v11, v8, 0x1

    iput v11, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 231
    .end local v6           #ratio:D
    .end local v8           #sampleSize:I
    :cond_4
    const/4 v11, 0x0

    array-length v12, p0

    invoke-static {p0, v11, v12, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 234
    if-le v3, v10, :cond_6

    .line 235
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v5, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 247
    if-eqz v5, :cond_0

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 220
    .restart local v6       #ratio:D
    .restart local v8       #sampleSize:I
    :cond_5
    shl-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 236
    .end local v6           #ratio:D
    .end local v8           #sampleSize:I
    :cond_6
    move-object v9, v5

    .line 237
    .local v9, thumb:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 247
    if-eqz v5, :cond_0

    .line 248
    throw v5

    goto :goto_0

    .line 240
    .end local v3           #iamgeSize:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #thumb:Landroid/graphics/Bitmap;
    .end local v10           #thumbSize:I
    :catch_0
    move-exception v2

    .line 242
    .local v2, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v11, "ThumbnailUtility"

    const-string v12, "createThumbnailImage() - Cannot create thumbnail image"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    const/4 v9, 0x0

    .line 247
    if-eqz v5, :cond_0

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 247
    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_7

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    throw v11
.end method

.method public static createThumbnailImage([BLcom/android/camera/imaging/Size;Lcom/android/camera/imaging/Size;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jpegRawData"
    .parameter "imageSize"
    .parameter "thumbSize"

    .prologue
    const/4 v0, 0x0

    .line 181
    if-nez p1, :cond_0

    .line 183
    const-string v1, "imageSize"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 193
    :goto_0
    return-object v0

    .line 186
    :cond_0
    if-nez p2, :cond_1

    .line 188
    const-string v1, "thumbSize"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    iget v0, p1, Lcom/android/camera/imaging/Size;->width:I

    iget v1, p1, Lcom/android/camera/imaging/Size;->height:I

    iget v2, p2, Lcom/android/camera/imaging/Size;->width:I

    iget v3, p2, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "session"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "isFullSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p3, :cond_0

    .line 106
    mul-int/lit8 p1, p1, 0x2

    .line 107
    new-instance v4, Lcom/scalado/base/Image;

    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v4, v8, v9}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 108
    .local v4, fullSizeImage:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v4}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 109
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 110
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 113
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v2, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 114
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance p0, Lcom/scalado/caps/Session;

    .end local p0
    invoke-direct {p0, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 118
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v4           #fullSizeImage:Lcom/scalado/base/Image;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .restart local p0
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 119
    new-instance v0, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 120
    .local v0, crop:Lcom/scalado/caps/filter/Crop;
    if-lt p1, p2, :cond_1

    move v1, p2

    .line 121
    .local v1, cropSize:I
    :goto_0
    new-instance v8, Lcom/scalado/base/Rect;

    sub-int v9, p1, v1

    div-int/lit8 v9, v9, 0x2

    sub-int v10, p2, v1

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10, v1, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-virtual {v0, v8}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 124
    new-instance v7, Lcom/scalado/base/Image;

    new-instance v8, Lcom/scalado/base/Size;

    const/16 v9, 0xc8

    const/16 v10, 0xc8

    invoke-direct {v8, v9, v10}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v7, v8, v9}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 125
    .local v7, thumbBuffer:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v7}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 126
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 127
    .restart local v5       #iterator:Lcom/scalado/base/Iterator;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/scalado/base/Iterator;->step(I)F

    .line 130
    const/16 v8, 0xc8

    const/16 v9, 0xc8

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 131
    .local v6, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 132
    const-string v8, "ThumbnailUtility"

    const-string v9, "createJpsThumbnailImage() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object v6

    .end local v1           #cropSize:I
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    .end local v6           #thumb:Landroid/graphics/Bitmap;
    .end local v7           #thumbBuffer:Lcom/scalado/base/Image;
    :cond_1
    move v1, p1

    .line 120
    goto :goto_0
.end method
