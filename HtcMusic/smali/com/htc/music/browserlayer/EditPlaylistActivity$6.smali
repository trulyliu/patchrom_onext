.class Lcom/htc/music/browserlayer/EditPlaylistActivity$6;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 625
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const/16 v2, 0x29

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    return-void
.end method
