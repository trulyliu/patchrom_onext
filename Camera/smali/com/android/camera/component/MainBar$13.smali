.class Lcom/android/camera/component/MainBar$13;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


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
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/AutoDetectedScene;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/component/MainBar$13;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/AutoDetectedScene;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/AutoDetectedScene;>;"
    iget-object v2, p0, Lcom/android/camera/component/MainBar$13;->this$0:Lcom/android/camera/component/MainBar;

    const-class v3, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/MainBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    .line 403
    .local v0, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    move-object v1, v2

    .line 404
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar$13;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v2, v1}, Lcom/android/camera/component/MainBar;->access$900(Lcom/android/camera/component/MainBar;Lcom/android/camera/effect/EffectBase;)V

    .line 405
    return-void

    .line 403
    .end local v1           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
