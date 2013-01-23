.class Lcom/android/camera/effect/AutoScene$12;
.super Ljava/lang/Object;
.source "AutoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/AutoScene;->disableSkinBeauty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/AutoScene;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/AutoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/effect/AutoScene$12;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$12;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v1}, Lcom/android/camera/effect/AutoScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 321
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$12;->this$0:Lcom/android/camera/effect/AutoScene;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/AutoScene;->access$600(Lcom/android/camera/effect/AutoScene;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "set beauty-face-value to 0"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "beauty-face-value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 325
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 327
    :cond_0
    return-void
.end method
