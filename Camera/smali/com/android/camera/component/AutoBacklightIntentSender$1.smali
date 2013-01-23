.class Lcom/android/camera/component/AutoBacklightIntentSender$1;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AutoBacklightIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$000(Lcom/android/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableAutoBacklight() - Run"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I
    invoke-static {v1, v2}, Lcom/android/camera/component/AutoBacklightIntentSender;->access$102(Lcom/android/camera/component/AutoBacklightIntentSender;I)I

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "backlight.delay"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender$1;->this$0:Lcom/android/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
