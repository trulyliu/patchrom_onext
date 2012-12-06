.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;
.super Ljava/lang/Object;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongClickListener;


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
    .line 463
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClickIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)Z
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 468
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 471
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 472
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
