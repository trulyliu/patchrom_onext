.class public final Lcom/android/camera/component/CameraThreadComponentManager;
.super Lcom/android/camera/component/ComponentManager;
.source "CameraThreadComponentManager.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "cameraThread"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/component/CameraThreadComponentManager;->getOwner()Lcom/android/camera/component/IComponentOwner;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraThread;

    .line 23
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 24
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_0

    .line 26
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 27
    .local v2, checkArgs:[Ljava/lang/Object;
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 28
    .local v3, createArgs:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v4

    .line 30
    .end local v2           #checkArgs:[Ljava/lang/Object;
    .end local v3           #createArgs:[Ljava/lang/Object;
    :goto_0
    return-object v4

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v4

    goto :goto_0
.end method
