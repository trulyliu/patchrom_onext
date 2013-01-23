.class Lcom/htc/view/VolumePanel$5;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 877
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 880
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    const-string v1, "VolumePanel"

    const-string v2, "INTENT_ENTER_HOME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    iget-object v2, v1, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    monitor-enter v2

    .line 883
    :try_start_0
    invoke-static {}, Lcom/htc/view/VolumePanel;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    const-string v1, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRotate, needRotate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    #getter for: Lcom/htc/view/VolumePanel;->isRotate:Z
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$700(Lcom/htc/view/VolumePanel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    #getter for: Lcom/htc/view/VolumePanel;->needRotate:Z
    invoke-static {v4}, Lcom/htc/view/VolumePanel;->access$800(Lcom/htc/view/VolumePanel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    #getter for: Lcom/htc/view/VolumePanel;->isRotate:Z
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$700(Lcom/htc/view/VolumePanel;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    #getter for: Lcom/htc/view/VolumePanel;->needRotate:Z
    invoke-static {v1}, Lcom/htc/view/VolumePanel;->access$800(Lcom/htc/view/VolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel;->resetPanelRotation()V

    .line 887
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    iget-object v1, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    iget-object v2, p0, Lcom/htc/view/VolumePanel$5;->this$0:Lcom/htc/view/VolumePanel;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 892
    :cond_4
    return-void

    .line 887
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
