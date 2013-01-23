.class public final Lcom/scalado/caps/filter/photoart/Clipart;
.super Lcom/scalado/caps/Filter;
.source "Clipart.java"


# instance fields
.field private angle:F

.field private clipartSrcImage:Lcom/scalado/base/Image;

.field private clipartSrcStream:Lcom/scalado/stream/Stream;

.field private position:Lcom/scalado/base/Point;

.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 254
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeClassInit()V

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;FF)V
    .locals 1
    .parameter "session"
    .parameter "clipartSrcDecoder"
    .parameter "position"
    .parameter "scale"
    .parameter "angle"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 57
    invoke-direct {p0, p2}, Lcom/scalado/caps/filter/photoart/Clipart;->setClipartDecoder(Lcom/scalado/caps/Decoder;)V

    .line 58
    invoke-direct {p0, p3, p4, p5}, Lcom/scalado/caps/filter/photoart/Clipart;->beginClipart(Lcom/scalado/base/Point;FF)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Clipart;->setHasActiveFilter(Z)V

    .line 60
    return-void
.end method

.method private beginClipart(Lcom/scalado/base/Point;FF)V
    .locals 6
    .parameter "position"
    .parameter "scale"
    .parameter "angle"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    if-nez p1, :cond_1

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)V

    .line 174
    :goto_0
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    .line 175
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    .line 176
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 178
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeCreateFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Point;FF)V

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)V
.end method

.method private native nativeCreateFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Point;FF)V
.end method

.method private native nativeEnd()V
.end method

.method private native nativeGetRect(Lcom/scalado/base/Rect;)V
.end method

.method private native nativeSetOrientation(Lcom/scalado/base/Point;FF)V
.end method

.method private setClipartDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "clipartSrcDecoder"

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    .line 129
    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_0
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v0, :cond_1

    .line 134
    check-cast p1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    .line 158
    :goto_0
    return-void

    .line 136
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    if-eqz v0, :cond_2

    .line 137
    check-cast p1, Lcom/scalado/caps/codec/decoder/BmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 139
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    if-eqz v0, :cond_3

    .line 140
    check-cast p1, Lcom/scalado/caps/codec/decoder/GifDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 142
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    if-eqz v0, :cond_4

    .line 143
    check-cast p1, Lcom/scalado/caps/codec/decoder/PngDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 145
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    if-eqz v0, :cond_5

    .line 146
    check-cast p1, Lcom/scalado/caps/codec/decoder/TiffDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/TiffDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 148
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    if-eqz v0, :cond_6

    .line 149
    check-cast p1, Lcom/scalado/caps/codec/decoder/WBmpDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->getStream()Lcom/scalado/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    goto :goto_0

    .line 151
    .restart local p1
    :cond_6
    instance-of v0, p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    if-eqz v0, :cond_7

    .line 152
    check-cast p1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    .end local p1
    invoke-virtual {p1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    goto :goto_0

    .line 156
    .restart local p1
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getPosition()Lcom/scalado/base/Point;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    return-object v0
.end method

.method public getRect()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 123
    .local v0, rect:Lcom/scalado/base/Rect;
    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeGetRect(Lcom/scalado/base/Rect;)V

    .line 124
    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 6
    .parameter "decoder"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcStream:Lcom/scalado/stream/Stream;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/stream/Stream;Lcom/scalado/base/Point;FF)V

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeEnd()V

    .line 190
    return-void

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->clipartSrcImage:Lcom/scalado/base/Image;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeCreateFromRaw(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Image;Lcom/scalado/base/Point;FF)V

    goto :goto_0
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeEnd()V

    .line 195
    return-void
.end method

.method public setOrientation(Lcom/scalado/base/Point;FF)V
    .locals 2
    .parameter "position"
    .parameter "scale"
    .parameter "angle"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Clipart;->nativeSetOrientation(Lcom/scalado/base/Point;FF)V

    .line 83
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Clipart;->position:Lcom/scalado/base/Point;

    .line 84
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Clipart;->scale:F

    .line 85
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Clipart;->angle:F

    .line 86
    return-void
.end method
