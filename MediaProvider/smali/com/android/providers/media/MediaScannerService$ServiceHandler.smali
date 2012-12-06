.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    .line 1001
    const/16 v21, 0x0

    .line 1002
    .local v21, isMediaMountedType:Z
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    .line 1003
    .local v11, arguments:Landroid/os/Bundle;
    const-string v4, "filepath"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1004
    .local v17, filePath:Ljava/lang/String;
    const-string v30, "/.voicerecorder/voices"

    .line 1007
    .local v30, voicerecordDonut:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getSDCardDirectory()Ljava/lang/String;

    move-result-object v15

    .line 1008
    .local v15, extsd:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getVirtualRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v28

    .line 1013
    .local v28, virtual:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getUsbStorageDirectory()Ljava/lang/String;

    move-result-object v16

    .line 1015
    .local v16, extusb:Ljava/lang/String;
    const/16 v26, 0x0

    .line 1019
    .local v26, sdcardmount:Z
    if-eqz v17, :cond_2

    .line 1020
    :try_start_0
    const-string v4, "listener"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 1021
    .local v13, binder:Landroid/os/IBinder;
    if-nez v13, :cond_1

    const/16 v22, 0x0

    .line 1025
    .local v22, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/16 v27, 0x0

    .line 1027
    .local v27, uri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v32, "mimetype"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v4, v0, v1}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 1029
    if-eqz v22, :cond_0

    .line 1030
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1301
    .end local v13           #binder:Landroid/os/IBinder;
    .end local v22           #listener:Landroid/media/IMediaScannerListener;
    .end local v27           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 1302
    return-void

    .line 1021
    .restart local v13       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_2
    invoke-static {v13}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v22

    goto :goto_0

    .line 1032
    .restart local v22       #listener:Landroid/media/IMediaScannerListener;
    .restart local v27       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 1033
    .local v14, e:Ljava/lang/Exception;
    const-string v4, "MediaScannerService"

    const-string v32, "Exception scanning file"

    move-object/from16 v0, v32

    invoke-static {v4, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1297
    .end local v13           #binder:Landroid/os/IBinder;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v22           #listener:Landroid/media/IMediaScannerListener;
    .end local v27           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v14

    .line 1298
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "MediaScannerService"

    const-string v32, "Exception in handleMessage"

    move-object/from16 v0, v32

    invoke-static {v4, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1036
    .end local v14           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v4, "volume"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1037
    .local v6, volume:Ljava/lang/String;
    const-string v4, "ignoreScan"

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1038
    .local v20, ignoreScan:Z
    const-string v4, "MTP_Path"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1039
    .local v8, mtpPath:Ljava/lang/String;
    const-string v4, "MTP_Level"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1041
    .local v9, mtpLevel:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1042
    .local v5, directories:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1044
    .local v7, bScanMediaOnly:Z
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[MediaScannerService][ServiceHandler]+"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v4, "internal"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1051
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/media"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v4

    .line 1255
    .restart local v5       #directories:[Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_0

    .line 1257
    sget-object v32, Lcom/android/providers/media/MediaProvider;->StateTransition:Ljava/lang/Boolean;

    monitor-enter v32
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1258
    const/4 v4, 0x1

    :try_start_4
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1259
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1261
    if-eqz v5, :cond_5

    .line 1263
    :try_start_5
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->noRemovableStorage()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v21, :cond_4

    .line 1264
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->IsScanningInternalStorage:Z

    .line 1265
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->IsInQueueInternalStorage:Z

    .line 1266
    const-string v4, "MediaScannerService"

    const-string v32, "[MP][State][2] DeQueue & StartScan"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_4
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "start scanning volume "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v4 .. v9}, Lcom/android/providers/media/MediaScannerService;->access$800(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "done scanning volume "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->noRemovableStorage()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v21, :cond_5

    .line 1277
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->IsScanningInternalStorage:Z

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaScannerService;->createdMediaMountedDB()V

    .line 1279
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->IsInQueueInternalStorage:Z

    if-eqz v4, :cond_16

    .line 1280
    const-string v4, "MediaScannerService"

    const-string v32, "[MP][State][3] InQueue & Stop Scan"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_5
    :goto_3
    sget-object v32, Lcom/android/providers/media/MediaProvider;->StateTransition:Ljava/lang/Boolean;

    monitor-enter v32
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1288
    const/4 v4, 0x0

    :try_start_6
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1289
    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1291
    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :try_start_7
    aget-object v4, v5, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_0

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-wide/16 v32, 0x1

    move-wide/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V
    invoke-static {v4, v0, v1}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;J)V

    goto/16 :goto_1

    .line 1054
    :cond_6
    const-string v4, "customize"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1055
    const-string v6, "internal"

    .line 1056
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/customize/resource"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v4

    .restart local v5       #directories:[Ljava/lang/String;
    goto/16 :goto_2

    .line 1059
    :cond_7
    const-string v4, "exdsdcard"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_9

    :cond_8
    const-string v4, "exdusb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    .line 1062
    :cond_9
    const-string v4, "action"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1064
    .local v10, action:Ljava/lang/String;
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[MediaScannerService][ServiceHandler]volume:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",action:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1071
    :cond_a
    sget-object v32, Lcom/android/providers/media/MediaProvider;->StateTransition:Ljava/lang/Boolean;

    monitor-enter v32
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1072
    const/4 v4, 0x1

    :try_start_8
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1073
    monitor-exit v32
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1074
    const/16 v27, 0x0

    .line 1075
    .restart local v27       #uri:Landroid/net/Uri;
    :try_start_9
    const-string v4, "exdusb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "file://"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 1081
    :cond_b
    :goto_4
    new-instance v18, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1082
    .local v18, i1:Landroid/content/Intent;
    const-string v4, "action"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v32, "external"

    move-object/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static {v4}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1090
    sget-object v32, Lcom/android/providers/media/MediaProvider;->StateTransition:Ljava/lang/Boolean;

    monitor-enter v32
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1091
    const/4 v4, 0x0

    :try_start_a
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1092
    monitor-exit v32
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1094
    :try_start_b
    new-instance v19, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1095
    .local v19, i2:Landroid/content/Intent;
    const-string v4, "action"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V
    invoke-static {v4, v0, v1}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;J)V

    .line 1101
    const/4 v5, 0x0

    .line 1145
    .end local v18           #i1:Landroid/content/Intent;
    .end local v19           #i2:Landroid/content/Intent;
    .end local v27           #uri:Landroid/net/Uri;
    :cond_c
    :goto_5
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[MediaScannerService][ServiceHandler][EXPSDCARD_VOLUME]-"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    .line 1073
    :catchall_0
    move-exception v4

    :try_start_c
    monitor-exit v32
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v4

    .line 1077
    .restart local v27       #uri:Landroid/net/Uri;
    :cond_d
    const-string v4, "exdsdcard"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "file://"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v27

    goto/16 :goto_4

    .line 1092
    .restart local v18       #i1:Landroid/content/Intent;
    :catchall_1
    move-exception v4

    :try_start_e
    monitor-exit v32
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v4

    .line 1102
    .end local v18           #i1:Landroid/content/Intent;
    .end local v27           #uri:Landroid/net/Uri;
    :cond_e
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1104
    const/16 v26, 0x1

    .line 1105
    const-string v4, "exdsdcard"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1113
    const/4 v4, 0x1

    invoke-static {v4, v15}, Lcom/android/providers/media/MediaProvider;->CalcVolumeID3(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1114
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v15, v5, v4

    .line 1115
    .restart local v5       #directories:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1126
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v32, "external"

    move-object/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    sget v32, Lcom/android/providers/media/MediaProvider;->mVolId:I

    move/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V
    invoke-static {v4, v0}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;I)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static {v4}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    sget v32, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    #calls: Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V
    invoke-static {v4, v0, v1}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;II)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->deleteNonUseAlbumArts()V
    invoke-static {v4}, Lcom/android/providers/media/MediaScannerService;->access$700(Lcom/android/providers/media/MediaScannerService;)V

    .line 1135
    const-string v6, "external"

    .line 1138
    const-string v4, "MediaScannerService"

    const-string v32, "[MediaScannerService][ServiceHandler]Prepare DB for USB_VOLUME or EXPSDCARD_VOLUME"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v4, "content://media/external/mp_db_prepare"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 1140
    .local v23, recoverUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    const-string v33, ""

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1116
    .end local v23           #recoverUri:Landroid/net/Uri;
    :cond_f
    const-string v4, "exdusb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1118
    const/4 v4, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/android/providers/media/MediaProvider;->CalcVolumeID3(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1120
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getUsbStorageDirectory()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v4

    .line 1121
    .restart local v5       #directories:[Ljava/lang/String;
    const/4 v7, 0x0

    goto :goto_6

    .line 1123
    :cond_10
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v15, v5, v4

    .restart local v5       #directories:[Ljava/lang/String;
    goto/16 :goto_6

    .line 1146
    .end local v10           #action:Ljava/lang/String;
    :cond_11
    const-string v4, "external"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1148
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[MediaScannerService][ServiceHandler][EXTERNAL_VOLUME]+"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v32, "mounted"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1153
    const/16 v21, 0x1

    .line 1154
    const-string v4, "MediaScannerService"

    const-string v32, "[MP][State] Scanner service start "

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v32, "/.voicerecorder/voices"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1162
    .local v31, voicerecordDonutPath:Ljava/lang/String;
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 1163
    .local v29, voicerecord:Ljava/io/File;
    const/4 v12, 0x0

    .line 1165
    .local v12, bVoicerecordDonutPathExist:Z
    :try_start_10
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->isDirectory()Z
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    move-result v4

    if-eqz v4, :cond_12

    .line 1166
    const/4 v12, 0x1

    .line 1171
    :cond_12
    :goto_7
    if-eqz v12, :cond_14

    .line 1172
    const/4 v4, 0x2

    :try_start_11
    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v4

    const/4 v4, 0x1

    aput-object v31, v5, v4

    .line 1185
    .restart local v5       #directories:[Ljava/lang/String;
    :goto_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 1186
    .local v25, sd:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v24

    .line 1202
    .local v24, removeStorageState:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v4, v15}, Lcom/android/providers/media/MediaProvider;->CalcVolumeID3(ILjava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v32, "external"

    move-object/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static {v4}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1216
    sget v4, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_13

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    sget v32, Lcom/android/providers/media/MediaProvider;->mVolId:I

    move/from16 v0, v32

    #calls: Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V
    invoke-static {v4, v0}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;I)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    sget v32, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    #calls: Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V
    invoke-static {v4, v0, v1}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;II)V

    .line 1225
    :cond_13
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[MediaScannerService][ServiceHandler][expend]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v5, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",extsd:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ,mVolId:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/providers/media/MediaProvider;->mVolId:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v4, "MediaScannerService"

    const-string v32, "[MediaScannerService][ServiceHandler]Prepare DB for EXTERNAL_VOLUME"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v4, "content://media/external/mp_db_prepare"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 1235
    .restart local v23       #recoverUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    const-string v33, ""

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1167
    .end local v23           #recoverUri:Landroid/net/Uri;
    .end local v24           #removeStorageState:Ljava/lang/String;
    .end local v25           #sd:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 1168
    .local v14, e:Ljava/lang/SecurityException;
    const-string v4, "MediaScannerService"

    const-string v32, "chk bVoicerecordDonutPathExist SecurityException: "

    move-object/from16 v0, v32

    invoke-static {v4, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1178
    .end local v14           #e:Ljava/lang/SecurityException;
    :cond_14
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .end local v5           #directories:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v4

    .restart local v5       #directories:[Ljava/lang/String;
    goto/16 :goto_8

    .line 1239
    .end local v12           #bVoicerecordDonutPathExist:Z
    .end local v29           #voicerecord:Ljava/io/File;
    .end local v31           #voicerecordDonutPath:Ljava/lang/String;
    :cond_15
    const-string v4, "MediaScannerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "cancel scan because volume"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " not mounted."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_2

    .line 1259
    :catchall_2
    move-exception v4

    :try_start_12
    monitor-exit v32
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v4

    .line 1282
    :cond_16
    const-string v4, "MediaScannerService"

    const-string v32, "[MP][State][4] EmptyQueue & Stop Scan"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_3

    .line 1289
    :catchall_3
    move-exception v4

    :try_start_14
    monitor-exit v32
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
.end method
