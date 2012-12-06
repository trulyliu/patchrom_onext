.class public Lcom/htc/music/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mPkgName:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/htc/music/ShortcutInfo;->mPkgName:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/htc/music/ShortcutInfo;->mClsName:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/ShortcutInfo;->mType:I

    .line 15
    iput-object v1, p0, Lcom/htc/music/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 16
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/ShortcutInfo;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/music/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/ShortcutInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/music/ShortcutInfo;->mType:I

    return v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "clsName"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/music/ShortcutInfo;->mClsName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/music/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/music/ShortcutInfo;->mPkgName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 35
    iput p1, p0, Lcom/htc/music/ShortcutInfo;->mType:I

    .line 36
    return-void
.end method
