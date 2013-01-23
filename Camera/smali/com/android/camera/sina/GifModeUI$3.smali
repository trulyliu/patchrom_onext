.class Lcom/android/camera/sina/GifModeUI$3;
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
        "Lcom/android/camera/TakingPictureState;",
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
    .line 385
    iput-object p1, p0, Lcom/android/camera/sina/GifModeUI$3;->this$0:Lcom/android/camera/sina/GifModeUI;

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
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/TakingPictureState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/TakingPictureState;>;"
    const/4 v2, 0x1

    .line 390
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$3;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$700(Lcom/android/camera/sina/GifModeUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-object v1, Lcom/android/camera/sina/GifModeUI$8;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$3;->this$0:Lcom/android/camera/sina/GifModeUI;

    #calls: Lcom/android/camera/sina/GifModeUI;->canUseGifMode()Z
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$100(Lcom/android/camera/sina/GifModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$3;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$500(Lcom/android/camera/sina/GifModeUI;)I

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$3;->this$0:Lcom/android/camera/sina/GifModeUI;

    #setter for: Lcom/android/camera/sina/GifModeUI;->m_CanCapture:Z
    invoke-static {v0, v2}, Lcom/android/camera/sina/GifModeUI;->access$602(Lcom/android/camera/sina/GifModeUI;Z)Z

    .line 404
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$3;->this$0:Lcom/android/camera/sina/GifModeUI;

    #setter for: Lcom/android/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0, v2}, Lcom/android/camera/sina/GifModeUI;->access$502(Lcom/android/camera/sina/GifModeUI;I)I

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
