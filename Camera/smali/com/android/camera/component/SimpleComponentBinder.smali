.class public final Lcom/android/camera/component/SimpleComponentBinder;
.super Lcom/android/camera/component/ComponentBinder;
.source "SimpleComponentBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSourceComponent:",
        "Ljava/lang/Object;",
        "TTargetComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Lcom/android/camera/component/ComponentBinder",
        "<TTSourceComponent;TTTargetComponent;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;)V
    .locals 1
    .parameter "srcComponentOwner"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/component/IComponentOwner;",
            "Ljava/lang/Class",
            "<TTSourceComponent;>;TTTargetComponent;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, this:Lcom/android/camera/component/SimpleComponentBinder;,"Lcom/android/camera/component/SimpleComponentBinder<TTSourceComponent;TTTargetComponent;>;"
    .local p2, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<TTSourceComponent;>;"
    .local p3, targetComponent:Lcom/android/camera/component/Component;,"TTTargetComponent;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/component/ComponentBinder;-><init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/android/camera/component/SimpleComponentBinder;,"Lcom/android/camera/component/SimpleComponentBinder<TTSourceComponent;TTTargetComponent;>;"
    .local p1, sourceComponent:Ljava/lang/Object;,"TTSourceComponent;"
    .local p2, targetComponent:Lcom/android/camera/component/Component;,"TTTargetComponent;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/android/camera/component/SimpleComponentBinder;,"Lcom/android/camera/component/SimpleComponentBinder<TTSourceComponent;TTTargetComponent;>;"
    .local p1, sourceComponent:Ljava/lang/Object;,"TTSourceComponent;"
    .local p2, targetComponent:Lcom/android/camera/component/Component;,"TTTargetComponent;"
    const/4 v0, 0x0

    return-object v0
.end method
