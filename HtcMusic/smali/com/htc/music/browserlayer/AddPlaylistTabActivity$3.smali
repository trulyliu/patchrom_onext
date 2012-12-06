.class Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;
.super Landroid/os/Handler;
.source "AddPlaylistTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AddPlaylistTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 298
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->initTitle()V

    .line 302
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    #getter for: Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->access$100(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    #getter for: Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->access$100(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;

    move-result-object v1

    const-string v2, "ArtistBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 304
    .local v0, defaultSourec:Lcom/htc/music/util/SourceItem;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0xc351
        :pswitch_0
    .end packed-switch
.end method
