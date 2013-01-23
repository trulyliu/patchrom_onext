.class Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;
.super Lcom/android/camera/trigger/Trigger;
.source "PhotoModeSnapStatisticController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/PhotoModeSnapStatisticController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/bi/PhotoModeSnapStatisticController;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/PhotoModeSnapStatisticController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    iget v1, v0, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 78
    iget-object v0, p0, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, v1, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/bi/PhotoModeSnapStatisticController$1;->this$0:Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    iget v2, v2, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;->setMediaCountInComposeKeyTable(Ljava/lang/String;I)V

    .line 79
    return-void
.end method
