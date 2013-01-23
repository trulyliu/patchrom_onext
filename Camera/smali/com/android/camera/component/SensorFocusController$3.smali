.class Lcom/android/camera/component/SensorFocusController$3;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SensorFocusController;->initializeOverride()V
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
        "Lcom/android/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$3;->this$0:Lcom/android/camera/component/SensorFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 2
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/AutoFocusEventArgs;>;"
    iget-object v0, p3, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$3;->this$0:Lcom/android/camera/component/SensorFocusController;

    #getter for: Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z
    invoke-static {v0}, Lcom/android/camera/component/SensorFocusController;->access$100(Lcom/android/camera/component/SensorFocusController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$3;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$102(Lcom/android/camera/component/SensorFocusController;Z)Z

    .line 281
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 275
    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/SensorFocusController$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method
