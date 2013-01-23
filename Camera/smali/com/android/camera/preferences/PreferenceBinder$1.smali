.class Lcom/android/camera/preferences/PreferenceBinder$1;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/preferences/PreferenceBinder;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/preferences/PreferenceBinder;


# direct methods
.method constructor <init>(Lcom/android/camera/preferences/PreferenceBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder$1;,"Lcom/android/camera/preferences/PreferenceBinder.1;"
    iput-object p1, p0, Lcom/android/camera/preferences/PreferenceBinder$1;->this$0:Lcom/android/camera/preferences/PreferenceBinder;

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
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder$1;,"Lcom/android/camera/preferences/PreferenceBinder.1;"
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Ljava/lang/String;>;>;"
    .local p3, e:Lcom/android/camera/OneValueEventArgs;,"Lcom/android/camera/OneValueEventArgs<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder$1;->this$0:Lcom/android/camera/preferences/PreferenceBinder;

    #getter for: Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z
    invoke-static {v0}, Lcom/android/camera/preferences/PreferenceBinder;->access$000(Lcom/android/camera/preferences/PreferenceBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder$1;->this$0:Lcom/android/camera/preferences/PreferenceBinder;

    iget-object v0, v0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder$1;->this$0:Lcom/android/camera/preferences/PreferenceBinder;

    invoke-virtual {v0}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference()V

    .line 42
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    .local p0, this:Lcom/android/camera/preferences/PreferenceBinder$1;,"Lcom/android/camera/preferences/PreferenceBinder.1;"
    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/preferences/PreferenceBinder$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
