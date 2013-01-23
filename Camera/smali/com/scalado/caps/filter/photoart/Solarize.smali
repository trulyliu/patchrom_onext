.class public final Lcom/scalado/caps/filter/photoart/Solarize;
.super Lcom/scalado/caps/Filter;
.source "Solarize.java"


# instance fields
.field private threshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 85
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeClassInit()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 14
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Solarize;->threshold:F

    .line 25
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Solarize;->setHasActiveFilter(Z)V

    .line 27
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;F)V
.end method


# virtual methods
.method public getThreshold()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Solarize;->threshold:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 65
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Solarize;->threshold:F

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 66
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 67
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 72
    return-void
.end method

.method public set(F)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Solarize;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 50
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Solarize;->threshold:F

    .line 51
    return-void
.end method
