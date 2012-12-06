.class Lcom/htc/music/widget/fragment/MusicBaseFragment$1;
.super Landroid/os/Handler;
.source "MusicBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/fragment/MusicBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 302
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    #getter for: Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->access$100(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    #getter for: Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->access$100(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    :cond_0
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "mbufferdialog dismiss"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 309
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    invoke-virtual {v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 313
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;->this$0:Lcom/htc/music/widget/fragment/MusicBaseFragment;

    invoke-virtual {v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onDeletionCompleted()V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
