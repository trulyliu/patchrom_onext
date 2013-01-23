.class Lcom/android/camera/sina/GifModeUI$2;
.super Ljava/lang/Object;
.source "GifModeUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/sina/GifModeUI;->registerListeners()V
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
.field final synthetic this$0:Lcom/android/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/sina/GifModeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    #calls: Lcom/android/camera/sina/GifModeUI;->canUseGifMode()Z
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$100(Lcom/android/camera/sina/GifModeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    const v1, 0x7f0a0056

    #calls: Lcom/android/camera/sina/GifModeUI;->changeRecording(I)V
    invoke-static {v0, v1}, Lcom/android/camera/sina/GifModeUI;->access$200(Lcom/android/camera/sina/GifModeUI;I)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$300(Lcom/android/camera/sina/GifModeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Release capture button"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    #calls: Lcom/android/camera/sina/GifModeUI;->closeCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$400(Lcom/android/camera/sina/GifModeUI;)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$500(Lcom/android/camera/sina/GifModeUI;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    const/4 v1, 0x2

    #setter for: Lcom/android/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0, v1}, Lcom/android/camera/sina/GifModeUI;->access$502(Lcom/android/camera/sina/GifModeUI;I)I

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$2;->this$0:Lcom/android/camera/sina/GifModeUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/sina/GifModeUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/android/camera/sina/GifModeUI;->access$602(Lcom/android/camera/sina/GifModeUI;Z)Z

    goto :goto_0
.end method
