.class public Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
.super Ljava/lang/Object;
.source "CarGliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarGliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumInfo"
.end annotation


# instance fields
.field mAlbumId:I

.field mAlbumKey:Ljava/lang/String;

.field mAlbumName:Ljava/lang/String;

.field mArtistName:Ljava/lang/String;

.field mDlArtPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 994
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 996
    iput-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumName:Ljava/lang/String;

    .line 997
    iput-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mArtistName:Ljava/lang/String;

    .line 998
    iput-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 999
    iput-object v1, p0, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumKey:Ljava/lang/String;

    return-void
.end method
