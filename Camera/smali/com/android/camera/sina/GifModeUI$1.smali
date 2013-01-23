.class Lcom/android/camera/sina/GifModeUI$1;
.super Ljava/lang/Object;
.source "GifModeUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/sina/GifModeUI;->registerListeners()V
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
        "Lcom/android/camera/ExternalCommandEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/sina/GifModeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/camera/sina/GifModeUI$1;->this$0:Lcom/android/camera/sina/GifModeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 3
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/ExternalCommandEventArgs;>;"
    iget-object v0, p3, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 353
    .local v0, command:Ljava/lang/String;
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/camera/sina/GifModeUI$1;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/sina/GifModeUI;->access$000(Lcom/android/camera/sina/GifModeUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "set_conti_burst_long_press_timeout TIMEOUT(Milliseconds)"

    invoke-virtual {p3, v1, v2}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 348
    check-cast p3, Lcom/android/camera/ExternalCommandEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/sina/GifModeUI$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method
