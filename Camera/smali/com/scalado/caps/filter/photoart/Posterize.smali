.class public final Lcom/scalado/caps/filter/photoart/Posterize;
.super Lcom/scalado/caps/Filter;
.source "Posterize.java"


# instance fields
.field private levels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 89
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeClassInit()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    .line 30
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->setHasActiveFilter(Z)V

    .line 32
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;I)V
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    int-to-float v0, v0

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 68
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 69
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeEnd(Lcom/scalado/caps/Decoder;)V

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

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 75
    return-void
.end method

.method public set(I)V
    .locals 2
    .parameter "levels"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x10

    if-le p1, v0, :cond_2

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 53
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    .line 54
    return-void
.end method
