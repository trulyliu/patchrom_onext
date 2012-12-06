.class Lcom/htc/music/AddAppShortcutActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AddAppShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AddAppShortcutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AddAppShortcutActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/AddAppShortcutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$1;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity$1;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v0}, Lcom/htc/music/AddAppShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    .line 87
    return-void
.end method
