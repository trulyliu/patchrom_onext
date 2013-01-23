.class public final Lcom/scalado/caps/codec/decoder/DecoderFactory;
.super Ljava/lang/Object;
.source "DecoderFactory.java"


# instance fields
.field private mImageType:I

.field private providers:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/codec/decoder/DecoderProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 86
    invoke-static {}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->nativeClassInit()V

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->providers:Ljava/util/AbstractList;

    .line 27
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeGetImageType(Lcom/scalado/stream/Stream;)V
.end method


# virtual methods
.method public createDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 5
    .parameter "stream"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->getImageType(Lcom/scalado/stream/Stream;)I

    move-result v2

    .line 55
    .local v2, type:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->providers:Ljava/util/AbstractList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/DecoderProvider;

    .line 59
    .local v1, provider:Lcom/scalado/caps/codec/decoder/DecoderProvider;
    invoke-virtual {v1, v2}, Lcom/scalado/caps/codec/decoder/DecoderProvider;->checkImageType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v1, p1}, Lcom/scalado/caps/codec/decoder/DecoderProvider;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v3

    goto :goto_0
.end method

.method getImageType(Lcom/scalado/stream/Stream;)I
    .locals 1
    .parameter "stream"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->nativeGetImageType(Lcom/scalado/stream/Stream;)V

    .line 75
    iget v0, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->mImageType:I

    return v0
.end method

.method public registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/DecoderFactory;->providers:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
