.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaDataUpdateInfo;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDataUpdateInfo"
.end annotation


# instance fields
.field public mList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewCoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalChild:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 753
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
