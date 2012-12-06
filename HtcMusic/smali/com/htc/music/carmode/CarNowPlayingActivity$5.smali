.class Lcom/htc/music/carmode/CarNowPlayingActivity$5;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;->initTitleBar()V
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
    .line 642
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$5;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$5;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 647
    return-void
.end method
