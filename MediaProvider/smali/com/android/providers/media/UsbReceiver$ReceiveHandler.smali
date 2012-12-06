.class final Lcom/android/providers/media/UsbReceiver$ReceiveHandler;
.super Landroid/os/Handler;
.source "UsbReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/UsbReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReceiveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/UsbReceiver;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/UsbReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;->this$0:Lcom/android/providers/media/UsbReceiver;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 73
    .local v0, context:Landroid/content/Context;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_2

    .line 75
    const-string v3, "UsbReceiver"

    const-string v4, "[MTP][handleMessage][startService]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, ptpEnabled:Z
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_0

    .line 80
    const/4 v2, 0x1

    .line 82
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/media/MtpService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v1, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 84
    const-string v3, "ptp"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    const-string v3, "UsbReceiver"

    const-string v4, "[MTP][handleMessage][UsbManager.USB_CONNECTED][insert]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://media/none/mtp_connected"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 106
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #ptpEnabled:Z
    :goto_0
    const-string v3, "UsbReceiver"

    const-string v4, "[MTP][handleMessage]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 94
    :cond_2
    const-string v3, "UsbReceiver"

    const-string v4, "[MTP][handleMessage][stopService]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/media/MtpService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 100
    const-string v3, "UsbReceiver"

    const-string v4, "[MTP][handleMessage][delete]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://media/none/mtp_connected"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
