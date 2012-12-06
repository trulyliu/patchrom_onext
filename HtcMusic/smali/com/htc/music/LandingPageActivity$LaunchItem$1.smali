.class Lcom/htc/music/LandingPageActivity$LaunchItem$1;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 105
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-boolean v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    #calls: Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/htc/music/LandingPageActivity;->access$000(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/LandingPageActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, anfEx:Landroid/content/ActivityNotFoundException;
    const-string v1, "[LandingPage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;->this$1:Lcom/htc/music/LandingPageActivity$LaunchItem;

    iget-object v3, v3, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
