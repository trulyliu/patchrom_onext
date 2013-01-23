.class Lcom/android/camera/effect/AutoScene$13;
.super Ljava/lang/Object;
.source "AutoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/AutoScene;->enableSkinBeauty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/AutoScene;

.field final synthetic val$settings:Lcom/android/camera/CameraSettings;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/AutoScene;Lcom/android/camera/CameraSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/camera/effect/AutoScene$13;->this$0:Lcom/android/camera/effect/AutoScene;

    iput-object p2, p0, Lcom/android/camera/effect/AutoScene$13;->val$settings:Lcom/android/camera/CameraSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$13;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v1}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 358
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$13;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v1}, Lcom/android/camera/effect/AutoScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$13;->this$0:Lcom/android/camera/effect/AutoScene;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/AutoScene;->access$700(Lcom/android/camera/effect/AutoScene;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set beauty-face-value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/AutoScene$13;->val$settings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "beauty-face-value"

    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$13;->val$settings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 370
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 372
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$13;->this$0:Lcom/android/camera/effect/AutoScene;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/AutoScene;->access$800(Lcom/android/camera/effect/AutoScene;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set beauty-face-value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/AutoScene$13;->val$settings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "beauty-face-value"

    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$13;->val$settings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method
