.class Lcom/android/camera/component/ObjectTrackingUI$5;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/TakingPictureState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/TakingPictureState;>;"
    const-wide/16 v5, 0x0

    .line 181
    iget-object v4, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v4, Lcom/android/camera/TakingPictureState;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v7}, Lcom/android/camera/TakingPictureState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-virtual {v4}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 183
    .local v0, camera:Lcom/android/camera/HTCCamera;
    iget-object v4, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-virtual {v4}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v4, v7}, Lcom/android/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    .local v1, isPhotoMode:Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-virtual {v4}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Duration;

    invoke-virtual {v4}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    .line 185
    .local v2, timer:J
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    cmp-long v4, v2, v5

    if-gtz v4, :cond_1

    .line 186
    :cond_0
    iget-object v4, p0, Lcom/android/camera/component/ObjectTrackingUI$5;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V
    invoke-static {v4}, Lcom/android/camera/component/ObjectTrackingUI;->access$000(Lcom/android/camera/component/ObjectTrackingUI;)V

    .line 189
    .end local v0           #camera:Lcom/android/camera/HTCCamera;
    .end local v1           #isPhotoMode:Z
    .end local v2           #timer:J
    :cond_1
    return-void

    .restart local v0       #camera:Lcom/android/camera/HTCCamera;
    .restart local v1       #isPhotoMode:Z
    :cond_2
    move-wide v2, v5

    .line 184
    goto :goto_0
.end method
