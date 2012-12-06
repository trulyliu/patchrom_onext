.class Lcom/htc/music/carmode/CarNowPlayingActivity$18;
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
    .line 1281
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->next()V
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1284
    return-void
.end method
