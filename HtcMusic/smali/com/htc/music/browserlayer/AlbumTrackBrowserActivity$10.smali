.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$10;
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
    .line 1836
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracks(Landroid/content/Context;[I)V

    .line 1867
    return-void
.end method
