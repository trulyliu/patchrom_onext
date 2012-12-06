.class Lcom/htc/music/widget/gridview/MusicGridViewItem$2;
.super Ljava/lang/Object;
.source "MusicGridViewItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/gridview/MusicGridViewItem;->createSAnimationController(Lcom/htc/sunnyCore/view/SView;I)Lcom/htc/sunnyCore/view/animation/SAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

.field final synthetic val$view:Lcom/htc/sunnyCore/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Lcom/htc/sunnyCore/view/SView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;->val$view:Lcom/htc/sunnyCore/view/SView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;->val$view:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;->val$view:Lcom/htc/sunnyCore/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 852
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$2;->val$view:Lcom/htc/sunnyCore/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 845
    return-void
.end method
