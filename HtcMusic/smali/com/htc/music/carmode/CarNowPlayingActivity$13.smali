.class Lcom/htc/music/carmode/CarNowPlayingActivity$13;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1142
    :cond_1
    return-void
.end method
