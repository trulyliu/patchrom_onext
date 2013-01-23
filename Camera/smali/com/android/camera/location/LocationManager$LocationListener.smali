.class Lcom/android/camera/location/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field private m_IsValid:Z

.field private m_LatestLocation:Landroid/location/Location;

.field private final m_ProviderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/location/LocationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "providerName"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public final getLatestLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 76
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #calls: Lcom/android/camera/location/LocationManager;->updateLocation()V
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$000(Lcom/android/camera/location/LocationManager;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4
    .parameter "providerName"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$100(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderDisabled() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is disabled"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 95
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4
    .parameter "providerName"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$200(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderEnabled() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is enabled"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 105
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "providerName"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 113
    packed-switch p2, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$300(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is available"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->this$0:Lcom/android/camera/location/LocationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/location/LocationManager;->access$400(Lcom/android/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged() - Provider \'"

    iget-object v2, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is out of service"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 133
    return-void
.end method
