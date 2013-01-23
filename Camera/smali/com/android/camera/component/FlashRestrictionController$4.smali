.class Lcom/android/camera/component/FlashRestrictionController$4;
.super Ljava/lang/Object;
.source "FlashRestrictionController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/FlashRestrictionController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 279
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->stopFileObservers()V
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$600(Lcom/android/camera/component/FlashRestrictionController;)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #getter for: Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$200(Lcom/android/camera/component/FlashRestrictionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 285
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #setter for: Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/FlashRestrictionController;->access$202(Lcom/android/camera/component/FlashRestrictionController;Z)Z

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #setter for: Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I
    invoke-static {v0, v1}, Lcom/android/camera/component/FlashRestrictionController;->access$702(Lcom/android/camera/component/FlashRestrictionController;I)I

    .line 288
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #setter for: Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z
    invoke-static {v0, v4}, Lcom/android/camera/component/FlashRestrictionController;->access$802(Lcom/android/camera/component/FlashRestrictionController;Z)Z

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->startFileObservers()V
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$900(Lcom/android/camera/component/FlashRestrictionController;)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$4;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #getter for: Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$500(Lcom/android/camera/component/FlashRestrictionController;)Lcom/android/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2712

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/WorkerThread;->sendMessage(IJZ)Z

    goto :goto_0
.end method
