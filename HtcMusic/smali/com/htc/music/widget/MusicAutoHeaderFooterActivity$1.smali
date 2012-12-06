.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
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
    .line 847
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onBackPressed()V

    .line 852
    return-void
.end method
