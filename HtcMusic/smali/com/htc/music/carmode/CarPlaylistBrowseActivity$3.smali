.class Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;
.super Ljava/lang/Object;
.source "CarPlaylistBrowseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initButtonsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 351
    return-void
.end method
