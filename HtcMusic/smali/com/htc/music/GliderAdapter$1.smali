.class Lcom/htc/music/GliderAdapter$1;
.super Landroid/os/Handler;
.source "GliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/GliderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z
    invoke-static {v0, v2}, Lcom/htc/music/GliderAdapter;->access$002(Lcom/htc/music/GliderAdapter;Z)Z

    .line 428
    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v0}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v0}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v0}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mTransparentIndex:I
    invoke-static {v0}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mTransparentIndex:I
    invoke-static {v0}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v2}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v0}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v2, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mTransparentIndex:I
    invoke-static {v2}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    .line 437
    :cond_0
    monitor-exit v1

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
