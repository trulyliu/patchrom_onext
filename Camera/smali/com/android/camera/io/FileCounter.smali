.class public final Lcom/android/camera/io/FileCounter;
.super Ljava/lang/Object;
.source "FileCounter.java"


# instance fields
.field public final mainCounter:I

.field public final subCounter:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "mainCounter"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/io/FileCounter;-><init>(II)V

    .line 11
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "mainCounter"
    .parameter "subCounter"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/camera/io/FileCounter;->mainCounter:I

    .line 15
    iput p2, p0, Lcom/android/camera/io/FileCounter;->subCounter:I

    .line 16
    return-void
.end method
