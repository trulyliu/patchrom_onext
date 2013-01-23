.class public final Lcom/scalado/caps/filter/photoart/Colorization;
.super Lcom/scalado/caps/Filter;
.source "Colorization.java"


# instance fields
.field private b:I

.field private chrominanceStrength:I

.field private g:I

.field private luminanceStrength:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 137
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeClassInit()V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 31
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Colorization;->setHasActiveFilter(Z)V

    .line 33
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;IIIII)V
.end method


# virtual methods
.method public getB()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->b:I

    return v0
.end method

.method public getChrominance()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->chrominanceStrength:I

    return v0
.end method

.method public getG()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->g:I

    return v0
.end method

.method public getLuminance()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->luminanceStrength:I

    return v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->r:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 7
    .parameter "decoder"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 119
    iget v2, p0, Lcom/scalado/caps/filter/photoart/Colorization;->r:I

    iget v3, p0, Lcom/scalado/caps/filter/photoart/Colorization;->g:I

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Colorization;->b:I

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Colorization;->luminanceStrength:I

    iget v6, p0, Lcom/scalado/caps/filter/photoart/Colorization;->chrominanceStrength:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeSet(Lcom/scalado/caps/Decoder;IIIII)V

    .line 120
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 121
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 126
    return-void
.end method

.method public set(IIIII)V
    .locals 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "luminanceStrength"
    .parameter "chrominanceStrength"

    .prologue
    const/16 v1, 0xff

    .line 53
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    if-le p3, v1, :cond_2

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeSet(Lcom/scalado/caps/Decoder;IIIII)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 63
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Colorization;->r:I

    .line 64
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Colorization;->g:I

    .line 65
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Colorization;->b:I

    .line 66
    iput p4, p0, Lcom/scalado/caps/filter/photoart/Colorization;->luminanceStrength:I

    .line 67
    iput p5, p0, Lcom/scalado/caps/filter/photoart/Colorization;->chrominanceStrength:I

    .line 69
    return-void
.end method
