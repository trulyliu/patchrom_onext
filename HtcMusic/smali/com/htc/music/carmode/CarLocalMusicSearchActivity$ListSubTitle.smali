.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;
.super Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListSubTitle"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "itemName"

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 908
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;->setPrimaryText(Ljava/lang/String;)V

    .line 909
    return-void
.end method
