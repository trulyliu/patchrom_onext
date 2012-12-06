.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;
.super Landroid/os/Handler;
.source "MusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 553
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 555
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onGridViewItemClick(Landroid/os/Message;)V

    goto :goto_0

    .line 558
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 559
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onGridViewItemLongClick(Landroid/os/Message;)V

    goto :goto_0

    .line 562
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 563
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onGridViewItemDelete(Landroid/os/Message;)V

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
