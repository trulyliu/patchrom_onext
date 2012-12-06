.class Lcom/htc/music/carmode/CarLibraryActivity$1;
.super Landroid/os/Handler;
.source "CarLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$1;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 187
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity$1;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLibraryActivity;->inflateTitle()V

    .line 191
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity$1;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity$1;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    #getter for: Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLibraryActivity;->access$100(Lcom/htc/music/carmode/CarLibraryActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLibraryActivity;->access$200(Lcom/htc/music/carmode/CarLibraryActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 196
    .local v1, b:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity$1;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLibraryActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 198
    .local v0, am:Landroid/app/LocalActivityManager;
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 199
    const-string v3, "tag"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 200
    .local v2, window:Landroid/view/Window;
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity$1;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/carmode/CarLibraryActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x3039
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
