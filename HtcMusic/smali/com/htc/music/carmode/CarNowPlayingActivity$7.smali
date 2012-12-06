.class Lcom/htc/music/carmode/CarNowPlayingActivity$7;
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
    .line 667
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$7;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.carmode.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$7;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v1, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 674
    return-void
.end method
