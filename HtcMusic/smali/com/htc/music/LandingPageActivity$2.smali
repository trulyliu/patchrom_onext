.class Lcom/htc/music/LandingPageActivity$2;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/LandingPageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 448
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 450
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$100(Lcom/htc/music/LandingPageActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$200(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$200(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1400(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 458
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1700(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1700(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1800(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 467
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 468
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)V

    .line 470
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v2}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    const v4, 0x7f0600dd

    invoke-virtual {v3, v4}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/LandingPageActivity;->access$300(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 471
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 461
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 462
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1700(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1700(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1900(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 454
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method
