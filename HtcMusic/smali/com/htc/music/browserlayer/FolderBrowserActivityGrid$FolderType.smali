.class final enum Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
.super Ljava/lang/Enum;
.source "FolderBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/FolderBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FolderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

.field public static final enum DRM:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

.field public static final enum MIXED:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

.field public static final enum NORMAL:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1285
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->NORMAL:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    .line 1286
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    const-string v1, "DRM"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->DRM:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    .line 1287
    new-instance v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->MIXED:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    .line 1284
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    sget-object v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->NORMAL:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->DRM:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->MIXED:Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->$VALUES:[Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

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
    .line 1284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 1284
    const-class v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;
    .locals 1

    .prologue
    .line 1284
    sget-object v0, Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->$VALUES:[Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    invoke-virtual {v0}, [Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/browserlayer/FolderBrowserActivityGrid$FolderType;

    return-object v0
.end method
