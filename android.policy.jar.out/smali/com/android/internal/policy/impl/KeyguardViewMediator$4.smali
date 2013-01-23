.class Lcom/android/internal/policy/impl/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1418
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1488
    :goto_0
    return-void

    .line 1420
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1423
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1426
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1429
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1432
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1435
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1438
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    goto :goto_0

    .line 1441
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1444
    :sswitch_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1447
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1450
    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_0

    .line 1453
    :sswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 1456
    :sswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v1

    .line 1457
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1458
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1462
    :sswitch_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handlePasswordTimeout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1465
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOnWait:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2902(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto :goto_0

    .line 1469
    :sswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitSurface:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3002(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto :goto_0

    .line 1476
    :sswitch_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v1

    .line 1477
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1478
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardViewMediator"

    const-string v2, "doKeyguardLocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1484
    :goto_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1481
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1418
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_10
    .end sparse-switch
.end method
