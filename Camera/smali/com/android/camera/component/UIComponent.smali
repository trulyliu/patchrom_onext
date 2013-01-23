.class public abstract Lcom/android/camera/component/UIComponent;
.super Lcom/android/camera/component/CameraCompoment;
.source "UIComponent.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
    .locals 6
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "baseLayoutId"

    .prologue
    .line 17
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 18
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 7
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "baseLayoutId"
    .parameter "contentLayoutId"

    .prologue
    .line 21
    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final getCameraMode()Lcom/android/camera/CameraMode;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    return-object v0
.end method

.method protected final getCameraType()Lcom/android/camera/CameraType;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    return-object v0
.end method

.method protected final isCaptureUIBlocked()Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final setTouchDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "delegateView"
    .parameter "target"

    .prologue
    .line 56
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 62
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method
