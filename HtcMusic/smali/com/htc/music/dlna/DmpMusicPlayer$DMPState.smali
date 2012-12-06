.class final enum Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
.super Ljava/lang/Enum;
.source "DmpMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DMPState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

.field public static final enum READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

.field public static final enum SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

.field public static final enum WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 152
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    const-string v1, "SERVER_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 153
    new-instance v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    const-string v1, "WIFI_DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->READY:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->$VALUES:[Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    .locals 1
    .parameter "name"

    .prologue
    .line 150
    const-class v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->$VALUES:[Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    invoke-virtual {v0}, [Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/dlna/DmpMusicPlayer$DMPState;

    return-object v0
.end method
