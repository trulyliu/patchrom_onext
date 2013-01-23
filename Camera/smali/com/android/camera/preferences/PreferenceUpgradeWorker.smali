.class public abstract Lcom/android/camera/preferences/PreferenceUpgradeWorker;
.super Ljava/lang/Object;
.source "PreferenceUpgradeWorker.java"


# instance fields
.field public final sourceVersion:I

.field public final targetVersion:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .parameter "srcVersion"
    .parameter "targetVersion"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/camera/preferences/PreferenceUpgradeWorker;->sourceVersion:I

    .line 22
    iput p2, p0, Lcom/android/camera/preferences/PreferenceUpgradeWorker;->targetVersion:I

    .line 23
    return-void
.end method


# virtual methods
.method public abstract upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation
.end method
