.class public final Lcom/android/camera/effect/SceneControllerProxyBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "SceneControllerProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/effect/SceneControllerProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Scene Controller Proxy (UI)"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/SceneControllerProxyBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SceneControllerProxy;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/SceneControllerProxy;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/effect/SceneControllerProxy;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/SceneControllerProxy;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 23
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportScene()Z

    move-result v0

    return v0
.end method
