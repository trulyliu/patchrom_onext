.class public abstract Lcom/android/camera/IImageSettingsController;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IImageSettingsController.java"


# static fields
.field public static final DEFAULT_ISO:Ljava/lang/String; = "auto"


# instance fields
.field public final brightness:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final contrast:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoExposureLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final iso:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final saturation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final sharpness:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final whiteBalance:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V
    .locals 7
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "cameraThread"
    .parameter "hasWorkerThread"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 36
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.Brightness"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    .line 37
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.Contrast"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    .line 38
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.IsAutoExposureLocked"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    .line 39
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.IsAutoWhiteBalanceLocked"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    .line 40
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.ISO"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const-string v3, "auto"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    .line 41
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.Saturation"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    .line 42
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.Sharpness"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    .line 43
    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IImageSettingsController.WhiteBalance"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const-string v3, "auto"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    .line 44
    return-void
.end method


# virtual methods
.method public abstract applyImageSettings(Lcom/android/camera/ImageSettings;Z)V
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 61
    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 62
    return-void
.end method

.method public abstract lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;
.end method

.method public abstract lockAutoWhiteBalance(Ljava/lang/String;)Lcom/android/camera/Handle;
.end method

.method public abstract unlockAutoExposure(Lcom/android/camera/Handle;)V
.end method

.method public abstract unlockAutoWhiteBalance(Lcom/android/camera/Handle;)V
.end method
