.class Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIdleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 752
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLibraryActivity;->access$600(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 754
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/carmode/CarLibraryActivity;->access$600(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    const/4 v1, 0x0

    return v1
.end method
