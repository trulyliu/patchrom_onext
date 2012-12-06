.class public final enum Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
.super Ljava/lang/Enum;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field public static final enum ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field public static final enum ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field public static final enum FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field public static final enum GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field public static final enum PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const-string v1, "ALBUM_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const-string v1, "GENRE_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const-string v1, "ARTIST_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const-string v1, "PLAYLIST_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const-string v1, "FOLDER_TYPE"

    invoke-direct {v0, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->FOLDER_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->$VALUES:[Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->$VALUES:[Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v0}, [Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-object v0
.end method
