.class Lcom/htc/music/MediaPlaybackService$2;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 1053
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1099
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "there is something wrong in mUiHandler"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1055
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    .line 1056
    .local v3, status:Landroid/app/Notification;
    if-eqz v3, :cond_0

    .line 1057
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V

    goto :goto_0

    .line 1062
    .end local v3           #status:Landroid/app/Notification;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1063
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1064
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v5, v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1074
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1075
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, errorMessage:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1077
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "duration"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V
    invoke-static {v4, v1, v5}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V

    goto :goto_0

    .line 1080
    :cond_2
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "case TOAST_WARNING: errorMessage is null or length is 0 !!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    .end local v1           #errorMessage:Ljava/lang/String;
    :cond_3
    const-string v4, "resId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1084
    const-string v4, "resId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1085
    .local v2, resId:I
    if-lez v2, :cond_4

    .line 1086
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "duration"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v4, v2, v5}, Lcom/htc/music/MediaPlaybackService;->access$5500(Lcom/htc/music/MediaPlaybackService;II)V

    goto :goto_0

    .line 1088
    :cond_4
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "case TOAST_WARNING: resId <= 0!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #resId:I
    :pswitch_3
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    invoke-static {v5, v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
