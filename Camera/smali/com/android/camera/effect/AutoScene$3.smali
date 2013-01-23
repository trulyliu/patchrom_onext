.class Lcom/android/camera/effect/AutoScene$3;
.super Ljava/lang/Object;
.source "AutoScene.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/AutoScene;-><init>(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/AutoScene;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/AutoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/effect/AutoScene$3;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$3;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0}, Lcom/android/camera/effect/AutoScene;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$3;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->canEnableFaceBeautifier()Z
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$000(Lcom/android/camera/effect/AutoScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$3;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->enableFaceBeautifier()V
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$100(Lcom/android/camera/effect/AutoScene;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$3;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->disableFaceBeautifier()V
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$200(Lcom/android/camera/effect/AutoScene;)V

    goto :goto_0
.end method
