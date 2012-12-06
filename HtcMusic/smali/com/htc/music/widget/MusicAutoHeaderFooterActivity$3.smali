.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;
.super Landroid/os/Handler;
.source "MusicAutoHeaderFooterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 919
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 931
    :goto_0
    return-void

    .line 921
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 922
    .local v0, textResId:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showEmptyView(II)V

    goto :goto_0

    .line 925
    .end local v0           #textResId:I
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showDatabaseError(I)V

    goto :goto_0

    .line 928
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->executeMenuAction(Landroid/os/Message;)V

    goto :goto_0

    .line 919
    :pswitch_data_0
    .packed-switch 0xea61
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
