.class Lcom/htc/music/carmode/CarLibraryActivity$4;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarLibraryActivity;->initTitle()V
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
    .line 287
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$4;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity$4;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarLibraryActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 291
    .local v0, currectActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 292
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 294
    :cond_0
    return-void
.end method
