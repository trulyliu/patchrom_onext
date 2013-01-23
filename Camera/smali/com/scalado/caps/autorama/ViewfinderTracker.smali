.class public Lcom/scalado/caps/autorama/ViewfinderTracker;
.super Lcom/scalado/jni/JniPeer;
.source "ViewfinderTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/autorama/ViewfinderTracker$Type;
    }
.end annotation


# instance fields
.field private imageDimensions:Lcom/scalado/base/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 113
    invoke-static {}, Lcom/scalado/caps/autorama/ViewfinderTracker;->nativeClassInit()V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "imageDimensions"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/scalado/caps/autorama/ViewfinderTracker;->imageDimensions:Lcom/scalado/base/Size;

    .line 51
    iget-object v0, p0, Lcom/scalado/caps/autorama/ViewfinderTracker;->imageDimensions:Lcom/scalado/base/Size;

    sget-object v1, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->VFTRACKERTYPE_FAST:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    iget v1, v1, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->type:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->nativeCreate(Lcom/scalado/base/Size;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/ViewfinderTracker$Type;)V
    .locals 2
    .parameter "imageDimensions"
    .parameter "trackingType"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/scalado/caps/autorama/ViewfinderTracker;->imageDimensions:Lcom/scalado/base/Size;

    .line 64
    iget-object v0, p0, Lcom/scalado/caps/autorama/ViewfinderTracker;->imageDimensions:Lcom/scalado/base/Size;

    iget v1, p2, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->type:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->nativeCreate(Lcom/scalado/base/Size;I)V

    .line 65
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/base/Size;I)V
.end method

.method private native nativeReset()V
.end method

.method private native nativeTrack(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V
.end method


# virtual methods
.method public reset()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->nativeReset()V

    .line 98
    return-void
.end method

.method public track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;
    .locals 4
    .parameter "image"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 83
    .local v0, imageDimensions:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/caps/autorama/ViewfinderTracker;->imageDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/caps/autorama/ViewfinderTracker;->imageDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 85
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Dimensions mismatch."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_2
    new-instance v1, Lcom/scalado/caps/autorama/Transform;

    invoke-direct {v1}, Lcom/scalado/caps/autorama/Transform;-><init>()V

    .line 88
    .local v1, transform:Lcom/scalado/caps/autorama/Transform;
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->nativeTrack(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 89
    return-object v1
.end method
