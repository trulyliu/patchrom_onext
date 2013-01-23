.class Lcom/android/camera/component/CameraModeScreen$4;
.super Ljava/lang/Object;
.source "CameraModeScreen.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CameraModeScreen;-><init>(Lcom/android/camera/HTCCamera;)V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CameraModeScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CameraModeScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/component/CameraModeScreen$4;->this$0:Lcom/android/camera/component/CameraModeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/camera/component/CameraModeScreen$4;->this$0:Lcom/android/camera/component/CameraModeScreen;

    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen$4;->this$0:Lcom/android/camera/component/CameraModeScreen;

    #getter for: Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CameraModeScreen;->access$200(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    .line 91
    return-void
.end method
