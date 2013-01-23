.class public abstract Lcom/android/camera/location/ILocationManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "ILocationManager.java"


# instance fields
.field public final location:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V
    .locals 5
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraThread"
    .parameter "hasWorkerThread"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    .line 28
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ILocationManager.Location"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 5
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "hasWorkerThread"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    .line 23
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "ILocationManager.Location"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/location/ILocationManager;->location:Lcom/android/camera/property/Property;

    .line 24
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 41
    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 42
    return-void
.end method
