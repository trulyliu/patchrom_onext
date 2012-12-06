.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1239
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1240
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuIds:[I
    invoke-static {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuIds:[I
    invoke-static {v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onHtcContextItemSelected(I)Z

    .line 1242
    :cond_0
    return-void
.end method
