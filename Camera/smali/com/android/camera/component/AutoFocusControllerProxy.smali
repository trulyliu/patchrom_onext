.class Lcom/android/camera/component/AutoFocusControllerProxy;
.super Lcom/android/camera/IAutoFocusController;
.source "AutoFocusControllerProxy.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Auto-Focus Controller Proxy (UI)"


# instance fields
.field private final m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/component/ComponentBinder",
            "<",
            "Lcom/android/camera/IAutoFocusController;",
            "Lcom/android/camera/component/AutoFocusControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    .line 34
    const-string v1, "Auto-Focus Controller Proxy (UI)"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IAutoFocusController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 37
    new-instance v0, Lcom/android/camera/component/AutoFocusControllerProxy$1;

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    const-class v3, Lcom/android/camera/IAutoFocusController;

    iget-object v5, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/AutoFocusControllerProxy$1;-><init>(Lcom/android/camera/component/AutoFocusControllerProxy;Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/AutoFocusControllerProxy;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;
    .locals 4
    .parameter "focusMode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/android/camera/Handle;"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p3, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;

    move-result-object v0

    .line 77
    .local v0, handle:Lcom/android/camera/Handle;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .end local v0           #handle:Lcom/android/camera/Handle;
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - No IAutoFocusController interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAutoFocus(Lcom/android/camera/Handle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v0, p1}, Lcom/android/camera/IAutoFocusController;->cancelAutoFocus(Lcom/android/camera/Handle;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->release()V

    .line 107
    invoke-super {p0}, Lcom/android/camera/IAutoFocusController;->deinitializeOverride()V

    .line 108
    return-void
.end method

.method public lockAutoFocus(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 4
    .parameter "name"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v1}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v1, p1}, Lcom/android/camera/IAutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/android/camera/Handle;

    move-result-object v0

    .line 119
    .local v0, handle:Lcom/android/camera/Handle;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .end local v0           #handle:Lcom/android/camera/Handle;
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoFocus() - No IAutoFocusController interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlockAutoFocus(Lcom/android/camera/Handle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/android/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAutoFocusController;

    invoke-virtual {v0, p1}, Lcom/android/camera/IAutoFocusController;->unlockAutoFocus(Lcom/android/camera/Handle;)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
