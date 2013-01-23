.class public final Lcom/scalado/caps/filter/Flip;
.super Lcom/scalado/caps/Filter;
.source "Flip.java"


# static fields
.field private static final HORIZONTAL:I = 0x2

.field private static final VERTICAL:I = 0x1


# instance fields
.field private horizontal:Z

.field private vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 107
    invoke-static {}, Lcom/scalado/caps/filter/Flip;->nativeClassInit()V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 41
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Flip;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/Flip;->setHasActiveFilter(Z)V

    .line 43
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

.method private translateFlipToInt(ZZ)I
    .locals 1
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, value:I
    if-eqz p1, :cond_0

    .line 86
    or-int/lit8 v0, v0, 0x2

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    .line 89
    or-int/lit8 v0, v0, 0x1

    .line 91
    :cond_1
    return v0
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Flip;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 74
    iget-boolean v0, p0, Lcom/scalado/caps/filter/Flip;->horizontal:Z

    iget-boolean v1, p0, Lcom/scalado/caps/filter/Flip;->vertical:Z

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/Flip;->translateFlipToInt(ZZ)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/Flip;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Flip;->nativeEnd(Lcom/scalado/caps/Decoder;)V

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

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Flip;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 81
    return-void
.end method

.method public set(ZZ)V
    .locals 2
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/filter/Flip;->translateFlipToInt(ZZ)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/Flip;->nativeSet(Lcom/scalado/caps/Decoder;I)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 67
    iput-boolean p2, p0, Lcom/scalado/caps/filter/Flip;->vertical:Z

    .line 68
    iput-boolean p1, p0, Lcom/scalado/caps/filter/Flip;->horizontal:Z

    .line 69
    return-void
.end method
