.class public final Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
.super Landroid/os/Handler;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    .line 805
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 809
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 815
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_0
    return-void

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->decode()V

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
