.class public Lcom/android/stocksettings/StockSettings$UsbStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/StockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/StockSettings;


# direct methods
.method public constructor <init>(Lcom/android/stocksettings/StockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;->this$0:Lcom/android/stocksettings/StockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;->this$0:Lcom/android/stocksettings/StockSettings;

    const-string v2, "connected"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/stocksettings/StockSettings;->mUsbConnected:Z
    invoke-static {v1, v2}, Lcom/android/stocksettings/StockSettings;->access$002(Lcom/android/stocksettings/StockSettings;Z)Z

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;->this$0:Lcom/android/stocksettings/StockSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/StockSettings;->updateInternetPTState()V

    .line 217
    return-void

    .line 211
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;->this$0:Lcom/android/stocksettings/StockSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/stocksettings/StockSettings;->mMassStorageActive:Z
    invoke-static {v1, v2}, Lcom/android/stocksettings/StockSettings;->access$102(Lcom/android/stocksettings/StockSettings;Z)Z

    goto :goto_0

    .line 213
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings$UsbStateReceiver;->this$0:Lcom/android/stocksettings/StockSettings;

    #setter for: Lcom/android/stocksettings/StockSettings;->mMassStorageActive:Z
    invoke-static {v1, v3}, Lcom/android/stocksettings/StockSettings;->access$102(Lcom/android/stocksettings/StockSettings;Z)Z

    goto :goto_0
.end method
