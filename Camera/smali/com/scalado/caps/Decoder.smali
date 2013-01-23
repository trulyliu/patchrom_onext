.class public abstract Lcom/scalado/caps/Decoder;
.super Lcom/scalado/jni/JniPeer;
.source "Decoder.java"


# instance fields
.field private changed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 140
    invoke-static {}, Lcom/scalado/caps/Decoder;->nativeClassInit()V

    .line 141
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    .line 27
    return-void
.end method

.method private native nativeBlendBackgroundColor(Z)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeGetDimensions(Lcom/scalado/base/Size;)V
.end method

.method private native nativeRemoveAllFilters()V
.end method

.method private native nativeRemoveLastFilter()V
.end method

.method private native nativeSetBackgroundColor(Lcom/scalado/base/Color;)V
.end method

.method private native nativeSetPrefetchEnabled(Z)V
.end method

.method private native nativeSetSamplingMode(I)V
.end method


# virtual methods
.method protected blendBackgroundColor(Z)V
    .locals 0
    .parameter "blend"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeBlendBackgroundColor(Z)V

    .line 107
    return-void
.end method

.method protected final doSetPrefetchEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetPrefetchEnabled(Z)V

    .line 44
    return-void
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Size;-><init>(II)V

    .line 55
    .local v0, dimensions:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/caps/Decoder;->nativeGetDimensions(Lcom/scalado/base/Size;)V

    .line 56
    return-object v0
.end method

.method public final hasChanged()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return v0
.end method

.method protected final markChanged()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    .line 90
    return-void
.end method

.method removeAllFilters()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveAllFilters()V

    .line 101
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 102
    return-void
.end method

.method removeLastFilter()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveLastFilter()V

    .line 95
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 96
    return-void
.end method

.method setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetBackgroundColor(Lcom/scalado/base/Color;)V

    .line 85
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 86
    return-void
.end method

.method setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/scalado/caps/SamplingMode;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/Decoder;->nativeSetSamplingMode(I)V

    .line 112
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 113
    return-void
.end method
