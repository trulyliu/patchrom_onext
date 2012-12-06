.class Lcom/htc/music/carmode/CarNowPlayingActivity$12;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;->onStateChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

.field final synthetic val$nState:I


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iput p2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;->val$nState:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;->val$nState:I

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->doStateChangeUI(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2300(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    .line 1092
    return-void
.end method
