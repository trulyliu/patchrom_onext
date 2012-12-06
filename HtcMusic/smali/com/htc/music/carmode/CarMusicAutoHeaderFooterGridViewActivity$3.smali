.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;
.super Landroid/os/Handler;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->asyncQueryParentCursor()V

    .line 446
    return-void
.end method
