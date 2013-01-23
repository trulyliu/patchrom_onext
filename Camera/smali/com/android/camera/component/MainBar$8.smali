.class Lcom/android/camera/component/MainBar$8;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/camera/component/MainBar$8;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
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
    .line 341
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/effect/EffectBase;>;>;"
    .local p3, e:Lcom/android/camera/OneValueEventArgs;,"Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v1, p0, Lcom/android/camera/component/MainBar$8;->this$0:Lcom/android/camera/component/MainBar;

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    #calls: Lcom/android/camera/component/MainBar;->setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/MainBar;->access$900(Lcom/android/camera/component/MainBar;Lcom/android/camera/effect/EffectBase;)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/component/MainBar$8;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1000(Lcom/android/camera/component/MainBar;)V

    .line 343
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 337
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/MainBar$8;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
