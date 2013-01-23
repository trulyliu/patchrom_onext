.class Lcom/android/camera/component/PanoramaController$7;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController;->initializeOverride()V
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
        "Lcom/android/camera/event/SingleHandlerEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$7;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 986
    check-cast p3, Lcom/android/camera/event/SingleHandlerEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/PanoramaController$7;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/SingleHandlerEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/SingleHandlerEventArgs;)V
    .locals 1
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/SingleHandlerEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/SingleHandlerEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 989
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/SingleHandlerEventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$7;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4800(Lcom/android/camera/component/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$7;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->deleteCapturedImage()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4900(Lcom/android/camera/component/PanoramaController;)V

    .line 992
    invoke-virtual {p3}, Lcom/android/camera/event/SingleHandlerEventArgs;->setHandled()V

    .line 994
    :cond_0
    return-void
.end method
