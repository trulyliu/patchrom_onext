.class public Lcom/android/providers/media/UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/UsbReceiver$ReceiveHandler;
    }
.end annotation


# static fields
.field private static final CMD_START:I = 0x1

.field private static final CMD_STOP:I = 0x0

.field private static final PTP_ENABLED:I = 0x1

.field private static final PTP_UNENABLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbReceiver"


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    iget-object v1, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;-><init>(Lcom/android/providers/media/UsbReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    .line 50
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 58
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 112
    const-string v5, "UsbReceiver"

    const-string v6, "[MTP][UsbReceiver][onReceive]+"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/android/providers/media/UsbReceiver;->mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    invoke-virtual {v5}, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 114
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 120
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "configured"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 121
    .local v0, connected:Z
    const-string v5, "mtp"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 122
    .local v3, mtpEnabled:Z
    const-string v5, "ptp"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 125
    .local v4, ptpEnabled:Z
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 127
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->mRequestFullScan:Z

    if-nez v5, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/providers/media/UsbReceiver;->requestFullScanForMTP(Landroid/content/Context;)I

    .line 130
    :cond_0
    sput-boolean v7, Lcom/android/providers/media/MediaProvider;->mRequestFullScan:Z

    .line 133
    :cond_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    .line 135
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->mRequestFullScan:Z

    if-ne v5, v7, :cond_2

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/providers/media/UsbReceiver;->requestStopScanForMTP(Landroid/content/Context;)I

    .line 138
    :cond_2
    sput-boolean v8, Lcom/android/providers/media/MediaProvider;->mRequestFullScan:Z

    .line 143
    :cond_3
    if-eqz v0, :cond_6

    if-nez v3, :cond_4

    if-eqz v4, :cond_6

    .line 146
    :cond_4
    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 148
    if-ne v7, v4, :cond_5

    .line 149
    iput v7, v2, Landroid/os/Message;->arg2:I

    .line 161
    :goto_0
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object v5, p0, Lcom/android/providers/media/UsbReceiver;->mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    invoke-virtual {v5, v2}, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    const-string v5, "UsbReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MTP][UsbReceiver][onReceive]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 151
    :cond_5
    iput v8, v2, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 159
    :cond_6
    iput v8, v2, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method requestFullScanForMTP(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, storageCount:I
    new-array v6, v7, [Ljava/lang/String;

    .line 187
    .local v6, volumns:[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    .line 190
    .local v3, path:[Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    const-string v7, "external"

    aput-object v7, v6, v10

    .line 193
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 197
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v4

    .line 198
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    add-int/lit8 v5, v5, 0x1

    .line 200
    const-string v7, "exdsdcard"

    aput-object v7, v6, v8

    .line 201
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v8

    .line 203
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, args:Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "volume"

    aget-object v8, v6, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v7, "MTP_Path"

    aget-object v8, v3, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v7, "MTP_Level"

    const-string v8, "-1"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v7, "ignoreScan"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    const-string v7, "UsbReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MP][DEBUG][UsbReceiver] requestFullScanForMTP path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return v5
.end method

.method requestStopScanForMTP(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "file://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "MTP_Path"

    const-string v3, "path"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "MTP_Level"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.MEDIA_MOUNTED_LEVEL"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    const-string v2, "UsbReceiver"

    const-string v3, "[MP][DEBUG][UsbReceiver] requestStopScanForMTP com.htc.intent.action.MEDIA_MOUNTED_LEVEL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v2, 0x0

    return v2
.end method
