.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 1057
    return-void
.end method
