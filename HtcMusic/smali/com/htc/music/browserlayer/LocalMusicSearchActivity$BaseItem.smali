.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
.super Ljava/lang/Object;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumKey:Ljava/lang/String;

.field private mArtPath:Ljava/lang/String;

.field mId:J

.field private mPrimaryText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 861
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 862
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mId:J

    .line 863
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 864
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 865
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 866
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mAlbum:Ljava/lang/String;

    .line 867
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mAlbumKey:Ljava/lang/String;

    .line 868
    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 895
    iget-wide v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mId:J

    return-wide v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method protected getAlbumKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mAlbumKey:Ljava/lang/String;

    return-object v0
.end method

.method protected setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 887
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mAlbum:Ljava/lang/String;

    .line 888
    return-void
.end method

.method protected setAlbumKey(Ljava/lang/String;)V
    .locals 0
    .parameter "albumKey"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mAlbumKey:Ljava/lang/String;

    .line 892
    return-void
.end method

.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 883
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 884
    return-void
.end method

.method protected setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 871
    iput-wide p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mId:J

    .line 872
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 876
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 879
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 880
    return-void
.end method
