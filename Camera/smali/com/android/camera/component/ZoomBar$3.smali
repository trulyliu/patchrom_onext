.class Lcom/android/camera/component/ZoomBar$3;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
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
        "Lcom/android/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

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
    .line 220
    check-cast p3, Lcom/android/camera/input/KeyEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ZoomBar$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V
    .locals 7
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/input/KeyEventArgs;>;"
    const/4 v5, 0x0

    const/16 v2, 0x2712

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 224
    iget v0, p3, Lcom/android/camera/input/KeyEventArgs;->keyCode:I

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 235
    :goto_1
    invoke-virtual {p3}, Lcom/android/camera/input/KeyEventArgs;->setHandled()V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    move v3, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
