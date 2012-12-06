.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
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
    .line 1739
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShowTrackOptionsEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$902(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z

    .line 1742
    return-void
.end method
