.class public final Lcom/htc/music/util/FloatUtils$Vector3f;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/FloatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector3f"
.end annotation


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/util/FloatUtils$Vector3f;->set(FFF)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/util/FloatUtils$Vector3f;)V
    .locals 1
    .parameter "vector"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget v0, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 200
    iget v0, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 201
    iget v0, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 202
    return-void
.end method


# virtual methods
.method public add(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 240
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 241
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 242
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 243
    return-void
.end method

.method public add(Lcom/htc/music/util/FloatUtils$Vector3f;)V
    .locals 2
    .parameter "vector"

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 218
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 219
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 220
    return-void
.end method

.method public equals(Lcom/htc/music/util/FloatUtils$Vector3f;)Z
    .locals 2
    .parameter "vector"

    .prologue
    .line 229
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scale(FFF)V
    .locals 1
    .parameter "spreadValueX"
    .parameter "spreadValueY"
    .parameter "spreadValueZ"

    .prologue
    .line 246
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 247
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 248
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 249
    return-void
.end method

.method public set(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 211
    iput p1, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 212
    iput p2, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 213
    iput p3, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 214
    return-void
.end method

.method public set(Lcom/htc/music/util/FloatUtils$Vector3f;)V
    .locals 1
    .parameter "vector"

    .prologue
    .line 205
    iget v0, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 206
    iget v0, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 207
    iget v0, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 208
    return-void
.end method

.method public subtract(Lcom/htc/music/util/FloatUtils$Vector3f;)V
    .locals 2
    .parameter "vector"

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    .line 224
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    .line 225
    iget v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    iget v1, p1, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/FloatUtils$Vector3f;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
