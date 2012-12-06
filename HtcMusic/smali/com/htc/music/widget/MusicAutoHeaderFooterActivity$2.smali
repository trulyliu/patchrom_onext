.class Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;
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
    .line 862
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startOnlineSearchPage()V

    .line 865
    return-void
.end method
