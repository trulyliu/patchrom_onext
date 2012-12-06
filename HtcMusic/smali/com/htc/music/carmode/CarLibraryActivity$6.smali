.class Lcom/htc/music/carmode/CarLibraryActivity$6;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarLibraryActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    iput-object p2, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 552
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "IdleHandler receive queueIdle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLibraryActivity;->access$600(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity$6;->val$msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    const/4 v0, 0x0

    return v0
.end method
