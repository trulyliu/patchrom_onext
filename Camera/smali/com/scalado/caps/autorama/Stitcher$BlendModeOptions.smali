.class public final Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;
.super Ljava/lang/Object;
.source "Stitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/autorama/Stitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlendModeOptions"
.end annotation


# static fields
.field private static final OPT_NO_COLOR_COMP:I = 0x20

.field private static final OPT_NO_INTENSITY_COMP:I = 0x10


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    .line 111
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "intensityCompensation"
    .parameter "colorCompensation"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    instance-of v3, p1, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    .line 144
    .local v0, b:Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;
    iget v3, v0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    iget v4, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 147
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    return v0
.end method
