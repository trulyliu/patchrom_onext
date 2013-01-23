.class Lcom/android/camera/component/AudioManager$SoundHandle;
.super Lcom/android/camera/Handle;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundHandle"
.end annotation


# instance fields
.field public isLoaded:Z

.field public final pendingStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/AudioManager$StreamHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final soundId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "soundId"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    .line 70
    iput p2, p0, Lcom/android/camera/component/AudioManager$SoundHandle;->soundId:I

    .line 71
    return-void
.end method
