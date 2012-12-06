.class Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackInfo"
.end annotation


# instance fields
.field mAlbumName:Ljava/lang/String;

.field mArtistName:Ljava/lang/String;

.field mQueuePos:I

.field mQueueSize:I

.field mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/music/carmode/CarNowPlayingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    return-void
.end method
