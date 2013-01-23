.class public Lcom/scalado/caps/speedview/Animation;
.super Lcom/scalado/jni/JniPeer;
.source "Animation.java"


# instance fields
.field private mFrameIndex:F

.field private mZoom:F

.field private screen:Lcom/scalado/caps/screen/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 205
    invoke-static {}, Lcom/scalado/caps/speedview/Animation;->nativeClassInit()V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/screen/Screen;)V
    .locals 1
    .parameter "screen"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 18
    iput v0, p0, Lcom/scalado/caps/speedview/Animation;->mZoom:F

    .line 19
    iput v0, p0, Lcom/scalado/caps/speedview/Animation;->mFrameIndex:F

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    .line 32
    iget-object v0, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeCreate(Lcom/scalado/caps/screen/Screen;)V

    .line 33
    return-void
.end method

.method private native nativeBeginPan(Lcom/scalado/base/Point;)V
.end method

.method private native nativeBeginZoom(FLcom/scalado/base/Point;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/screen/Screen;)V
.end method

.method private native nativeEndAnimation()V
.end method

.method private native nativeExtendZoom(F)V
.end method

.method private native nativeGetEndPoint(Lcom/scalado/base/Point;)V
.end method

.method private native nativeGetFrameIndex(F)V
.end method

.method private native nativeGetZoomPoint(FLcom/scalado/base/Point;)V
.end method

.method private native nativeUpdateScreen(FF)V
.end method


# virtual methods
.method public beginPan(Lcom/scalado/base/Point;)V
    .locals 0
    .parameter "stopPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeBeginPan(Lcom/scalado/base/Point;)V

    .line 43
    return-void
.end method

.method public beginZoom(FLcom/scalado/base/Point;)V
    .locals 0
    .parameter "zoom"
    .parameter "targetPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeBeginZoom(FLcom/scalado/base/Point;)V

    .line 59
    return-void
.end method

.method public endAnimation()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/scalado/caps/speedview/Animation;->nativeEndAnimation()V

    .line 91
    return-void
.end method

.method public extendZoom(F)V
    .locals 0
    .parameter "newZoomStop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeExtendZoom(F)V

    .line 102
    return-void
.end method

.method public getEndPan()Lcom/scalado/base/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 155
    .local v0, endPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)V

    .line 156
    return-object v0
.end method

.method public getEndZoom()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 143
    .local v0, endPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)V

    .line 144
    iget v1, p0, Lcom/scalado/caps/speedview/Animation;->mZoom:F

    return v1
.end method

.method public getFrameIndex(F)F
    .locals 1
    .parameter "zoom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeGetFrameIndex(F)V

    .line 170
    iget v0, p0, Lcom/scalado/caps/speedview/Animation;->mFrameIndex:F

    return v0
.end method

.method public getPan(F)Lcom/scalado/base/Point;
    .locals 1
    .parameter "frameIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 131
    .local v0, midPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)V

    .line 132
    return-object v0
.end method

.method public getZoom(F)F
    .locals 2
    .parameter "frameIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    .line 116
    .local v0, midPoint:Lcom/scalado/base/Point;
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)V

    .line 117
    iget v1, p0, Lcom/scalado/caps/speedview/Animation;->mZoom:F

    return v1
.end method

.method public updateScreen(FF)V
    .locals 0
    .parameter "frameIndex"
    .parameter "renderIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeUpdateScreen(FF)V

    .line 79
    return-void
.end method
