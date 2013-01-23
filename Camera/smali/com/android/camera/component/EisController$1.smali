.class Lcom/android/camera/component/EisController$1;
.super Ljava/lang/Object;
.source "EisController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/EisController;->setupEventHandlers()V
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
.field final synthetic this$0:Lcom/android/camera/component/EisController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/EisController;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/component/EisController$1;->this$0:Lcom/android/camera/component/EisController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V
    .locals 3
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
    const/4 v2, 0x1

    .line 119
    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p3, Lcom/android/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/EisController$1;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$000(Lcom/android/camera/component/EisController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/EisController$1;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/component/EisController;->m_IsTakingPicture:Z
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$100(Lcom/android/camera/component/EisController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/component/EisController$1;->this$0:Lcom/android/camera/component/EisController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/EisController;->access$200(Lcom/android/camera/component/EisController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - receive EIS callback."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/component/EisController$1;->this$0:Lcom/android/camera/component/EisController;

    #setter for: Lcom/android/camera/component/EisController;->m_IsUiNeeded:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/EisController;->access$302(Lcom/android/camera/component/EisController;Z)Z

    .line 124
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    check-cast p3, Lcom/android/camera/HtcCallbackEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/EisController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/HtcCallbackEventArgs;)V

    return-void
.end method
