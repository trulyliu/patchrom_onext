.class public Lcom/android/camera/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final maximum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final minimum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/android/camera/Range;,"Lcom/android/camera/Range<TTValue;>;"
    .local p1, min:Ljava/lang/Object;,"TTValue;"
    .local p2, max:Ljava/lang/Object;,"TTValue;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/android/camera/Range;,"Lcom/android/camera/Range<TTValue;>;"
    const/4 v1, 0x0

    .line 26
    instance-of v2, p1, Lcom/android/camera/Range;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/android/camera/Range;

    .line 29
    .local v0, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<*>;"
    iget-object v2, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 39
    .end local v0           #range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<*>;"
    :cond_0
    :goto_0
    return v1

    .line 31
    .restart local v0       #range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<*>;"
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, this:Lcom/android/camera/Range;,"Lcom/android/camera/Range<TTValue;>;"
    const/4 v2, 0x0

    .line 48
    iget-object v3, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 49
    .local v0, x:I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 50
    .local v1, y:I
    :goto_1
    shl-int/lit8 v2, v0, 0x10

    const v3, 0xffff

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    return v2

    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    .restart local v0       #x:I
    :cond_1
    move v1, v2

    .line 49
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    .local p0, this:Lcom/android/camera/Range;,"Lcom/android/camera/Range<TTValue;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
