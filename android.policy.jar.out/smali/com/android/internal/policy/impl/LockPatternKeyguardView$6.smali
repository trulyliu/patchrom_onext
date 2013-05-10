.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/HtcIfKeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DualtakeEmergencyCallAction()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    .line 756
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 758
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 759
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 761
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 765
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 768
    :cond_1
    const/16 v6, 0x2710

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->pokeWakelock(I)V

    .line 770
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 771
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 772
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/service/HtcTelephonyManager;->getCallStateExt(I)I

    move-result v1

    .line 774
    .local v1, gsmNewState:I
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/service/HtcTelephonyManager;->getCallStateExt(I)I

    move-result v4

    .line 776
    .local v4, subgsmNewState:I
    if-eq v1, v9, :cond_2

    if-ne v4, v9, :cond_3

    :cond_2
    move v3, v5

    .line 790
    .end local v1           #gsmNewState:I
    .end local v4           #subgsmNewState:I
    .local v3, isCallOffhook:Z
    :cond_3
    :goto_0
    if-eqz v3, :cond_9

    .line 791
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 798
    :goto_1
    return-void

    .line 779
    .end local v3           #isCallOffhook:Z
    :cond_4
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/service/HtcTelephonyManager;->getCallStateExt(I)I

    move-result v0

    .line 781
    .local v0, cdmaNewState:I
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/service/HtcTelephonyManager;->getCallStateExt(I)I

    move-result v1

    .line 783
    .restart local v1       #gsmNewState:I
    if-eq v0, v9, :cond_5

    if-ne v1, v9, :cond_6

    :cond_5
    move v3, v5

    .line 785
    .restart local v3       #isCallOffhook:Z
    :cond_6
    goto :goto_0

    .line 787
    .end local v0           #cdmaNewState:I
    .end local v1           #gsmNewState:I
    .end local v3           #isCallOffhook:Z
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-ne v6, v9, :cond_8

    move v3, v5

    .restart local v3       #isCallOffhook:Z
    :cond_8
    goto :goto_0

    .line 793
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1080

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 796
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 656
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 658
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 660
    return-void
.end method

.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public forceStartFaceLock()V
    .locals 2

    .prologue
    .line 737
    invoke-static {}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "forceStartFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isPhoneIdle()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasDialog:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->useBiometricUnlock()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 741
    :cond_2
    return-void

    .line 739
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceStopFaceLock()V
    .locals 2

    .prologue
    .line 728
    invoke-static {}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    const-string v1, "forceStopFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->hide()V

    .line 734
    :cond_1
    return-void
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 524
    :cond_0
    return-void
.end method

.method public goToIccUnlockScreen(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createIccUnlockScreen(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    .line 752
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->goToUnlockScreen(I)V

    .line 474
    return-void
.end method

.method public goToUnlockScreen(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setUnlockType(I)V

    .line 479
    invoke-static {}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToUnlockScreen type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->setKeyguardWindowHiddenWhenCamera()V

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public isBootCompleted()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isBootCompleted()Z

    move-result v0

    return v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isCamera()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isLockScreen()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isLockScreen()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 588
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method public notifyPWMWhenCameraShortcut()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->notifyPWMWhenCameraShortcut()V

    .line 509
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 579
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 583
    return-void
.end method

.method public recreateAll(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateAllRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateAllRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 595
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 596
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 600
    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_1

    move v5, v6

    .line 603
    .local v5, usingPattern:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 606
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 609
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v3, v2, v1

    .line 613
    .local v3, remainingBeforeWipe:I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_4

    .line 618
    if-lez v3, :cond_3

    .line 619
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V
    invoke-static {v6, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V

    .line 643
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 644
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_1
    move v5, v7

    .line 600
    goto :goto_0

    .line 609
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_2
    const v3, 0x7fffffff

    goto :goto_1

    .line 622
    .restart local v3       #remainingBeforeWipe:I
    :cond_3
    const-string v6, "LockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v6, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    goto :goto_2

    .line 626
    :cond_4
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_6

    move v4, v6

    .line 628
    .local v4, showTimeout:Z
    :goto_3
    #if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 629
    const/16 v8, 0xf

    if-ne v1, v8, :cond_7

    .line 630
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 631
    const/4 v4, 0x0

    .line 639
    :cond_5
    :goto_4
    if-eqz v4, :cond_0

    .line 640
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_2

    .end local v4           #showTimeout:Z
    :cond_6
    move v4, v7

    .line 626
    goto :goto_3

    .line 632
    .restart local v4       #showTimeout:Z
    :cond_7
    const/16 v8, 0x14

    if-lt v1, v8, :cond_5

    .line 633
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 634
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v8

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v6, v8, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 636
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 652
    return-void
.end method

.method public setKeyguardWindowHiddenWhenCamera()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->setKeyguardWindowHiddenWhenCamera()V

    .line 513
    return-void
.end method

.method public setPokeWakeLockTime(I)V
    .locals 1
    .parameter "ms"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->setPokeWakeLockTime(I)V

    .line 717
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setScreenOrientation(I)V

    .line 724
    :cond_0
    return-void
.end method

.method public setShowAnimation(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setShowAnimation(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setShowLiveWallpaper(Z)V

    .line 707
    :cond_0
    return-void
.end method

.method public showUnlockScreen(ZZ)V
    .locals 2
    .parameter "bShow"
    .parameter "bRecreate"

    .prologue
    .line 674
    if-eqz p1, :cond_0

    .line 675
    if-eqz p2, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 681
    if-eqz p1, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDualPhoneDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->DualtakeEmergencyCallAction()V

    .line 575
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 565
    :cond_2
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->pokeWakelock(I)V

    .line 566
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    goto :goto_0

    .line 570
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 573
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
