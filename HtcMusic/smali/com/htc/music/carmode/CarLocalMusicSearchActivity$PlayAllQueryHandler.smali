.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$PlayAllQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayAllQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$PlayAllQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1739
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1740
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$PlayAllQueryHandler;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    sget-object v1, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {v0, p3, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/util/MusicUtils$LaunchUI;)I

    .line 1745
    if-eqz p3, :cond_0

    .line 1746
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1748
    :cond_0
    return-void
.end method
