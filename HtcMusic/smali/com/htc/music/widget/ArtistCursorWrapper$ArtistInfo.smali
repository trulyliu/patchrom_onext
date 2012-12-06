.class Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
.super Ljava/lang/Object;
.source "ArtistCursorWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/ArtistCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistInfo"
.end annotation


# instance fields
.field public album_art:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public artist_id:I

.field private mAlbumIdList:[I

.field public number_of_albums:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "artist"
    .parameter "artist_id"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    .line 19
    iput-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->album_art:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    .line 25
    iput-object p1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    .line 28
    return-void
.end method


# virtual methods
.method public addAlbumId(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    iget-object v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    iget-object v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    aput p1, v0, v1

    .line 35
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 52
    move-object v0, p1

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 54
    .local v0, anotherArtist:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    if-eqz v0, :cond_2

    .line 56
    iget-object v2, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, compareResult:I
    if-eqz v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const/4 v1, 0x1

    .line 68
    .end local v1           #compareResult:I
    :cond_0
    :goto_0
    return v1

    .line 61
    .restart local v1       #compareResult:I
    :cond_1
    iget-object v2, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v1, -0x1

    goto :goto_0

    .line 68
    .end local v1           #compareResult:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;

    .line 74
    .local v0, artistInfo:Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;
    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    iget v2, v0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->artist_id:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlbumIdList()[I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    array-length v0, v0

    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    if-eq v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    iget v1, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->number_of_albums:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/ArtistCursorWrapper$ArtistInfo;->mAlbumIdList:[I

    return-object v0
.end method
