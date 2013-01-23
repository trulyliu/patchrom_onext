.class Lcom/android/camera/sina/GifModeUI$4;
.super Lcom/android/camera/trigger/Trigger;
.source "GifModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/sina/GifModeUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/sina/GifModeUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/camera/sina/GifModeUI$4;->this$0:Lcom/android/camera/sina/GifModeUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$4;->this$0:Lcom/android/camera/sina/GifModeUI;

    #getter for: Lcom/android/camera/sina/GifModeUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/sina/GifModeUI;->access$700(Lcom/android/camera/sina/GifModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/camera/sina/GifModeUI$4;->this$0:Lcom/android/camera/sina/GifModeUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/sina/GifModeUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/android/camera/sina/GifModeUI;->access$602(Lcom/android/camera/sina/GifModeUI;Z)Z

    goto :goto_0
.end method
