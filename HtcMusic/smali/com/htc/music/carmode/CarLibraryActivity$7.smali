.class Lcom/htc/music/carmode/CarLibraryActivity$7;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$7;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 792
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/htc/widget/ActionBarDropDown;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 793
    check-cast v0, Lcom/htc/widget/ActionBarDropDown;

    .line 794
    .local v0, actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->isBubbleWindowShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 802
    .end local v0           #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :goto_0
    return-void

    .line 797
    .restart local v0       #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :cond_0
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    goto :goto_0

    .line 800
    .end local v0           #actionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    :cond_1
    const-string v1, "[CarLibraryActivity]"

    const-string v2, "non-ActionBarDropDown shouldn\'t use this ClickListener!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
