.class public final Lcom/android/camera/effect/EffectControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "EffectControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/effect/EffectController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "Effect Controller"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/effect/EffectController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/effect/EffectController;
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/EffectController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
