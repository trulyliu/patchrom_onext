.class Lcom/htc/music/carmode/CarNowPlayingActivity$11;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;->onSelectionChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

.field final synthetic val$nPosition:I


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput p2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;->val$nPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;->val$nPosition:I

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->doSelectionChangeUI(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2200(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    .line 1074
    return-void
.end method
