.class final Lcom/android/camera/component/AutoFocusControllerProxyBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "AutoFocusControllerProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/AutoFocusControllerProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Auto-Focus Controller Proxy (UI)"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/AutoFocusControllerProxy;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/component/AutoFocusControllerProxy;

    invoke-direct {v0, p1}, Lcom/android/camera/component/AutoFocusControllerProxy;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/component/AutoFocusControllerProxyBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/AutoFocusControllerProxy;

    move-result-object v0

    return-object v0
.end method
