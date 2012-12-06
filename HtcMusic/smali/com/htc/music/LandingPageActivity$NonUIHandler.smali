.class Lcom/htc/music/LandingPageActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 1084
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1085
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x2712

    .line 1089
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_2

    .line 1090
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1091
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1093
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 1096
    .local v2, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.htc.music"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "play_source"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "package_name"

    const-string v5, "package_name"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1102
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1105
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 1124
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    :goto_0
    return-void

    .line 1108
    .restart local v1       #data:Landroid/os/Bundle;
    :cond_1
    const-string v3, "[LandingPage]"

    const-string v4, "NonUIHandler, MSG_ULOG_USED_APP, data is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    .end local v1           #data:Landroid/os/Bundle;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x2713

    if-ne v3, v4, :cond_3

    .line 1113
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$3400(Lcom/htc/music/LandingPageActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1114
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$3400(Lcom/htc/music/LandingPageActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1115
    .local v0, addShowmeMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->isShowMeExist()Z
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$3500(Lcom/htc/music/LandingPageActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1116
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1120
    :goto_1
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$3400(Lcom/htc/music/LandingPageActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    .end local v0           #addShowmeMsg:Landroid/os/Message;
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1118
    .restart local v0       #addShowmeMsg:Landroid/os/Message;
    :cond_4
    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
