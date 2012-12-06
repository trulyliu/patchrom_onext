.class public Lcom/htc/music/widget/gridview/DecodeTask;
.super Ljava/lang/Object;
.source "DecodeTask.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "k"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/htc/music/widget/gridview/DecodeTask;->key:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    .line 12
    return-void
.end method


# virtual methods
.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/DecodeTask;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/DecodeTask;->releaseBitmap()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/DecodeTask;->key:Ljava/lang/String;

    .line 24
    return-void
.end method
