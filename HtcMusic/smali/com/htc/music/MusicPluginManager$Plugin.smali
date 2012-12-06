.class public Lcom/htc/music/MusicPluginManager$Plugin;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Plugin"
.end annotation


# instance fields
.field private mPluginClass:Ljava/lang/String;

.field private mPluginDescription:Ljava/lang/String;

.field private mPluginName:Ljava/lang/String;

.field private mPluginPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$Plugin;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginClass"

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginClass:Ljava/lang/String;

    .line 1318
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginDescription"

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginDescription:Ljava/lang/String;

    .line 1322
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginPackage"

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginPackage:Ljava/lang/String;

    .line 1326
    return-void
.end method

.method public setShortClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginName"

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$Plugin;->mPluginName:Ljava/lang/String;

    .line 1330
    return-void
.end method
