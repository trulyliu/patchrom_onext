.class public final Lcom/scalado/caps/filter/photoart/Frame;
.super Lcom/scalado/caps/Filter;
.source "Frame.java"


# instance fields
.field private frameImage:Lcom/scalado/base/Image;

.field private frameStream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 113
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Frame;->nativeClassInit()V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "session"
    .parameter "frameDecoder"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 30
    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    .line 31
    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    .line 44
    invoke-direct {p0, p2}, Lcom/scalado/caps/filter/photoart/Frame;->setFrameDecoder(Lcom/scalado/caps/Decoder;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Frame;->setHasActiveFilter(Z)V

    .line 46
    return-void
.end method

.method private beginFrame(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, error:I
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Frame;->nativeInsertFrameFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)V

    .line 94
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 95
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Frame;->nativeInsertFrame(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;)V

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeInsertFrame(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeInsertFrameFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;)V
.end method

.method private setFrameDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "frameDecoder"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_0
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Frame;->beginFrame(Lcom/scalado/caps/Decoder;)V

    .line 85
    return-void

    .line 68
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    if-eqz v0, :cond_2

    .line 69
    check-cast p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 70
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    if-eqz v0, :cond_3

    .line 71
    check-cast p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 72
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    if-eqz v0, :cond_4

    .line 73
    check-cast p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 74
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    if-eqz v0, :cond_5

    .line 75
    check-cast p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/TiffDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 76
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    if-eqz v0, :cond_6

    .line 77
    check-cast p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 78
    .restart local p1
    :cond_6
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    if-eqz v0, :cond_7

    .line 79
    check-cast p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Frame;->frameImage:Lcom/scalado/base/Image;

    goto :goto_0

    .line 82
    .restart local p1
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Frame;->beginFrame(Lcom/scalado/caps/Decoder;)V

    .line 100
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public set(Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "frameDecoder"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Frame;->setFrameDecoder(Lcom/scalado/caps/Decoder;)V

    .line 60
    return-void
.end method
