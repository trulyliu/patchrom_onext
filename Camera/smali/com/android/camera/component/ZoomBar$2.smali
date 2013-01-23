.class Lcom/android/camera/component/ZoomBar$2;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v1}, Lcom/android/camera/component/ZoomBar;->access$200(Lcom/android/camera/component/ZoomBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 203
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    #calls: Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z
    invoke-static {v1}, Lcom/android/camera/component/ZoomBar;->access$300(Lcom/android/camera/component/ZoomBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    #calls: Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V
    invoke-static {v1}, Lcom/android/camera/component/ZoomBar;->access$400(Lcom/android/camera/component/ZoomBar;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/ZoomBar;->access$202(Lcom/android/camera/component/ZoomBar;Z)Z

    .line 211
    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->changeZoom(I)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/ZoomBar;->access$202(Lcom/android/camera/component/ZoomBar;Z)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v0, v0, Lcom/android/camera/IZoomBar;->zoomBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 194
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v0, v0, Lcom/android/camera/IZoomBar;->zoomBarTrackingStoppedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 188
    return-void
.end method
