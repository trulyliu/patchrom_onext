.class public final Lcom/scalado/caps/filter/photoart/Sharpness;
.super Lcom/scalado/caps/Filter;
.source "Sharpness.java"


# static fields
.field public static final MAX_LEVEL:I = 0x7

.field public static final MIN_LEVEL:I


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 96
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeClassInit()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    .line 39
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->setHasActiveFilter(Z)V

    .line 41
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
.method public getLevel()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 74
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 76
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 81
    return-void
.end method

.method public set(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 59
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    .line 60
    return-void
.end method
