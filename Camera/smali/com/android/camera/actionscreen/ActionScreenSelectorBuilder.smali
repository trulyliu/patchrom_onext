.class public final Lcom/android/camera/actionscreen/ActionScreenSelectorBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "ActionScreenSelectorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/actionscreen/ActionScreenSelector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Action Screen Selector"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/actionscreen/ActionScreenSelector;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/actionscreen/ActionScreenSelector;

    invoke-direct {v0, p1}, Lcom/android/camera/actionscreen/ActionScreenSelector;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/actionscreen/ActionScreenSelectorBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/actionscreen/ActionScreenSelector;

    move-result-object v0

    return-object v0
.end method
