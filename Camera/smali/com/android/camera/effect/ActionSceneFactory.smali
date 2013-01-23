.class public final Lcom/android/camera/effect/ActionSceneFactory;
.super Lcom/android/camera/effect/SceneEffectFactory;
.source "ActionSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/SceneEffectFactory",
        "<",
        "Lcom/android/camera/effect/ActionScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/camera/effect/SceneEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/ActionScene;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/effect/ActionScene;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/ActionScene;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/ActionSceneFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/ActionScene;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 17
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
