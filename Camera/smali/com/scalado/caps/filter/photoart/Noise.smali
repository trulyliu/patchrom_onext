.class public final Lcom/scalado/caps/filter/photoart/Noise;
.super Lcom/scalado/caps/Filter;
.source "Noise.java"


# static fields
.field public static final MAX_LEVEL:I = 0x3

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 90
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Noise;->nativeClassInit()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 37
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Noise;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Noise;->setHasActiveFilter(Z)V

    .line 39
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
    .line 66
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Noise;->level:I

    int-to-float v0, v0

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Noise;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 72
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Noise;->level:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Noise;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 73
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Noise;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 74
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Noise;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 79
    return-void
.end method

.method public set(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Noise;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 56
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Noise;->level:I

    .line 58
    return-void
.end method
