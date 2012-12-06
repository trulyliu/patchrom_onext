.class Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$3;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$3;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer$3;->this$1:Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;

    int-to-float v1, p2

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->mCurPercentage:F
    invoke-static {v0, v1}, Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;->access$2902(Lcom/htc/music/dlna/DmpMusicPlayer$MultiPlayer;F)F

    .line 1951
    return-void
.end method
