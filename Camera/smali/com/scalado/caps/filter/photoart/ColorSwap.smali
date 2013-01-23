.class public final Lcom/scalado/caps/filter/photoart/ColorSwap;
.super Lcom/scalado/caps/Filter;
.source "ColorSwap.java"


# instance fields
.field private colorDistance:I

.field private doMonoColor:Z

.field private srcColor:Lcom/scalado/base/Color;

.field private swapColor:Lcom/scalado/base/Color;

.field private swapLuminance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 165
    invoke-static {}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeClassInit()V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 8
    .parameter "session"

    .prologue
    const/16 v3, 0xff

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x80

    .line 31
    invoke-direct {p0, p1, v2}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 32
    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v3, v1, v1, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->srcColor:Lcom/scalado/base/Color;

    .line 33
    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v3, v1, v1, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapColor:Lcom/scalado/base/Color;

    .line 34
    iput v7, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->colorDistance:I

    .line 35
    iput-boolean v2, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->doMonoColor:Z

    .line 36
    iput-boolean v2, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapLuminance:Z

    .line 37
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->srcColor:Lcom/scalado/base/Color;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapColor:Lcom/scalado/base/Color;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->colorDistance:I

    iget-boolean v5, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->doMonoColor:Z

    iget-boolean v6, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapLuminance:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeBegin(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V

    .line 40
    invoke-virtual {p0, v7}, Lcom/scalado/caps/filter/photoart/ColorSwap;->setHasActiveFilter(Z)V

    .line 41
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V
.end method


# virtual methods
.method public getColorDistance()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->colorDistance:I

    return v0
.end method

.method public getDoMonoColor()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->doMonoColor:Z

    return v0
.end method

.method public getDstColor()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapColor:Lcom/scalado/base/Color;

    invoke-virtual {v0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public getSrcColor()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->srcColor:Lcom/scalado/base/Color;

    invoke-virtual {v0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public getSwapLuminance()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapLuminance:Z

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 7
    .parameter "decoder"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->srcColor:Lcom/scalado/base/Color;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapColor:Lcom/scalado/base/Color;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->colorDistance:I

    iget-boolean v5, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->doMonoColor:Z

    iget-boolean v6, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapLuminance:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeBegin(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V

    .line 141
    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->srcColor:Lcom/scalado/base/Color;

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapColor:Lcom/scalado/base/Color;

    iget v4, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->colorDistance:I

    iget-boolean v5, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->doMonoColor:Z

    iget-boolean v6, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapLuminance:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V

    .line 143
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 144
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 149
    return-void
.end method

.method public set(Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V
    .locals 7
    .parameter "srcColor"
    .parameter "swapColor"
    .parameter "colorDistance"
    .parameter "doMonoColor"
    .parameter "swapLuminance"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/ColorSwap;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Lcom/scalado/base/Color;IZZ)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 80
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->srcColor:Lcom/scalado/base/Color;

    .line 81
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapColor:Lcom/scalado/base/Color;

    .line 82
    iput p3, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->colorDistance:I

    .line 83
    iput-boolean p4, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->doMonoColor:Z

    .line 84
    iput-boolean p5, p0, Lcom/scalado/caps/filter/photoart/ColorSwap;->swapLuminance:Z

    .line 86
    return-void
.end method
