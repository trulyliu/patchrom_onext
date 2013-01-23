.class public abstract Lcom/android/camera/IAutoFocusController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IAutoFocusController.java"


# instance fields
.field public final autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusing:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 6
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "cameraThread"
    .parameter "hasWorkerThread"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 32
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IAutoFocusController.IsAutoFocusing"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    .line 33
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IAutoFocusController.IsAutoFocusLocked"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    .line 34
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 37
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusCanceled"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    .line 38
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusFinished"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    .line 39
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusStarted"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    .line 40
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IAutoFocusController.AutoFocusStarting"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    .line 41
    return-void
.end method


# virtual methods
.method public final autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "focusMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/android/camera/Handle;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/camera/IAutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;
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
.end method

.method public abstract cancelAutoFocus(Lcom/android/camera/Handle;)V
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 69
    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 70
    return-void
.end method

.method public abstract lockAutoFocus(Ljava/lang/String;)Lcom/android/camera/Handle;
.end method

.method public abstract unlockAutoFocus(Lcom/android/camera/Handle;)V
.end method
