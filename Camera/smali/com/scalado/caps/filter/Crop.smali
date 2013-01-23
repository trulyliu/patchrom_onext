.class public final Lcom/scalado/caps/filter/Crop;
.super Lcom/scalado/caps/Filter;
.source "Crop.java"


# instance fields
.field private region:Lcom/scalado/base/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 86
    invoke-static {}, Lcom/scalado/caps/filter/Crop;->nativeClassInit()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    .line 33
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/Crop;->setHasActiveFilter(Z)V

    .line 34
    return-void
.end method

.method private native nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/Crop;->nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public set(Lcom/scalado/base/Rect;)V
    .locals 2
    .parameter "region"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Region cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/Crop;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/Crop;->nativeApply(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 65
    iput-object p1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    .line 66
    return-void
.end method
