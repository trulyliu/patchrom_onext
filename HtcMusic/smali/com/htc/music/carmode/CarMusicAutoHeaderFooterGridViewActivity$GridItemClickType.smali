.class public final enum Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;
.super Ljava/lang/Enum;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridItemClickType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field public static final enum GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field public static final enum GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    const-string v1, "GRID_PARENT_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    const-string v1, "GRID_CHILD_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->$VALUES:[Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1
    .parameter "name"

    .prologue
    .line 142
    const-class v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->$VALUES:[Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0}, [Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method
