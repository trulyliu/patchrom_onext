.class public final Lcom/scalado/caps/filter/clearshot/ColorBoost;
.super Lcom/scalado/caps/Filter;
.source "ColorBoost.java"


# instance fields
.field private gain:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 82
    invoke-static {}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeClassInit()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 14
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    .line 24
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->setHasActiveFilter(Z)V

    .line 26
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
.method public get()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 60
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 61
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 62
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 67
    return-void
.end method

.method public set(F)V
    .locals 3
    .parameter "gain"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    const/high16 v0, -0x4080

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal gain value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 45
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    .line 46
    return-void
.end method
