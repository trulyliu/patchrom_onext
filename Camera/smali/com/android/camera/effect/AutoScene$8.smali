.class Lcom/android/camera/effect/AutoScene$8;
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
        "Ljava/lang/Integer;",
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
    .line 138
    iput-object p1, p0, Lcom/android/camera/effect/AutoScene$8;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Integer;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$8;->this$0:Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0}, Lcom/android/camera/effect/AutoScene;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$8;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->canEnableSkinBeauty()Z
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$300(Lcom/android/camera/effect/AutoScene;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/camera/effect/AutoScene$8;->this$0:Lcom/android/camera/effect/AutoScene;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    iget-object v2, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/camera/effect/AutoScene;->enableSkinBeauty(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/effect/AutoScene;->access$400(Lcom/android/camera/effect/AutoScene;Z)V

    .line 149
    :cond_0
    :goto_1
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/AutoScene$8;->this$0:Lcom/android/camera/effect/AutoScene;

    #calls: Lcom/android/camera/effect/AutoScene;->disableSkinBeauty()V
    invoke-static {v0}, Lcom/android/camera/effect/AutoScene;->access$500(Lcom/android/camera/effect/AutoScene;)V

    goto :goto_1
.end method
