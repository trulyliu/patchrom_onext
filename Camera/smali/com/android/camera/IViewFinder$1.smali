.class Lcom/android/camera/IViewFinder$1;
.super Lcom/android/camera/event/Event;
.source "IViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/IViewFinder;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/event/Event",
        "<",
        "Lcom/android/camera/DrawPreviewFilterEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/IViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/IViewFinder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/IViewFinder$1;->this$0:Lcom/android/camera/IViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHandler(Lcom/android/camera/event/EventHandler;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-",
            "Lcom/android/camera/DrawPreviewFilterEventArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<-Lcom/android/camera/DrawPreviewFilterEventArgs;>;"
    invoke-virtual {p0}, Lcom/android/camera/IViewFinder$1;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/IViewFinder$1;->this$0:Lcom/android/camera/IViewFinder;

    invoke-virtual {v0}, Lcom/android/camera/IViewFinder;->invalidatePreviewFilter()V

    goto :goto_0
.end method
