.class Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;
.super Ljava/lang/Object;
.source "AddPlaylistTabActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AddPlaylistTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIdleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;-><init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    #getter for: Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->access$000(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    const v1, 0xc351

    iput v1, v0, Landroid/os/Message;->what:I

    .line 286
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    #getter for: Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->access$000(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    const/4 v1, 0x0

    return v1
.end method
