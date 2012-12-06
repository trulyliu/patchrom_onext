.class Lcom/htc/music/PluginPropertyListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/PluginPropertyListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0}, Lcom/htc/music/PluginPropertyListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    .line 108
    return-void
.end method
