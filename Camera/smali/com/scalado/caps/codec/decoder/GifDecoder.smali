.class public Lcom/scalado/caps/codec/decoder/GifDecoder;
.super Lcom/scalado/caps/Decoder;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/GifDecoder$1;,
        Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;
    }
.end annotation


# instance fields
.field private displayTime:I

.field private frameCount:I

.field private stream:Lcom/scalado/stream/Stream;

.field private totalDelayTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 194
    invoke-static {}, Lcom/scalado/caps/codec/decoder/GifDecoder;->nativeClassInit()V

    .line 195
    return-void
.end method

.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->nativeCreate(Lcom/scalado/stream/Stream;)V

    .line 101
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->stream:Lcom/scalado/stream/Stream;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/GifDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "stream"

    .prologue
    .line 119
    new-instance v0, Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/GifDecoder$GifDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeSetFrame(I)V
.end method


# virtual methods
.method public blendBackgroundColor(Z)V
    .locals 0
    .parameter "blend"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/scalado/caps/Decoder;->blendBackgroundColor(Z)V

    .line 143
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->frameCount:I

    return v0
.end method

.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method public getTotalDelayTime()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->totalDelayTime:I

    return v0
.end method

.method public setFrame(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->nativeSetFrame(I)V

    .line 160
    iget v0, p0, Lcom/scalado/caps/codec/decoder/GifDecoder;->displayTime:I

    return v0
.end method
