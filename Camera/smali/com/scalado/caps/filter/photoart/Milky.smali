.class public final Lcom/scalado/caps/filter/photoart/Milky;
.super Lcom/scalado/caps/Filter;
.source "Milky.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 48
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Milky;->nativeClassInit()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 23
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Milky;->nativeApplyMilky(Lcom/scalado/caps/Decoder;)V

    .line 24
    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 25
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Milky;->setHasActiveFilter(Z)V

    .line 26
    return-void
.end method

.method private native nativeApplyMilky(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Milky;->nativeApplyMilky(Lcom/scalado/caps/Decoder;)V

    .line 33
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
