.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1755
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1756
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->onHtcContextItemSelected(I)Z

    .line 1758
    :cond_0
    return-void
.end method
