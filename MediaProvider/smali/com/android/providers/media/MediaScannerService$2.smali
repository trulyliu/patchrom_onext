.class Lcom/android/providers/media/MediaScannerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$2;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1332
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$2;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaScannerService;->pauseScan()V

    .line 1335
    const-string v1, "MediaScannerService"

    const-string v2, "receive red light"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_0
    return-void

    .line 1336
    :cond_0
    const-string v1, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1337
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$2;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaScannerService;->resumeScan()V

    .line 1338
    const-string v1, "MediaScannerService"

    const-string v2, "receive green light"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1340
    :cond_1
    const-string v1, "MediaScannerService"

    const-string v2, "yellow light???"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
