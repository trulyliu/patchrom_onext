.class Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;
.super Landroid/content/BroadcastReceiver;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/music/carmode/CarNowPlayingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1880
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$CarDockListener;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->finish()V

    .line 1884
    return-void
.end method
