.class final enum Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;
.super Ljava/lang/Enum;
.source "CarFolderBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarFolderBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FolderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

.field public static final enum DRM:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

.field public static final enum MIXED:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

.field public static final enum NORMAL:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 806
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->NORMAL:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    .line 807
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    const-string v1, "DRM"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->DRM:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    .line 808
    new-instance v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v4}, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->MIXED:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    .line 805
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    sget-object v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->NORMAL:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->DRM:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->MIXED:Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->$VALUES:[Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

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
    .line 805
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 805
    const-class v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;
    .locals 1

    .prologue
    .line 805
    sget-object v0, Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->$VALUES:[Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    invoke-virtual {v0}, [Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/carmode/CarFolderBrowseActivity$FolderType;

    return-object v0
.end method
