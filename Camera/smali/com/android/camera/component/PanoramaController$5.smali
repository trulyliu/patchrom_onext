.class Lcom/android/camera/component/PanoramaController$5;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/scalado/camera/autorama/Autorama$AutoramaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V
    .locals 2
    .parameter "session"
    .parameter "camera"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onAutoramaComplete()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V
    .locals 7
    .parameter "newDirection"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 645
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoramaListener.onDirectionChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v0, v5}, Lcom/android/camera/component/PanoramaController;->access$1902(Lcom/android/camera/component/PanoramaController;I)I

    .line 657
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-result-object v6

    .line 658
    .local v6, options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    invoke-virtual {v6, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->lockDirection(Lcom/scalado/caps/autorama/Direction;)V

    .line 660
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    .line 661
    .local v1, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v1, :cond_2

    .line 662
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1900(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 665
    .end local v1           #ui:Lcom/android/camera/component/PanoramaUI;
    .end local v6           #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :goto_1
    return-void

    .line 649
    :cond_0
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    #setter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$1902(Lcom/android/camera/component/PanoramaController;I)I

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v0, v5, v4, v5}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    goto :goto_1

    .line 664
    .restart local v1       #ui:Lcom/android/camera/component/PanoramaUI;
    .restart local v6       #options:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "No UI to notify onDirectionChanged"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onIntermediateCaptureStart(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoramaListener.onIntermediateCaptureStart()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    .line 627
    .local v1, ui:Lcom/android/camera/component/PanoramaUI;
    if-eqz v1, :cond_1

    .line 629
    if-nez p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v0, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$2102(Lcom/android/camera/component/PanoramaController;J)J

    .line 640
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$2002(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 641
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$4200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "No UI to notify onIntermediateCaptureStart"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V
    .locals 33
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoramaListener.onIntermediateJpeg("

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ")"

    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v4

    monitor-enter v4

    .line 498
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v8}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v8, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v3, v8}, Lcom/android/camera/component/PanoramaController;->access$2302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 500
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v3, v4}, Lcom/android/camera/component/PanoramaController;->access$2002(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 507
    if-nez p2, :cond_3

    .line 509
    const/16 v31, 0x0

    .line 513
    .local v31, tempFile:Ljava/io/File;
    :try_start_1
    const-string v3, ".camera_temp"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v31

    .line 514
    new-instance v28, Ljava/io/FileOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 515
    .local v28, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v3

    new-array v0, v3, [B

    move-object/from16 v26, v0

    .line 516
    .local v26, jpegData:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/scalado/base/Buffer;->copyTo([B)V

    .line 517
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 518
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V

    .line 521
    new-instance v24, Landroid/media/ExifInterface;

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 522
    .local v24, exif:Landroid/media/ExifInterface;
    const/16 v3, 0xe

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v3, 0x0

    const-string v4, "DateTime"

    aput-object v4, v30, v3

    const/4 v3, 0x1

    const-string v4, "FocalLength"

    aput-object v4, v30, v3

    const/4 v3, 0x2

    const-string v4, "GPSAltitude"

    aput-object v4, v30, v3

    const/4 v3, 0x3

    const-string v4, "GPSAltitudeRef"

    aput-object v4, v30, v3

    const/4 v3, 0x4

    const-string v4, "GPSLatitude"

    aput-object v4, v30, v3

    const/4 v3, 0x5

    const-string v4, "GPSLatitudeRef"

    aput-object v4, v30, v3

    const/4 v3, 0x6

    const-string v4, "GPSLongitude"

    aput-object v4, v30, v3

    const/4 v3, 0x7

    const-string v4, "GPSLongitudeRef"

    aput-object v4, v30, v3

    const/16 v3, 0x8

    const-string v4, "GPSProcessingMethod"

    aput-object v4, v30, v3

    const/16 v3, 0x9

    const-string v4, "GPSDateStamp"

    aput-object v4, v30, v3

    const/16 v3, 0xa

    const-string v4, "GPSTimeStamp"

    aput-object v4, v30, v3

    const/16 v3, 0xb

    const-string v4, "Make"

    aput-object v4, v30, v3

    const/16 v3, 0xc

    const-string v4, "Model"

    aput-object v4, v30, v3

    const/16 v3, 0xd

    const-string v4, "WhiteBalance"

    aput-object v4, v30, v3

    .line 538
    .local v30, tagNames:[Ljava/lang/String;
    move-object/from16 v21, v30

    .local v21, arr$:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    aget-object v29, v21, v25

    .line 540
    .local v29, tagName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 541
    .local v32, value:Ljava/lang/String;
    if-eqz v32, :cond_1

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3000(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;

    move-result-object v3

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 500
    .end local v21           #arr$:[Ljava/lang/String;
    .end local v24           #exif:Landroid/media/ExifInterface;
    .end local v25           #i$:I
    .end local v26           #jpegData:[B
    .end local v27           #len$:I
    .end local v28           #outputStream:Ljava/io/FileOutputStream;
    .end local v29           #tagName:Ljava/lang/String;
    .end local v30           #tagNames:[Ljava/lang/String;
    .end local v31           #tempFile:Ljava/io/File;
    .end local v32           #value:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 551
    .restart local v21       #arr$:[Ljava/lang/String;
    .restart local v24       #exif:Landroid/media/ExifInterface;
    .restart local v25       #i$:I
    .restart local v26       #jpegData:[B
    .restart local v27       #len$:I
    .restart local v28       #outputStream:Ljava/io/FileOutputStream;
    .restart local v30       #tagNames:[Ljava/lang/String;
    .restart local v31       #tempFile:Ljava/io/File;
    :cond_2
    if-eqz v31, :cond_3

    .line 552
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    .line 557
    .end local v21           #arr$:[Ljava/lang/String;
    .end local v24           #exif:Landroid/media/ExifInterface;
    .end local v25           #i$:I
    .end local v26           #jpegData:[B
    .end local v27           #len$:I
    .end local v28           #outputStream:Ljava/io/FileOutputStream;
    .end local v30           #tagNames:[Ljava/lang/String;
    .end local v31           #tempFile:Ljava/io/File;
    :cond_3
    :goto_1
    const/4 v13, 0x0

    .line 558
    .local v13, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    if-nez v3, :cond_4

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p1

    #calls: Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-static {v3, v0}, Lcom/android/camera/component/PanoramaController;->access$3200(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v22

    .line 564
    .local v22, decoder:Lcom/scalado/caps/Decoder;
    if-eqz v22, :cond_4

    .line 569
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v5

    .line 570
    .local v5, thumbWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getThumbnailHeight()I

    move-result v6

    .line 571
    .local v6, thumbHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 572
    .local v2, landBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/scalado/caps/Session;

    check-cast v22, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .end local v22           #decoder:Lcom/scalado/caps/Decoder;
    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/camera/imaging/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V

    .line 575
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 576
    .local v7, matrix:Landroid/graphics/Matrix;
    const/high16 v3, 0x42b4

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 577
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 578
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 588
    .end local v2           #landBitmap:Landroid/graphics/Bitmap;
    .end local v5           #thumbWidth:I
    .end local v6           #thumbHeight:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 589
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v9

    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 594
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2204(Lcom/android/camera/component/PanoramaController;)I

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3500(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I
    invoke-static {v8}, Lcom/android/camera/component/PanoramaController;->access$3600(Lcom/android/camera/component/PanoramaController;)I

    move-result v8

    if-eq v3, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3700(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_5
    const/4 v3, 0x1

    :goto_4
    #setter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v4, v3}, Lcom/android/camera/component/PanoramaController;->access$3502(Lcom/android/camera/component/PanoramaController;Z)Z

    .line 599
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3500(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3800(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v3, v4, v8, v9}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 619
    :cond_7
    :goto_5
    return-void

    .line 545
    .end local v13           #thumb:Landroid/graphics/Bitmap;
    .restart local v31       #tempFile:Ljava/io/File;
    :catch_0
    move-exception v23

    .line 547
    .local v23, ex:Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot extract EXIF from first frame"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 551
    if-eqz v31, :cond_3

    .line 552
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 551
    .end local v23           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    if-eqz v31, :cond_8

    .line 552
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    :cond_8
    throw v3

    .line 580
    .end local v31           #tempFile:Ljava/io/File;
    .restart local v13       #thumb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v23

    .line 582
    .restart local v23       #ex:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot create thumbnail image"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 591
    .end local v23           #ex:Ljava/lang/Throwable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "No UI to notify onIntermediateJpeg"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 596
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 604
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #calls: Lcom/android/camera/component/PanoramaController;->stopPreview()V
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$3900(Lcom/android/camera/component/PanoramaController;)V

    goto :goto_5

    .line 608
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v4

    monitor-enter v4

    .line 612
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v8}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Panorama Tracking ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v9}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, 0x1388

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TrackingTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    invoke-static {v8}, Lcom/android/camera/component/PanoramaController;->access$4000(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v8}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v8

    #setter for: Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v3, v8}, Lcom/android/camera/component/PanoramaController;->access$1302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 613
    monitor-exit v4

    goto/16 :goto_5

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public onIntermediatePostview(Lcom/scalado/base/Image;I)V
    .locals 4
    .parameter "image"
    .parameter "index"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$2800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onIntermediatePostview("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$2600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onIntermediateShutter("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$1802(Lcom/android/camera/component/PanoramaController;F)F

    .line 482
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$2700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify onIntermediateShutter"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTracking(FFLcom/scalado/base/Image;)Z
    .locals 16
    .parameter "dx"
    .parameter "dy"
    .parameter "image"

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoramaListener.onTracking(dx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v2

    monitor-enter v2

    .line 362
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_TrackingTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v1, v3}, Lcom/android/camera/component/PanoramaController;->access$1302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 364
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1500(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v9

    .line 369
    .local v9, direction:Lcom/scalado/caps/autorama/Direction;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3e80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 374
    const/4 v1, 0x0

    .line 463
    :goto_0
    return v1

    .line 364
    .end local v9           #direction:Lcom/scalado/caps/autorama/Direction;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 376
    .restart local v9       #direction:Lcom/scalado/caps/autorama/Direction;
    :cond_1
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v9, v1, :cond_8

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1800(Lcom/android/camera/component/PanoramaController;)F

    move-result v1

    sub-float v13, p1, v1

    .line 379
    .local v13, vx:F
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v9, v1, :cond_2

    .line 380
    neg-float v13, v13

    .line 381
    :cond_2
    const v1, -0x41e66666

    cmpg-float v1, v13, v1

    if-gtz v1, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 384
    const/4 v1, 0x0

    goto :goto_0

    .line 386
    :cond_3
    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_4

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move/from16 v0, p1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaController;->access$1802(Lcom/android/camera/component/PanoramaController;F)F

    .line 394
    .end local v13           #vx:F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_Direction:I
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1900(Lcom/android/camera/component/PanoramaController;)I

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->hasAsyncMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/component/PanoramaController;->sendAsyncMessage(I)Z

    .line 400
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 404
    :cond_6
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v9, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$2000(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 406
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v9, v1, :cond_9

    const/4 v1, 0x1

    :goto_2
    int-to-float v12, v1

    .line 407
    .local v12, targetOffset:F
    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v9, v1, :cond_a

    sub-float v8, v12, p1

    .line 408
    .local v8, diffToTarget:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$2100(Lcom/android/camera/component/PanoramaController;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_e

    .line 410
    float-to-double v1, v8

    const-wide v3, -0x403ccccccccccccdL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_b

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    .line 463
    .end local v8           #diffToTarget:F
    .end local v12           #targetOffset:F
    :cond_7
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 390
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move/from16 v0, p1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaController;->access$1802(Lcom/android/camera/component/PanoramaController;F)F

    goto/16 :goto_1

    .line 406
    :cond_9
    const/4 v1, -0x1

    goto :goto_2

    .line 407
    .restart local v12       #targetOffset:F
    :cond_a
    sub-float v8, p1, v12

    goto :goto_3

    .line 415
    .restart local v8       #diffToTarget:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_c

    float-to-double v1, v8

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-lez v1, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_7

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_7

    .line 418
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$2102(Lcom/android/camera/component/PanoramaController;J)J

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_4

    .line 427
    :cond_e
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_12

    .line 429
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2100(Lcom/android/camera/component/PanoramaController;)J

    move-result-wide v3

    sub-long v10, v1, v3

    .line 430
    .local v10, interval:J
    const-wide/16 v1, 0x12c

    cmp-long v1, v10, v1

    if-ltz v1, :cond_7

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v14

    monitor-enter v14

    .line 437
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_10

    .line 438
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Panorama JPEG ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x2710

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_JpegTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;
    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$2400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v7}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_JpegTimerHandle:Lcom/android/camera/Handle;
    invoke-static {v15, v1}, Lcom/android/camera/component/PanoramaController;->access$2302(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    .line 439
    :cond_10
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 443
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$2500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger capturing frame["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 439
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 449
    .end local v10           #interval:J
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;ZZZ)V

    goto/16 :goto_4

    .line 454
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/component/PanoramaController;->access$2102(Lcom/android/camera/component/PanoramaController;J)J

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController$5;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I
    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_4
.end method
