.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;
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
    .line 1260
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1263
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->removeDialog(I)V

    .line 1264
    return-void
.end method
