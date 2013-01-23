.class public Lcom/android/camera/IncomingPhoneCallIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncomingPhoneCallIntentReceiver.java"


# static fields
.field public static final CAMERA_APP_HASHCODE:Ljava/lang/String; = "Camera_Application_hashCode"

.field public static final NAME:Ljava/lang/String; = "PhoneCallUI"


# instance fields
.field private mSettings:Lcom/android/camera/Settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    new-instance v3, Lcom/android/camera/Settings;

    invoke-direct {v3, p1}, Lcom/android/camera/Settings;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/IncomingPhoneCallIntentReceiver;->mSettings:Lcom/android/camera/Settings;

    .line 32
    iget-object v3, p0, Lcom/android/camera/IncomingPhoneCallIntentReceiver;->mSettings:Lcom/android/camera/Settings;

    const-string v4, "Camera_Application_hashCode"

    invoke-virtual {v3, v4}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 33
    .local v2, previousHash:I
    invoke-static {}, Lcom/android/camera/CameraApplication;->current()Lcom/android/camera/CameraApplication;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 35
    .local v0, appHashcode:I
    if-eq v0, v2, :cond_0

    .line 36
    const-string v3, "PhoneCallUI"

    const-string v4, "IncomingPhoneCallIntentReceiver"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, phoneShowIntent:Landroid/content/Intent;
    const-string v3, "com.htc.camera.intent.extra.rec"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    const-string v3, "PhoneCallUI"

    const-string v4, "IncomingPhoneCallIntentReceiver sendBroadcast"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->showIncallScreen()V

    .line 46
    .end local v1           #phoneShowIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v3, "PhoneCallUI"

    const-string v4, "Same process got IncomingPhoneCallIntentReceiver"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
