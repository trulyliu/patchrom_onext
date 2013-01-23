.class public Lcom/scalado/caps/codec/decoder/ColorDecoder;
.super Lcom/scalado/caps/Decoder;
.source "ColorDecoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 47
    invoke-static {}, Lcom/scalado/caps/codec/decoder/ColorDecoder;->nativeClassInit()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "color"
    .parameter "dimensions"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Dimensions is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/codec/decoder/ColorDecoder;->nativeCreate(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V

    .line 37
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V
.end method
