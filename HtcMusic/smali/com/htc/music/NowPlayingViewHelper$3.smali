.class Lcom/htc/music/NowPlayingViewHelper$3;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 819
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 820
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$1000(Lcom/htc/music/NowPlayingViewHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1000(Lcom/htc/music/NowPlayingViewHelper;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected(I)Z

    .line 822
    :cond_0
    return-void
.end method
