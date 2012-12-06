.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;
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

.field final synthetic val$textview:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    iput-object p2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;->val$textview:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;->val$textview:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V

    .line 1269
    return-void
.end method
