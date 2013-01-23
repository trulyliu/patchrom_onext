.class public abstract Lcom/android/camera/effect/ColorEffectBase;
.super Lcom/android/camera/effect/EffectBase;
.source "ColorEffectBase.java"


# static fields
.field private static m_FrontCameraEffectSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainCameraEffectSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_ColorEffect:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "effectName"
    .parameter "cameraActivity"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p1}, Lcom/android/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "effectName"
    .parameter "cameraActivity"
    .parameter "colorEffect"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 28
    iput-object p3, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "prevEffect"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectBase;->getEffectController()Lcom/android/camera/effect/IEffectController;

    move-result-object v0

    .line 39
    .local v0, controller:Lcom/android/camera/effect/IEffectController;
    if-nez v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find effect controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/android/camera/effect/GpuEffectBase;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    .line 47
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "nextEffect"

    .prologue
    .line 58
    return-void
.end method

.method public getCapabilities()I
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    .line 69
    .local v1, isFrontCamera:Z
    if-nez v1, :cond_2

    .line 71
    sget-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 72
    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    .line 73
    :cond_0
    sget-object v2, Lcom/android/camera/effect/ColorEffectBase;->m_MainCameraEffectSupportedList:Ljava/util/List;

    .line 81
    .local v2, supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-nez v2, :cond_4

    .line 83
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get effect supported list"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .line 97
    :cond_1
    :goto_1
    return v0

    .line 77
    .end local v2           #supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    if-nez v3, :cond_3

    .line 78
    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    sput-object v3, Lcom/android/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    .line 79
    :cond_3
    sget-object v2, Lcom/android/camera/effect/ColorEffectBase;->m_FrontCameraEffectSupportedList:Ljava/util/List;

    .restart local v2       #supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 88
    :cond_4
    const v0, 0x7fffffff

    .line 89
    .local v0, capabilities:I
    iget-object v3, p0, Lcom/android/camera/effect/ColorEffectBase;->m_ColorEffect:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    and-int/lit8 v0, v0, -0x71

    .line 92
    if-nez v1, :cond_5

    .line 93
    and-int/lit8 v0, v0, -0x4

    goto :goto_1

    .line 95
    :cond_5
    and-int/lit8 v0, v0, -0xd

    goto :goto_1
.end method
