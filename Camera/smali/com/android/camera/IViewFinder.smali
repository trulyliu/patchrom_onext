.class public abstract Lcom/android/camera/IViewFinder;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IViewFinder.java"


# instance fields
.field public final drawPreviewFilterEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/DrawPreviewFilterEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewSurfaceCreated:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSurfaceBounds:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSurfaceHolder:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 5
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "hasWorkerThread"

    .prologue
    const/4 v4, 0x3

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 30
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IViewFinder.IsPreviewSurfaceCreated"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IViewFinder;->isPreviewSurfaceCreated:Lcom/android/camera/property/Property;

    .line 31
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IViewFinder.PreviewSurfaceBounds"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IViewFinder;->previewSurfaceBounds:Lcom/android/camera/property/Property;

    .line 32
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IViewFinder.PreviewSurfaceHolder"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IViewFinder;->previewSurfaceHolder:Lcom/android/camera/property/Property;

    .line 35
    new-instance v0, Lcom/android/camera/IViewFinder$1;

    const-string v1, "IViewFinder.DrawPreviewFilter"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/camera/IViewFinder$1;-><init>(Lcom/android/camera/IViewFinder;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/IViewFinder;->drawPreviewFilterEvent:Lcom/android/camera/event/Event;

    .line 49
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 59
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 62
    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 63
    return-void
.end method

.method public abstract invalidatePreviewFilter()V
.end method
