.class public Lcom/htc/AccessInternalR;
.super Ljava/lang/Object;
.source "AccessInternalR.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static cancel:I

.field private static init:Z

.field public static ok:I

.field public static ringtone_default:I

.field public static ringtone_picker_title:I

.field public static ringtone_silent:I

.field public static select_dialog_singlechoice_holo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/AccessInternalR;->init:Z

    .line 17
    const-string v0, "AccessInternalR"

    sput-object v0, Lcom/htc/AccessInternalR;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized setupFrameworkPrivateResource(Landroid/content/res/Resources;)I
    .locals 8
    .parameter "r"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 19
    const-class v4, Lcom/htc/AccessInternalR;

    monitor-enter v4

    :try_start_0
    sget-boolean v5, Lcom/htc/AccessInternalR;->init:Z

    if-nez v5, :cond_2

    .line 21
    if-nez p0, :cond_1

    .line 23
    sget-object v3, Lcom/htc/AccessInternalR;->TAG:Ljava/lang/String;

    const-string v5, "setupFrameworkPrivateResource Null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    :goto_0
    monitor-exit v4

    return v2

    .line 27
    :cond_1
    :try_start_1
    const-string v5, "zzzhtc_mediaprovider_res_array"

    const-string v6, "array"

    const-string v7, "android"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 28
    .local v1, isExistArrayId:I
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/htc/AccessInternalR;->ok:I

    .line 33
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/htc/AccessInternalR;->cancel:I

    .line 34
    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/htc/AccessInternalR;->ringtone_picker_title:I

    .line 35
    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/htc/AccessInternalR;->select_dialog_singlechoice_holo:I

    .line 36
    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/htc/AccessInternalR;->ringtone_default:I

    .line 37
    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sput v2, Lcom/htc/AccessInternalR;->ringtone_silent:I

    .line 39
    sget-object v2, Lcom/htc/AccessInternalR;->TAG:Ljava/lang/String;

    const-string v5, "setupFrameworkPrivateResource OK"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/AccessInternalR;->init:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #isExistArrayId:I
    :cond_2
    move v2, v3

    .line 44
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method
