.class public final enum Lcom/android/camera/FlashMode;
.super Ljava/lang/Enum;
.source "FlashMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/FlashMode;

.field public static final enum Auto:Lcom/android/camera/FlashMode;

.field public static final enum Off:Lcom/android/camera/FlashMode;

.field public static final enum On:Lcom/android/camera/FlashMode;

.field public static final enum Torch:Lcom/android/camera/FlashMode;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/android/camera/FlashMode;

    const-string v1, "Off"

    const-string v2, "off"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 8
    new-instance v0, Lcom/android/camera/FlashMode;

    const-string v1, "Auto"

    const-string v2, "auto"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    .line 9
    new-instance v0, Lcom/android/camera/FlashMode;

    const-string v1, "On"

    const-string v2, "on"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    .line 10
    new-instance v0, Lcom/android/camera/FlashMode;

    const-string v1, "Torch"

    const-string v2, "torch"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/FlashMode;

    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/FlashMode;->$VALUES:[Lcom/android/camera/FlashMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/android/camera/FlashMode;
    .locals 3
    .parameter "value"

    .prologue
    .line 31
    invoke-static {}, Lcom/android/camera/FlashMode;->values()[Lcom/android/camera/FlashMode;

    move-result-object v1

    .line 32
    .local v1, modes:[Lcom/android/camera/FlashMode;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 34
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    aget-object v2, v1, v0

    .line 37
    :goto_1
    return-object v2

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object v2, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/FlashMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/android/camera/FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/FlashMode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/camera/FlashMode;->$VALUES:[Lcom/android/camera/FlashMode;

    invoke-virtual {v0}, [Lcom/android/camera/FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/FlashMode;

    return-object v0
.end method
