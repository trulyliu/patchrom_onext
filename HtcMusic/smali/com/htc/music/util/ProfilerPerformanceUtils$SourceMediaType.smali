.class public final enum Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
.super Ljava/lang/Enum;
.source "ProfilerPerformanceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/ProfilerPerformanceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field public static final enum ALBUM_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field public static final enum ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field public static final enum FOLDER_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field public static final enum GENRE_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field public static final enum PLAYLIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

.field public static final enum TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    const-string v1, "ARTIST_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 12
    new-instance v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    const-string v1, "ALBUM_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ALBUM_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 13
    new-instance v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    const-string v1, "GENRE_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->GENRE_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 14
    new-instance v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    const-string v1, "TRACK_TYPE"

    invoke-direct {v0, v1, v6}, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 15
    new-instance v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    const-string v1, "PLAYLIST_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->PLAYLIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 16
    new-instance v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    const-string v1, "FOLDER_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->FOLDER_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ALBUM_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->GENRE_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->PLAYLIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->FOLDER_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->$VALUES:[Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->$VALUES:[Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    invoke-virtual {v0}, [Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    return-object v0
.end method
