.class Lcom/htc/music/carmode/CarGliderAdapter$1;
.super Landroid/os/Handler;
.source "CarGliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarGliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarGliderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarGliderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z
    invoke-static {v0, v2}, Lcom/htc/music/carmode/CarGliderAdapter;->access$002(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z

    .line 415
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$100(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$100(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$300(Lcom/htc/music/carmode/CarGliderAdapter;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$300(Lcom/htc/music/carmode/CarGliderAdapter;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v2}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$100(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter$1;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentIndex:I
    invoke-static {v2}, Lcom/htc/music/carmode/CarGliderAdapter;->access$300(Lcom/htc/music/carmode/CarGliderAdapter;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    .line 424
    :cond_0
    monitor-exit v1

    .line 426
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
