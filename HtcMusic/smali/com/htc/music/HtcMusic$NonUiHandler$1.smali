.class Lcom/htc/music/HtcMusic$NonUiHandler$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 5873
    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5875
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->showHideOneShotMode()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$8300(Lcom/htc/music/HtcMusic;)V

    .line 5877
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$8400(Lcom/htc/music/HtcMusic;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    .line 5878
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$8400(Lcom/htc/music/HtcMusic;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5879
    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const-string v2, "common_app_bkg"

    const v3, 0x2080001

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 5881
    :cond_0
    return-void
.end method
