.class Lcom/htc/music/AudioPreview$NonUiHandler$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/AudioPreview$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2400(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1732
    :cond_0
    return-void
.end method
