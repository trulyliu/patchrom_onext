.class public Lcom/scalado/caps/codec/decoder/BmpDecoder;
.super Lcom/scalado/caps/Decoder;
.source "BmpDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/BmpDecoder$1;,
        Lcom/scalado/caps/codec/decoder/BmpDecoder$BmpDecoderIterator;
    }
.end annotation


# instance fields
.field private stream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 108
    invoke-static {}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->nativeClassInit()V

    .line 109
    return-void
.end method

.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->nativeCreate(Lcom/scalado/stream/Stream;)V

    .line 56
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/BmpDecoder;->stream:Lcom/scalado/stream/Stream;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/BmpDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "stream"

    .prologue
    .line 89
    new-instance v0, Lcom/scalado/caps/codec/decoder/BmpDecoder$BmpDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/BmpDecoder$BmpDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;)V
.end method


# virtual methods
.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/BmpDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method

.method public setPrefetchEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->doSetPrefetchEnabled(Z)V

    .line 72
    return-void
.end method
