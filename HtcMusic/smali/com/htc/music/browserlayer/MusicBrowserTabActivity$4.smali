.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1586
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/htc/widget/ActionBarDropDown;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1587
    check-cast v0, Lcom/htc/widget/ActionBarDropDown;

    .line 1588
    .local v0, actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->isBubbleWindowShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1589
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 1596
    .end local v0           #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :goto_0
    return-void

    .line 1591
    .restart local v0       #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    goto :goto_0

    .line 1594
    .end local v0           #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :cond_1
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "non-ActionBarDropDown shouldn\'t use this ClickListener!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
