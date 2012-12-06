.class Lcom/htc/music/AddAppShortcutActivity$BaseItem;
.super Ljava/lang/Object;
.source "AddAppShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AddAppShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mSeparatorName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mName:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mSeparatorName:Ljava/lang/String;

    .line 258
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "icon"
    .parameter "separatorName"

    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mName:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 263
    iput-object p3, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mSeparatorName:Ljava/lang/String;

    .line 264
    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/AddAppShortcutActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->getSeparatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/AddAppShortcutActivity$BaseItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/AddAppShortcutActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mName:Ljava/lang/String;

    .line 268
    return-void
.end method

.method private setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$BaseItem;->mSeparatorName:Ljava/lang/String;

    .line 284
    return-void
.end method
