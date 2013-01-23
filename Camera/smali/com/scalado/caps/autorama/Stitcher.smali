.class public Lcom/scalado/caps/autorama/Stitcher;
.super Lcom/scalado/jni/JniPeer;
.source "Stitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;,
        Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    }
.end annotation


# instance fields
.field private blendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field private blendModeOptions:Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

.field private direction:Lcom/scalado/caps/autorama/Direction;

.field private imageCount:I

.field private imageDimensions:Lcom/scalado/base/Size;

.field private refObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 426
    invoke-static {}, Lcom/scalado/caps/autorama/Stitcher;->nativeClassInit()V

    .line 427
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Direction;)V
    .locals 2
    .parameter "lens"
    .parameter "imageDimensions"
    .parameter "direction"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 162
    sget-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-object v0, p0, Lcom/scalado/caps/autorama/Stitcher;->blendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/caps/autorama/Stitcher;->refObjects:Ljava/util/ArrayList;

    .line 183
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_1
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_3

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 191
    :cond_3
    if-nez p3, :cond_4

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 194
    :cond_4
    iput-object p2, p0, Lcom/scalado/caps/autorama/Stitcher;->imageDimensions:Lcom/scalado/base/Size;

    .line 195
    iput-object p3, p0, Lcom/scalado/caps/autorama/Stitcher;->direction:Lcom/scalado/caps/autorama/Direction;

    .line 196
    invoke-virtual {p3}, Lcom/scalado/caps/autorama/Direction;->getValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/scalado/caps/autorama/Stitcher;->nativeCreate(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;I)V

    .line 197
    return-void
.end method

.method private native nativeAddFirstImageJpegBuffer(Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeAddFirstImageJpegFile(Ljava/lang/String;)V
.end method

.method private native nativeAddFirstImageRaw(Lcom/scalado/base/Image;)V
.end method

.method private native nativeAddImageJpegBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/caps/autorama/Transform;)V
.end method

.method private native nativeAddImageJpegFile(Ljava/lang/String;Lcom/scalado/caps/autorama/Transform;)V
.end method

.method private native nativeAddImageRaw(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;I)V
.end method

.method private native nativeSetBlendMode(I)V
.end method


# virtual methods
.method public addImage(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V
    .locals 1
    .parameter "image"
    .parameter "transform"

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 395
    :cond_0
    if-nez p2, :cond_1

    .line 396
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddFirstImageRaw(Lcom/scalado/base/Image;)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddImageRaw(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    goto :goto_0
.end method

.method public addImage(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/autorama/Transform;)V
    .locals 7
    .parameter "decoder"
    .parameter "transform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 295
    .local v1, decDims:Lcom/scalado/base/Size;
    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/caps/autorama/Stitcher;->imageDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/scalado/caps/autorama/Stitcher;->imageDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 297
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Dimensions mismatch."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_2
    instance-of v4, p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    if-eqz v4, :cond_5

    .line 301
    check-cast p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    .line 302
    .local v2, image:Lcom/scalado/base/Image;
    if-nez p2, :cond_4

    .line 303
    invoke-direct {p0, v2}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddFirstImageRaw(Lcom/scalado/base/Image;)V

    .line 308
    :goto_0
    iget v4, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    .line 309
    iget-object v4, p0, Lcom/scalado/caps/autorama/Stitcher;->refObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v2           #image:Lcom/scalado/base/Image;
    :cond_3
    :goto_1
    return-void

    .line 306
    .restart local v2       #image:Lcom/scalado/base/Image;
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddImageRaw(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    goto :goto_0

    .line 310
    .end local v2           #image:Lcom/scalado/base/Image;
    .restart local p1
    :cond_5
    instance-of v4, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v4, :cond_9

    .line 311
    check-cast p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v3

    .line 312
    .local v3, stream:Lcom/scalado/stream/Stream;
    instance-of v4, v3, Lcom/scalado/stream/BufferStream;

    if-eqz v4, :cond_7

    .line 313
    check-cast v3, Lcom/scalado/stream/BufferStream;

    .end local v3           #stream:Lcom/scalado/stream/Stream;
    invoke-virtual {v3}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v0

    .line 314
    .local v0, buffer:Lcom/scalado/base/Buffer;
    if-nez p2, :cond_6

    .line 315
    invoke-direct {p0, v0}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddFirstImageJpegBuffer(Lcom/scalado/base/Buffer;)V

    .line 320
    :goto_2
    iget v4, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    .line 321
    iget-object v4, p0, Lcom/scalado/caps/autorama/Stitcher;->refObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddImageJpegBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/caps/autorama/Transform;)V

    goto :goto_2

    .line 322
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .restart local v3       #stream:Lcom/scalado/stream/Stream;
    :cond_7
    instance-of v4, v3, Lcom/scalado/stream/FileStream;

    if-eqz v4, :cond_3

    .line 325
    if-nez p2, :cond_8

    .line 326
    check-cast v3, Lcom/scalado/stream/FileStream;

    .end local v3           #stream:Lcom/scalado/stream/Stream;
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddFirstImageJpegFile(Ljava/lang/String;)V

    .line 333
    :goto_3
    iget v4, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    goto :goto_1

    .line 330
    .restart local v3       #stream:Lcom/scalado/stream/Stream;
    :cond_8
    check-cast v3, Lcom/scalado/stream/FileStream;

    .end local v3           #stream:Lcom/scalado/stream/Stream;
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddImageJpegFile(Ljava/lang/String;Lcom/scalado/caps/autorama/Transform;)V

    goto :goto_3

    .line 337
    .restart local p1
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported decoder class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public addJpegBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/caps/autorama/Transform;)V
    .locals 1
    .parameter "jpegBuffer"
    .parameter "transform"

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 364
    :cond_0
    if-nez p2, :cond_1

    .line 365
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddFirstImageJpegBuffer(Lcom/scalado/base/Buffer;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/Stitcher;->nativeAddImageJpegBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/caps/autorama/Transform;)V

    goto :goto_0
.end method

.method public getBlendMode()Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/scalado/caps/autorama/Stitcher;->blendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method public getBlendModeOptions()Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/scalado/caps/autorama/Stitcher;->blendModeOptions:Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    return-object v0
.end method

.method public getDirection()Lcom/scalado/caps/autorama/Direction;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/scalado/caps/autorama/Stitcher;->direction:Lcom/scalado/caps/autorama/Direction;

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher;->imageCount:I

    return v0
.end method

.method public getImageDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/scalado/caps/autorama/Stitcher;->imageDimensions:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V
    .locals 2
    .parameter "mode"
    .parameter "options"

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/autorama/Stitcher;->blendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 255
    iput-object p2, p0, Lcom/scalado/caps/autorama/Stitcher;->blendModeOptions:Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    .line 256
    iget v0, p1, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->value:I

    .line 257
    .local v0, value:I
    if-eqz p2, :cond_1

    .line 258
    iget v1, p2, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    or-int/2addr v0, v1

    .line 260
    :cond_1
    invoke-direct {p0, v0}, Lcom/scalado/caps/autorama/Stitcher;->nativeSetBlendMode(I)V

    .line 261
    return-void
.end method
