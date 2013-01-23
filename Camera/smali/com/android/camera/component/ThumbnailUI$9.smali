.class Lcom/android/camera/component/ThumbnailUI$9;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/UIState;>;"
    const/4 v3, 0x1

    .line 563
    sget-object v2, Lcom/android/camera/component/ThumbnailUI$15;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 566
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    if-eq v1, v2, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$1000(Lcom/android/camera/component/ThumbnailUI;)V

    goto :goto_0

    .line 572
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/ThumbnailUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    .line 575
    .local v0, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/BurstScene;

    if-nez v1, :cond_0

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/camera/component/ThumbnailUI;->access$1300(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
