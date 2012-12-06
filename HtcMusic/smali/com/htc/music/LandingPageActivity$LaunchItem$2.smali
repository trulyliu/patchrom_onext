.class Lcom/htc/music/LandingPageActivity$LaunchItem$2;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity$LaunchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "paramView"

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-boolean v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-boolean v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsDeletable:Z

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 136
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget v2, v2, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    #setter for: Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$102(Lcom/htc/music/LandingPageActivity;I)I

    .line 137
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    #setter for: Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$202(Lcom/htc/music/LandingPageActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    #setter for: Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v1, v0}, Lcom/htc/music/LandingPageActivity;->showDialog(I)V

    .line 140
    const/4 v0, 0x1

    goto :goto_0
.end method
