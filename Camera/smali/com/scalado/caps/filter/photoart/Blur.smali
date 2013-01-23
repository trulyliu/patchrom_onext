.class public final Lcom/scalado/caps/filter/photoart/Blur;
.super Lcom/scalado/caps/Filter;
.source "Blur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Blur$RegionMode;
    }
.end annotation


# static fields
.field public static final MAX_LEVEL:I = 0x8

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private level:I

.field private mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

.field private region:Lcom/scalado/base/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 169
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Blur;->nativeClassInit()V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 70
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Blur;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Blur;->setHasActiveFilter(Z)V

    .line 72
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSetBlur(Lcom/scalado/caps/Decoder;ILcom/scalado/base/Rect;)V
.end method

.method private native nativeSetBlurEveryWhere(Lcom/scalado/caps/Decoder;I)V
.end method

.method private native nativeSetBlurRegionMode(Lcom/scalado/caps/Decoder;I)V
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->level:I

    return v0
.end method

.method public getRegion()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->region:Lcom/scalado/base/Rect;

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->clone()Lcom/scalado/base/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRegionMode()Lcom/scalado/caps/filter/photoart/Blur$RegionMode;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->clone()Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 146
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->level:I

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Blur;->region:Lcom/scalado/base/Rect;

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlur(Lcom/scalado/caps/Decoder;ILcom/scalado/base/Rect;)V

    .line 147
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    iget v0, v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->value:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlurRegionMode(Lcom/scalado/caps/Decoder;I)V

    .line 148
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 149
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Blur;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 154
    return-void
.end method

.method public set(ILcom/scalado/base/Rect;)V
    .locals 2
    .parameter "level"
    .parameter "region"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlurEveryWhere(Lcom/scalado/caps/Decoder;I)V

    .line 96
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 97
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Blur;->level:I

    .line 98
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Blur;->region:Lcom/scalado/base/Rect;

    .line 99
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlur(Lcom/scalado/caps/Decoder;ILcom/scalado/base/Rect;)V

    goto :goto_0
.end method

.method public setRegionMode(Lcom/scalado/caps/filter/photoart/Blur$RegionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget v1, p1, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->value:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlurRegionMode(Lcom/scalado/caps/Decoder;I)V

    .line 131
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Blur;->mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    .line 132
    return-void
.end method
