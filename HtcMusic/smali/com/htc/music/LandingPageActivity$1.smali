.class Lcom/htc/music/LandingPageActivity$1;
.super Landroid/os/Handler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Lcom/htc/music/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    #setter for: Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v1, v0}, Lcom/htc/music/LandingPageActivity;->access$402(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 337
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v1}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/htc/music/LandingPageActivity;->mOrientation:I
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$502(Lcom/htc/music/LandingPageActivity;I)I

    .line 339
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initConstant()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$600(Lcom/htc/music/LandingPageActivity;)V

    .line 340
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    new-instance v1, Lcom/htc/music/ShortcutPageInfo;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {v1, v2}, Lcom/htc/music/ShortcutPageInfo;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$702(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/ShortcutPageInfo;)Lcom/htc/music/ShortcutPageInfo;

    .line 342
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$800(Lcom/htc/music/LandingPageActivity;)V

    .line 343
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)V

    .line 344
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v0, v3}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->refreshLaunchItemList()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)V

    .line 348
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)V

    .line 349
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v0, v3}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/LandingPageActivity;->addShowmeMenuItem(I)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$1100(Lcom/htc/music/LandingPageActivity;I)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
