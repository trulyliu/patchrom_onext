.class public final Lcom/android/camera/location/LocationManagerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "LocationManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/location/LocationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Location Manager"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/location/LocationManagerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/location/LocationManager;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/location/LocationManager;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/location/LocationManager;

    invoke-direct {v0, p1}, Lcom/android/camera/location/LocationManager;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
