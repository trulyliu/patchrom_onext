.class Lcom/htc/music/browserlayer/AlbumDetailActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 2033
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2034
    .local v0, action:Ljava/lang/String;
    const-string v3, "album_id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2035
    .local v1, albumId:I
    const-string v3, "[AlbumDetailActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";albumId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 2037
    const-string v3, "action_complete_one_download"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2038
    const-string v3, "albumart_path"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2039
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2040
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mResume:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2041
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeAlbumArt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2043
    .restart local v2       #path:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtChange:Z
    invoke-static {v3, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    .line 2044
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiverPath:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4402(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2047
    .end local v2           #path:Ljava/lang/String;
    :cond_2
    const-string v3, "action_revert_current_album"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2048
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mResume:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2049
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeAlbumArt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2051
    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDlArtReceiverPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4402(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2052
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtChange:Z
    invoke-static {v3, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    goto :goto_0
.end method
