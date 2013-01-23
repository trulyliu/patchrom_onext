.class Lcom/android/camera/component/ContinuousBurstController$3;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/HtcCallbackEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstController;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V
    .locals 8
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/HtcCallbackEventArgs;>;"
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 642
    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$800(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcCallback e.type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", e.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/android/camera/HtcCallbackEventArgs;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$900(Lcom/android/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$1000(Lcom/android/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #setter for: Lcom/android/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z
    invoke-static {v0, v7}, Lcom/android/camera/component/ContinuousBurstController;->access$1002(Lcom/android/camera/component/ContinuousBurstController;Z)Z

    .line 648
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    const/16 v1, 0x271c

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 649
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->access$1100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->endTakePicture(Lcom/android/camera/CaptureHandle;)V

    .line 651
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$1200(Lcom/android/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->access$600(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v1

    const/16 v2, 0x2711

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I
    invoke-static {v3}, Lcom/android/camera/component/ContinuousBurstController;->access$1300(Lcom/android/camera/component/ContinuousBurstController;)I

    move-result v3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v6}, Lcom/android/camera/component/ContinuousBurstController;->access$1100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/CaptureHandle;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/component/ContinuousBurstController;->access$1400(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/android/camera/io/Path;
    invoke-static {v7}, Lcom/android/camera/component/ContinuousBurstController;->access$1500(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/Path;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 657
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    #calls: Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->access$1700(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->access$1102(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CaptureHandle;)Lcom/android/camera/CaptureHandle;

    goto/16 :goto_0

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController$3;->this$0:Lcom/android/camera/component/ContinuousBurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstController;->access$1600(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_IsSavingPhotos true, wait saving picture to do OnExited"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 638
    check-cast p3, Lcom/android/camera/HtcCallbackEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ContinuousBurstController$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V

    return-void
.end method
