.class public abstract Lcom/android/camera/effect/ColorEffectFactory;
.super Lcom/android/camera/effect/EffectFactory;
.source "ColorEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/android/camera/effect/ColorEffectBase;",
        ">",
        "Lcom/android/camera/effect/EffectFactory",
        "<TTEffect;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, this:Lcom/android/camera/effect/ColorEffectFactory;,"Lcom/android/camera/effect/ColorEffectFactory<TTEffect;>;"
    invoke-direct {p0}, Lcom/android/camera/effect/EffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 13
    .local p0, this:Lcom/android/camera/effect/ColorEffectFactory;,"Lcom/android/camera/effect/ColorEffectFactory<TTEffect;>;"
    const/4 v0, 0x1

    return v0
.end method
