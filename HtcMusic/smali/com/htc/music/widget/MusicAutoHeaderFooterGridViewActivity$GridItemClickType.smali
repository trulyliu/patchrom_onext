.class public final enum Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
.super Ljava/lang/Enum;
.source "MusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridItemClickType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field public static final enum GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field public static final enum GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    const-string v1, "GRID_PARENT_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    const-string v1, "GRID_CHILD_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->$VALUES:[Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1
    .parameter "name"

    .prologue
    .line 170
    const-class v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method

.method public static values()[Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->$VALUES:[Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0}, [Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method
