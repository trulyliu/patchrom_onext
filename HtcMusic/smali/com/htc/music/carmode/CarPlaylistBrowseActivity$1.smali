.class Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CarPlaylistBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarPlaylistBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 183
    if-nez p2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 186
    const-string v1, "com.htc.music.recentplayedchanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-static {}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->forceUpdateParentAlbumart(I)V

    goto :goto_0
.end method
