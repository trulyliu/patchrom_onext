.class public final Lcom/scalado/caps/filter/clearshot/AutoEnhance;
.super Lcom/scalado/caps/Filter;
.source "AutoEnhance.java"


# instance fields
.field private parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 110
    invoke-static {}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeClassInit()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    .line 31
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->setHasActiveFilter(Z)V

    .line 33
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeGet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
.end method


# virtual methods
.method public final get()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeGet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    goto :goto_0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 85
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 87
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 92
    return-void
.end method

.method public set(Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p1, :cond_1

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->getSourceWhite()Lcom/scalado/base/Color;

    move-result-object v0

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source white is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->getTargetWhite()Lcom/scalado/base/Color;

    move-result-object v0

    if-nez v0, :cond_3

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Target white is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 61
    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    .line 62
    return-void
.end method
