.class public Lcom/scalado/caps/speedview/SpmoDecoder;
.super Lcom/scalado/caps/codec/decoder/JpegDecoder;
.source "SpmoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/speedview/SpmoDecoder$1;,
        Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 144
    invoke-static {}, Lcom/scalado/caps/speedview/SpmoDecoder;->nativeClassInit()V

    .line 145
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;-><init>()V

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
    .locals 1
    .parameter "jpegStream"
    .parameter "spmoStream"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;-><init>()V

    .line 79
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    invoke-direct {p0, p2}, Lcom/scalado/caps/speedview/SpmoDecoder;->nativeCreateSpmoStream(Lcom/scalado/stream/Stream;)V

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_1
    if-nez p2, :cond_2

    .line 86
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/SpmoDecoder;->nativeCreateJpegStream(Lcom/scalado/stream/Stream;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/SpmoDecoder;->nativeCreate(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Lcom/scalado/caps/speedview/SpmoDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/SpmoDecoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 2
    .parameter "jpegStream"

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_0
    invoke-interface {p0}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Jpeg stream is not readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method public static create(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 2
    .parameter "jpegStream"
    .parameter "spmoStream"

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Spmo stream is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-interface {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spmo stream is not readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    if-eqz p0, :cond_2

    .line 128
    invoke-interface {p0}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Jpeg stream is not readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    new-instance v0, Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;

    invoke-direct {v0, p0, p1}, Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeCreateJpegStream(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeCreateSpmoStream(Lcom/scalado/stream/Stream;)V
.end method
