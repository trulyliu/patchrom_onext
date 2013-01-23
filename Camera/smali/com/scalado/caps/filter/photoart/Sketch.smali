.class public final Lcom/scalado/caps/filter/photoart/Sketch;
.super Lcom/scalado/caps/Filter;
.source "Sketch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Sketch$Mode;
    }
.end annotation


# instance fields
.field private mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 103
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeClassInit()V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 39
    sget-object v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->COLOR:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    .line 52
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->setHasActiveFilter(Z)V

    .line 53
    return-void
.end method

.method private native nativeApplySketch(Lcom/scalado/caps/Decoder;I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public getMode()Lcom/scalado/caps/filter/photoart/Sketch$Mode;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iget v0, v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeApplySketch(Lcom/scalado/caps/Decoder;I)V

    .line 89
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public set(Lcom/scalado/caps/filter/photoart/Sketch$Mode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Sketch;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget v1, p1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeApplySketch(Lcom/scalado/caps/Decoder;I)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 74
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    .line 75
    return-void
.end method
