.class Lcom/android/camera/effect/AutoScene$7;
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
        "Lcom/android/camera/effect/EffectBase;",
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
    .line 124
    iput-object p1, p0, Lcom/android/camera/effect/AutoScene$7;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/effect/EffectBase;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$7;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0}, Lcom/android/camera/effect/AutoScene;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$7;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->canEnableSkinBeauty()Z
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$300(Lcom/android/camera/effect/AutoScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$7;->this$0:Lcom/android/camera/effect/AutoScene;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/effect/AutoScene;->enableSkinBeauty(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/AutoScene;->access$400(Lcom/android/camera/effect/AutoScene;Z)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$7;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->disableSkinBeauty()V
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$500(Lcom/android/camera/effect/AutoScene;)V

    goto :goto_0
.end method
