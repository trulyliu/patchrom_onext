.class Lcom/android/camera/sina/GifModeUI$7;
.super Ljava/lang/Object;
.source "GifModeUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/sina/GifModeUI;->setupPropertyChangedCallbacks()V
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
.field final synthetic this$0:Lcom/android/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/sina/GifModeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/camera/sina/GifModeUI$7;->this$0:Lcom/android/camera/sina/GifModeUI;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/UIState;>;"
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$7;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$700(Lcom/android/camera/sina/GifModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v1, Lcom/android/camera/sina/GifModeUI$8;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/UIState;

    invoke-virtual {v0}, Lcom/android/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 570
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$7;->this$0:Lcom/android/camera/sina/GifModeUI;

    invoke-static {}, Lcom/android/camera/sina/GifModeUI;->access$900()Landroid/graphics/Bitmap;

    move-result-object v1

    #calls: Lcom/android/camera/sina/GifModeUI;->showReviewImage(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/android/camera/sina/GifModeUI;->access$1000(Lcom/android/camera/sina/GifModeUI;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 573
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$7;->this$0:Lcom/android/camera/sina/GifModeUI;

    #calls: Lcom/android/camera/sina/GifModeUI;->hideReviewImage()V
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$1100(Lcom/android/camera/sina/GifModeUI;)V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
