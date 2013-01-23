.class Lcom/android/camera/component/ObjectTrackingUI$7;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


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
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/effect/EffectBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$7;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 1
    .parameter
    .parameter "sender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/effect/EffectBase;>;>;"
    .local p3, e:Lcom/android/camera/OneValueEventArgs;,"Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/PanoramaScene;

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/HdrScene;

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$7;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->disableOT()V
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$200(Lcom/android/camera/component/ObjectTrackingUI;)V

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$7;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->enableOT()V
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$400(Lcom/android/camera/component/ObjectTrackingUI;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 222
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ObjectTrackingUI$7;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
