.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;
.super Landroid/content/BroadcastReceiver;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$CarDockListener;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->finish()V

    .line 169
    return-void
.end method
