.class Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;
.super Ljava/lang/Object;
.source "CarPlaylistBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finishactivity()V
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
    .line 975
    iput-object p1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 978
    return-void
.end method
