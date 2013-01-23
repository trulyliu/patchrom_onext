.class public final Lcom/scalado/caps/filter/photoart/Watercolor;
.super Lcom/scalado/caps/Filter;
.source "Watercolor.java"


# instance fields
.field private color:F

.field private light:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 83
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeClassInit()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 25
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Watercolor;->setHasActiveFilter(Z)V

    .line 27
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;FF)V
.end method


# virtual methods
.method public getColor()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->color:F

    return v0
.end method

.method public getLight()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->light:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 68
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->light:F

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->color:F

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeSet(Lcom/scalado/caps/Decoder;FF)V

    .line 69
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 70
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 75
    return-void
.end method

.method public set(FF)V
    .locals 2
    .parameter "light"
    .parameter "color"

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
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeSet(Lcom/scalado/caps/Decoder;FF)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 46
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->light:F

    .line 47
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->color:F

    .line 49
    return-void
.end method
