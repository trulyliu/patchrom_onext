.class public final enum Lcom/htc/music/util/MusicUtils$LaunchUI;
.super Ljava/lang/Enum;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchUI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/util/MusicUtils$LaunchUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/util/MusicUtils$LaunchUI;

.field public static final enum CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

.field public static final enum MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

.field public static final enum NONE:Lcom/htc/music/util/MusicUtils$LaunchUI;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1424
    new-instance v0, Lcom/htc/music/util/MusicUtils$LaunchUI;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/util/MusicUtils$LaunchUI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/MusicUtils$LaunchUI;->NONE:Lcom/htc/music/util/MusicUtils$LaunchUI;

    .line 1425
    new-instance v0, Lcom/htc/music/util/MusicUtils$LaunchUI;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/util/MusicUtils$LaunchUI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    .line 1426
    new-instance v0, Lcom/htc/music/util/MusicUtils$LaunchUI;

    const-string v1, "CAR"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/util/MusicUtils$LaunchUI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    .line 1423
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/music/util/MusicUtils$LaunchUI;

    sget-object v1, Lcom/htc/music/util/MusicUtils$LaunchUI;->NONE:Lcom/htc/music/util/MusicUtils$LaunchUI;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/util/MusicUtils$LaunchUI;->MUSIC:Lcom/htc/music/util/MusicUtils$LaunchUI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/util/MusicUtils$LaunchUI;->CAR:Lcom/htc/music/util/MusicUtils$LaunchUI;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/music/util/MusicUtils$LaunchUI;->$VALUES:[Lcom/htc/music/util/MusicUtils$LaunchUI;

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
    .line 1423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/util/MusicUtils$LaunchUI;
    .locals 1
    .parameter "name"

    .prologue
    .line 1423
    const-class v0, Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/MusicUtils$LaunchUI;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/util/MusicUtils$LaunchUI;
    .locals 1

    .prologue
    .line 1423
    sget-object v0, Lcom/htc/music/util/MusicUtils$LaunchUI;->$VALUES:[Lcom/htc/music/util/MusicUtils$LaunchUI;

    invoke-virtual {v0}, [Lcom/htc/music/util/MusicUtils$LaunchUI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/util/MusicUtils$LaunchUI;

    return-object v0
.end method
