.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final ALWAYS_SHOW_NAV_BAR:Z = false

.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final APP_SWITCH_ACTION_ALWAYS_RECENTAPPS:I = 0x0

.field static final APP_SWITCH_ACTION_PRESS_MENU_HOLD_RECENTAPPS:I = 0x1

.field static final APP_SWITCH_ACTION_PRESS_RECENTAPPS_HOLD_MENU:I = 0x2

.field private static final AUTOMOTIVE_ACTION_MODE_CHANGE:Ljava/lang/String; = "com.htc.AutoMotive.Service.ModeChange"

.field private static final AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String; = "AutoMotive_Current_Mode"

.field private static final AUTOMOTIVE_DISABLED:I = 0x1

.field private static final AUTOMOTIVE_ENABLED:I = 0x0

.field static final BOOT_PROGRESS_LAYER:I = 0x18

#the value of this static final field might be set in the static constructor
.field static final CHECK_SCREEN_SHOT_CHORD:Z = false

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_NAV_BAR:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DRAG_LAYER:I = 0x16

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field static final FIRST_PEN_DWON_TIMEOUT:J = 0x3e8L

#the value of this static final field might be set in the static constructor
.field private static final HARDWARE_RESET_NOTIFICATION_TIME:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HARDWARE_RESET_TIME:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final HAS_PEN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final HAS_POWER_KEY:Z = false

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xa

.field static final INPUT_METHOD_LAYER:I = 0x9

.field static final KEYGUARD_DIALOG_LAYER:I = 0xc

.field static final KEYGUARD_LAYER:I = 0xb

#the value of this static final field might be set in the static constructor
.field private static final LOCK_DESK_DOCK_PORTRAIT:Z = false

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x2

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final MIRROR_MODE_UNLOCK:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field static final NAVIGATION_BAR_LAYER:I = 0x9

.field static final NAVIGATION_BAR_PANEL_LAYER:I = 0x14

.field static final PEN_MODE_DEFAULT:I = 0x0

.field static final PEN_MODE_DISABLE_PEN_AS_TOUCH:I = 0x4

.field static final PEN_MODE_MASK:I = 0xf

.field static final PEN_MODE_PEN_ENABLED:I = 0x1

.field static final PEN_MODE_PEN_STATUS_BAR:I = 0x10

.field static final PEN_MODE_PEN_TOOL_UI:I = 0x8

.field static final PEN_MODE_SETTING_SKETCH_DISABLED:I = 0x20

.field static final PEN_MODE_SKETCH_DISABLED:I = 0x2

.field static final PHONE_LAYER:I = 0x3

.field static final POINTER_LAYER:I = 0x19

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x7

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field static final SCREENSAVER_LAYER:I = 0xd

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SCREEN_CAPTRUE_INTERVAL:J = 0xbb8L

.field static final SCRIBBLE_MESSAGE_NAME:Ljava/lang/String; = "pen_tips_cannot_scribble_here"

.field static final SCRIBBLE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.mysketcher"

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x17

.field static final SEPARATE_TIMEOUT_FOR_SCREEN_SAVER:Z = false

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0xf

.field static final STATUS_BAR_PANEL_LAYER:I = 0x10

.field static final STATUS_BAR_SUB_PANEL_LAYER:I = 0xe

.field static final SYSTEM_ALERT_LAYER:I = 0x8

.field static final SYSTEM_DIALOG_LAYER:I = 0x5

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0x15

.field static final SYSTEM_OVERLAY_LAYER:I = 0x12

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = 0x6

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x6

#the value of this static final field might be set in the static constructor
.field static final UNRESTRICTED_WALLPAPER:Z = false

.field static final VOLUME_OVERLAY_LAYER:I = 0x11

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final isWVGA:Z

.field static final localLOGV:Z

.field static mHService:Landroid/os/IHtcHardwareService;

.field static mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field final HTC_DOCKSCREEN_HOME_INTENT:Ljava/lang/String;

.field final KEY_DESK_DOCK_HOME_CAPTURE:Ljava/lang/String;

.field USE_HTC_DOCKSCREEN_AS_HOME:I

.field USE_ROSIE_AS_HOME:I

.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mAppSwitchType:I

.field mAssistKeyLongPressed:Z

.field private mAutoMotiveEnabled:Z

.field mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field private mEnableSkipCamera:Z

.field mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field mExternalDisplayHeight:I

.field mExternalDisplayWidth:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFirstPenDown:Z

.field mFirstPenDownTimeout:J

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHWResetIndicator:Landroid/app/ProgressDialog;

.field mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHdmiRotation:I

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavBar:I

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPressed:Z

.field mHomePressed:Z

.field mHtcDockScreenIntent:Landroid/content/Intent;

.field mHtcMode:Z

.field mHtcReceiver:Landroid/content/BroadcastReceiver;

.field private mHtcSpeakDownTime:J

.field mIgnoreScreenOff:Z

.field mIncallPowerBehavior:I

.field mIsGuestMode:Z

.field mIsHtcDockScreenAsHome:Z

.field mKeyEventsBlocked:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field private mLastToggleRecentAppsTime:J

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMirrorMode:Z

.field mMirrorReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarVisible:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPenWorkingMode:I

.field mPendingPowerKeyUpCanceled:Z

.field mPluggedIn:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field mPowerKeyPressed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private mPowerLongPress:Ljava/lang/Runnable;

.field private final mPowerLongPress_Toast:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mPowerReceiver:Landroid/content/BroadcastReceiver;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mRecentPressed:Z

.field mResettingSystemUiFlags:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenCaptureInterval:J

.field mScreenCaptureLauchTime:J

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenSaverEnabledByUser:Z

.field mScreenSaverFeatureAvailable:Z

.field mScreenSaverMayRun:Z

.field mScreenSaverTimeout:I

.field private mScreenshotChordEnabled:Z

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mScribbleMessageName:Ljava/lang/String;

.field mScribblePackageName:Ljava/lang/String;

.field mScribbleToast:Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSetLastUserActivity:Ljava/lang/Runnable;

.field mSetupWizardHasRun:Z

.field private mShortcutLaunchCamera:Z

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShouldTurnOffOnKeyUp:Z

.field private mShowPenButton:Z

.field mShowingShutdownAnim:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarDisableToken:Landroid/os/IBinder;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUiMode:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/16 v5, 0x1e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 306
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0x41

    const-string v4, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xcf

    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd0

    const-string v4, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd1

    const-string v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd2

    const-string v4, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 508
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 509
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 510
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 511
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 512
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 627
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetTimer2()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_TIME:I

    .line 628
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetTimer1()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    .line 634
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    const-string v3, "4.0a"

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->MIRROR_MODE_UNLOCK:Z

    .line 645
    const-string v0, "debug_nav_bar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_NAV_BAR:Z

    .line 649
    const-string v0, "unrestrict_wallpaper_size"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->UNRESTRICTED_WALLPAPER:Z

    .line 653
    const-string v0, "always.show.nav_bar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALWAYS_SHOW_NAV_BAR:Z

    .line 681
    const-string v0, "4.0a"

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWVGA:Z

    .line 685
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x12d

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x12f

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->LOCK_DESK_DOCK_PORTRAIT:Z

    .line 706
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x19

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-eq v0, v3, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HAS_POWER_KEY:Z

    .line 726
    new-instance v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    .line 733
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    .line 754
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x21

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xab

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xac

    if-ne v0, v3, :cond_6

    :cond_1
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HAS_PEN:Z

    .line 798
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v5, :cond_7

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v0, v3, :cond_7

    :goto_4
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->CHECK_SCREEN_SHOT_CHORD:Z

    .line 2500
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :cond_3
    move v0, v2

    .line 634
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 685
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 706
    goto :goto_2

    :cond_6
    move v0, v2

    .line 754
    goto :goto_3

    :cond_7
    move v1, v2

    .line 798
    goto :goto_4

    .line 2500
    nop

    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarDisableToken:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 332
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 352
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 356
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 359
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 360
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 363
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 364
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 365
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 367
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 373
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 374
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 385
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 394
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 400
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 401
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 404
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutLaunchCamera:Z

    .line 405
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    .line 408
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 414
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 418
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 419
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 421
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 499
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 501
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 504
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 506
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 535
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 536
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    .line 537
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 549
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 550
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 551
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 552
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 555
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 573
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 612
    const-string v0, "launch_dock_screen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->KEY_DESK_DOCK_HOME_CAPTURE:Ljava/lang/String;

    .line 613
    const-string v0, "com.htc.intent.ACTION_HTC_DOCK_SCREEN"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HTC_DOCKSCREEN_HOME_INTENT:Ljava/lang/String;

    .line 614
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_ROSIE_AS_HOME:I

    .line 615
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_HTC_DOCKSCREEN_AS_HOME:I

    .line 616
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcDockScreenAsHome:Z

    .line 623
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventsBlocked:Z

    .line 637
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorMode:Z

    .line 641
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcMode:Z

    .line 654
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALWAYS_SHOW_NAV_BAR:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    .line 659
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I

    .line 661
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    .line 700
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIgnoreScreenOff:Z

    .line 701
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPressed:Z

    .line 703
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    .line 722
    iput-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastToggleRecentAppsTime:J

    .line 730
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    .line 741
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    .line 742
    iput-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcSpeakDownTime:J

    .line 746
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsGuestMode:Z

    .line 752
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPenButton:Z

    .line 768
    iput-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureLauchTime:J

    .line 776
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetupWizardHasRun:Z

    .line 778
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstPenDown:Z

    .line 791
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenWorkingMode:I

    .line 1112
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1194
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 3226
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 3295
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4370
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 4371
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4373
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 5103
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5121
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 5572
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5718
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 6491
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorReceiver:Landroid/content/BroadcastReceiver;

    .line 6510
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcReceiver:Landroid/content/BroadcastReceiver;

    .line 6528
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

    .line 6582
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetLastUserActivity:Ljava/lang/Runnable;

    .line 6759
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    .line 6814
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 6883
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 199
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_TIME:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 199
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startHtcSpeak(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startRecentApps(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelRecentAppsAction(Ljava/lang/String;)V

    return-void
.end method

.method private applyLidSwitchState()V
    .locals 3

    .prologue
    .line 5768
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 5770
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 5771
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    .line 5773
    :cond_0
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "sysui"
    .parameter "fl"
    .parameter "r"

    .prologue
    .line 3613
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 3616
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 3617
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3618
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3619
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3620
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3628
    :cond_3
    :goto_0
    return-void

    .line 3622
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3623
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3624
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3625
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 1088
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->intitPenVars()V

    .line 1091
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    return-void
.end method

.method private cancelRecentAppsAction(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 6369
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6370
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6371
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelRecentAppsAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1864
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->dispose()V

    .line 1866
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1869
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 1870
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1871
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1874
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_2

    .line 1875
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1877
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1878
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1880
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_2
    return-void
.end method

.method private enablePointerLocation()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1836
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_0

    .line 1837
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1838
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1840
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1843
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1844
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1848
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1849
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1850
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1852
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1853
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1855
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "PointerLocationView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1857
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1861
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2488
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2490
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2491
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_0
    return-object v0
.end method

.method private getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 3

    .prologue
    .line 5665
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    if-nez v1, :cond_1

    .line 5666
    const/4 v0, 0x0

    .line 5674
    :cond_0
    :goto_0
    return-object v0

    .line 5669
    :cond_1
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 5671
    .local v0, sandman:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_0

    .line 5672
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IDreamManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFnMetaState()Z
    .locals 4

    .prologue
    .line 6242
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6244
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    if-nez v1, :cond_0

    .line 6245
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    .line 6246
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_1

    .line 6247
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->isFnKeyActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6252
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 6248
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 6249
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6252
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 5527
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 5528
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 5529
    const/4 v2, 0x0

    .line 5535
    :cond_0
    return-object v2

    .line 5531
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 5532
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 5533
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 5532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNavigationBarVisibleHeight(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 6854
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isNavigationBarOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNavigationBarVisibleWidth(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 6849
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isNavigationBarOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3169
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 2483
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private handleLongPressOnHome(J)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 824
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v2, :cond_1

    .line 825
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 827
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v2, v6, :cond_1

    .line 829
    :cond_0
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 833
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_2

    .line 834
    invoke-virtual {p0, v7, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 835
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 839
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 842
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v5, :cond_4

    .line 843
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 856
    :cond_3
    :goto_0
    return-void

    .line 844
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v6, :cond_3

    .line 846
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 847
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_3

    .line 848
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private handleRecentApps(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 6379
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6380
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 6381
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_APP_SWITCH hasRingingCall()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecentPressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    :cond_1
    :goto_0
    return-void

    .line 6388
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    if-eqz v0, :cond_3

    .line 6389
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6391
    :cond_3
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    .line 6392
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleRecentAppsRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$HandleRecentAppsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static hasHWKB()Z
    .locals 1

    .prologue
    .line 6225
    const/4 v0, 0x0

    return v0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .parameter "win"
    .parameter "fallbackEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 3121
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 3122
    .local v0, actions:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 3123
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 3125
    .local v1, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 3129
    .end local v1           #delayMillis:J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 6
    .parameter "handled"

    .prologue
    .line 1022
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPressed:Z

    .line 1028
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isLockScreen()Z

    move-result v0

    #if-nez v0, :cond_1

    .line 1032
    :cond_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileScreenCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1044
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 1046
    const-string v0, "WindowManager"

    const-string v1, "ProfileConfig.getProfileHardwareResetEnabled() == true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1055
    :cond_3
    return-void

    .line 1038
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPressed:Z

    .line 1063
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1067
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1069
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1071
    :cond_0
    return v0
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1094
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 1096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1097
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1099
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1102
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1106
    .end local v0           #now:J
    :cond_0
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5496
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .parameter "accessibilityMode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1966
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1972
    :cond_0
    :goto_0
    return v0

    .line 1968
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1970
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5492
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNavigationBarOn()Z
    .locals 1

    .prologue
    .line 6841
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 5251
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5252
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 4

    .prologue
    .line 3153
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3154
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 3155
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 3156
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3160
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3165
    :cond_0
    :goto_0
    return-void

    .line 3161
    :catch_0
    move-exception v0

    .line 3162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3133
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3134
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3137
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3138
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3142
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 3143
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 3144
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 3146
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3150
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 3147
    :catch_0
    move-exception v0

    .line 3148
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static makeFnState(IIZIZ)V
    .locals 7
    .parameter "code"
    .parameter "metaKeys"
    .parameter "down"
    .parameter "repeatCount"
    .parameter "keyguardOn"

    .prologue
    .line 6229
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasHWKB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6231
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    if-nez v0, :cond_0

    .line 6232
    const-string v0, "htchardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    .line 6233
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    if-eqz v0, :cond_1

    .line 6234
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IHtcHardwareService;->makeFnState(IIZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6239
    :cond_1
    :goto_0
    return-void

    .line 6235
    :catch_0
    move-exception v6

    .line 6236
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 3950
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3951
    .local v0, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3952
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 3953
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3955
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3956
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3957
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    .line 3958
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 3963
    :cond_1
    return-void
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 1884
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1885
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 1898
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1887
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1889
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1891
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 1893
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 1895
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1885
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method static resetMetaState()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 6256
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasHWKB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6257
    const/4 v9, 0x0

    .line 6259
    .local v9, isReset:Z
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    if-nez v0, :cond_0

    .line 6260
    const-string v0, "htchardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    .line 6261
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    if-eqz v0, :cond_2

    .line 6262
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    invoke-interface {v0}, Landroid/os/IHtcHardwareService;->getCapsLedState()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    invoke-interface {v0}, Landroid/os/IHtcHardwareService;->getFnLedState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6263
    :cond_1
    const/4 v9, 0x1

    .line 6265
    :cond_2
    if-eqz v9, :cond_3

    .line 6267
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/os/IHtcHardwareService;->setCapsLedState(Z)V

    .line 6268
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHService:Landroid/os/IHtcHardwareService;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/os/IHtcHardwareService;->setFnLedState(Z)V

    .line 6271
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 6272
    .local v10, wm:Landroid/view/IWindowManager;
    if-eqz v10, :cond_3

    .line 6273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6281
    .local v1, now:J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0xe2

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 6284
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0xe2

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6294
    .end local v1           #now:J
    .end local v10           #wm:Landroid/view/IWindowManager;
    :cond_3
    :goto_0
    return v12

    .line 6290
    :catch_0
    move-exception v8

    .line 6291
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 5294
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5300
    :cond_0
    :goto_0
    return-void

    .line 5297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendMenuKey()V
    .locals 4

    .prologue
    .line 6359
    const/16 v1, 0x52

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V

    .line 6360
    const/16 v1, 0x52

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6364
    :goto_0
    return-void

    .line 6361
    :catch_0
    move-exception v0

    .line 6362
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Inject event failed, could not send menu key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupBootCompleteReceiver()V
    .locals 4

    .prologue
    .line 6626
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6627
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6628
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6629
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6631
    return-void
.end method

.method private setupFixedLandscapeOrientation()V
    .locals 4

    .prologue
    .line 6666
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6668
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.SHUTDOWN_ANIMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6669
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6670
    return-void
.end method

.method private startHtcSpeak(J)V
    .locals 5
    .parameter "eventDownTime"

    .prologue
    .line 6550
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nuance.vsuite.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6551
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6552
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 6553
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6554
    iput-wide p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcSpeakDownTime:J

    .line 6555
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 6556
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start HtcSpeak with event down time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6564
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 6559
    :catch_0
    move-exception v0

    .line 6560
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 6561
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start HtcSpeak, ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecentApps(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 12
    .parameter "win"

    .prologue
    .line 6424
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6425
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_3

    .line 6426
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6427
    .local v7, type:I
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v8, v9

    .line 6428
    .local v8, typeCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 6429
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v9, v9, v6

    if-ne v7, v9, :cond_2

    .line 6464
    .end local v6           #i:I
    .end local v7           #type:I
    .end local v8           #typeCount:I
    :cond_0
    :goto_2
    return-void

    .line 6424
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6428
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v6       #i:I
    .restart local v7       #type:I
    .restart local v8       #typeCount:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6440
    .end local v6           #i:I
    .end local v7           #type:I
    .end local v8           #typeCount:I
    :cond_3
    :try_start_0
    const-string v9, "recentapps"

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 6443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6444
    .local v1, currentTime:J
    iget-wide v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastToggleRecentAppsTime:J

    sub-long v3, v1, v9

    .line 6445
    .local v3, deltaTime:J
    const-wide/16 v9, 0x1f4

    cmp-long v9, v3, v9

    if-gez v9, :cond_4

    .line 6446
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_0

    .line 6447
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip toggleRecentApps: deltaTime= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is within 500ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6456
    .end local v1           #currentTime:J
    .end local v3           #deltaTime:J
    :catch_0
    move-exception v5

    .line 6457
    .local v5, e:Landroid/os/RemoteException;
    const-string v9, "WindowManager"

    const-string v10, "RemoteException when showing recent apps"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 6452
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v1       #currentTime:J
    .restart local v3       #deltaTime:J
    :cond_4
    :try_start_1
    iput-wide v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastToggleRecentAppsTime:J

    .line 6453
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v9}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 4386
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4387
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 4388
    monitor-exit v4

    .line 4436
    :goto_0
    return-void

    .line 4390
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4393
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4394
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4431
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4432
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4433
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4435
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 5744
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v2

    .line 5745
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 5747
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 5748
    if-eqz v0, :cond_2

    .line 5750
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5755
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5757
    :cond_0
    monitor-exit v2

    .line 5758
    return-void

    .line 5745
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5753
    .restart local v0       #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5757
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 6
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6026
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_0

    move v0, v3

    .line 6094
    :goto_0
    return v0

    .line 6029
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int v2, v4, v5

    .line 6032
    .local v2, visibility:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v2, v4

    .line 6033
    .local v0, diff:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 6034
    .local v1, needsMenu:Z
    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-ne v4, v5, :cond_1

    move v0, v3

    .line 6036
    goto :goto_0

    .line 6038
    :cond_1
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 6039
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 6040
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 6041
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 10
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 2187
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/graphics/Bitmap;)Landroid/view/View;
    .locals 14
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "thumbnail"

    .prologue
    .line 2201
    if-nez p2, :cond_1

    .line 2202
    const/4 v7, 0x0

    .line 2346
    :cond_0
    :goto_0
    return-object v7

    .line 2206
    :cond_1
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_2

    .line 2207
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addStartingWindow, packageName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_2
    const-string v11, "new_starting_window"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2211
    const-string v11, "com.htc.launcher"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.android.camera"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2213
    :cond_3
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_4

    .line 2214
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " needs no starting window"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 2221
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2225
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    move/from16 v0, p3

    if-ne v0, v11, :cond_6

    if-eqz p6, :cond_7

    .line 2227
    :cond_6
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2228
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2234
    :cond_7
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 2235
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2236
    .local v6, ta:Landroid/content/res/TypedArray;
    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-nez v11, :cond_8

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2241
    :cond_8
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_9

    .line 2242
    const-string v11, "WindowManager"

    const-string v12, "No starting window because it has set windowDisablePreview"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2247
    :cond_a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2248
    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2250
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    .line 2256
    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    or-int/lit8 v12, p8, 0x10

    or-int/lit8 v12, v12, 0x8

    const/high16 v13, 0x2

    or-int/2addr v12, v13

    invoke-virtual {v8, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 2266
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v11

    if-nez v11, :cond_b

    .line 2267
    const/high16 v11, 0x2000

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    .line 2270
    :cond_b
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v8, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 2273
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2274
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2275
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2276
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2278
    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v11, v11, 0x1

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2280
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2282
    const-string v11, "window"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 2286
    .local v10, wm:Landroid/view/WindowManager;
    const-string v11, "new_starting_window"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2287
    if-eqz v8, :cond_e

    instance-of v11, v8, Lcom/android/internal/policy/impl/PhoneWindow;

    if-eqz v11, :cond_e

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-boolean v11, v11, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v11, :cond_e

    .line 2292
    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow;

    move-object v11, v0

    const/4 v12, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v11, v12, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setSimpleDecorView(ZLandroid/graphics/Bitmap;)V

    .line 2295
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_c

    .line 2296
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "windowAnimations(before)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_c
    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v11, :cond_d

    .line 2299
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 2300
    .local v9, win2:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2304
    .end local v9           #win2:Landroid/view/Window;
    :cond_d
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_e

    .line 2305
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "windowAnimations(after)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_e
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 2312
    .local v7, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2320
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_f

    .line 2321
    const-string v11, "WindowManager"

    const-string v12, "No starting window because the window is floating."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2331
    :cond_10
    invoke-interface {v10, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2335
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2336
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #win:Landroid/view/Window;
    .end local v10           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 2338
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already running, starting window not displayed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2339
    :catch_1
    move-exception v3

    .line 2343
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed creating starting window"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2229
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v2       #context:Landroid/content/Context;
    :catch_2
    move-exception v11

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .parameter "config"
    .parameter "keyboardPresence"
    .parameter "navigationPresence"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1983
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1985
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1986
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1988
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1991
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1992
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    .line 1993
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1997
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2000
    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2002
    :cond_3
    return-void

    .line 1983
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .parameter "visibility"

    .prologue
    .line 3308
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3311
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1949
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1959
    :goto_0
    return-void

    .line 1954
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1956
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1949
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4238
    const/4 v0, 0x0

    .line 4240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowKeyRepeat()Z
    .locals 1

    .prologue
    .line 6020
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 3991
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3993
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 3994
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3996
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_1

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 4002
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4003
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4005
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4014
    :goto_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 4016
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 4025
    :goto_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4026
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4030
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->setAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    return-void

    .line 4011
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    goto :goto_0

    .line 4022
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    goto :goto_1
.end method

.method public beginAnimationLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 3973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3974
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3979
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->clearAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method

.method public beginLayoutLw(III)V
    .locals 17
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 3356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3357
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3358
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3359
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3360
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3361
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 3364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3366
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3368
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3370
    const/high16 v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3371
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3374
    sget-object v14, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3375
    .local v14, pf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3376
    .local v11, df:Landroid/graphics/Rect;
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3377
    .local v16, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 3378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 3379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 3380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 3384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    const/4 v13, 0x1

    .line 3390
    .local v13, navVisible:Z
    :goto_0
    if-eqz v13, :cond_7

    .line 3391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_0

    .line 3392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3393
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3405
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v13, v2

    .line 3411
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_3
    or-int/2addr v13, v2

    .line 3413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    .line 3418
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 3419
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_d

    .line 3423
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v2, v2, p3

    sub-int v15, p2, v2

    .line 3440
    .local v15, top:I
    :goto_5
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v15, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3441
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 3442
    if-eqz v13, :cond_c

    .line 3443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 3444
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3445
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3450
    :goto_6
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3454
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3491
    .end local v15           #top:I
    :cond_2
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3494
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3505
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    .line 3507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 3508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 3509
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 3510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 3511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3512
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3514
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-interface {v2, v14, v11, v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3522
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 3526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3544
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3548
    #move-object/from16 v0, p0

    #iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    #move-object/from16 v0, p0

    #iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    #add-int/2addr v2, v3

    #move-object/from16 v0, p0

    #iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3551
    :cond_5
    return-void

    .line 3384
    .end local v13           #navVisible:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3395
    .restart local v13       #navVisible:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_0

    .line 3396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_1

    .line 3405
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3411
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3418
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_b
    move/from16 v15, p2

    .line 3423
    goto/16 :goto_5

    .line 3448
    .restart local v15       #top:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto/16 :goto_6

    .line 3460
    .end local v15           #top:I
    :cond_d
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v2, v2, p3

    sub-int v12, p1, v2

    .line 3472
    .local v12, left:I
    :goto_8
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v12, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3473
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 3474
    if-eqz v13, :cond_f

    .line 3475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 3476
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3477
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3482
    :goto_9
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3486
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_7

    .end local v12           #left:I
    :cond_e
    move/from16 v12, p1

    .line 3460
    goto :goto_8

    .line 3480
    .restart local v12       #left:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_9
.end method

.method callInterceptPowerKeyUp(Z)V
    .locals 0
    .parameter "canceled"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x7d0

    const/16 v5, 0x67

    const/16 v4, 0x66

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2164
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLiveWallpaperFlag:Z

    if-eqz v2, :cond_2

    .line 2165
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v5, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_1

    .line 2171
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2165
    goto :goto_0

    .line 2171
    :cond_2
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-eq v2, v3, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v4, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v5, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 1903
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1905
    .local v1, type:I
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return v2

    .line 1909
    :cond_1
    const/4 v0, 0x0

    .line 1910
    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1937
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1939
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    .line 1940
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1942
    const/4 v2, -0x8

    goto :goto_0

    .line 1934
    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1935
    goto :goto_1

    .line 1910
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public clearIdleScreen()V
    .locals 1

    .prologue
    .line 6702
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->clearIdleScreen()V

    .line 6703
    return-void
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .parameter "onWallpaper"

    .prologue
    .line 2477
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x10a002a

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x10a0027

    goto :goto_0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 5807
    const/4 v2, 0x0

    .line 5812
    .local v2, intent:Landroid/content/Intent;
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 5814
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 5819
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    if-eqz v5, :cond_6

    .line 5820
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5821
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.htc.AutoMotive"

    const-string v6, "com.htc.AutoMotive.carousel.MainActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5822
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 5823
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createHomeDockIntent, mAutoMotiveEnabled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5850
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    move-object v3, v4

    .line 5866
    :goto_1
    return-object v3

    .line 5827
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 5832
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcDockScreenAsHome:Z

    if-eqz v5, :cond_6

    .line 5833
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    .line 5834
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 5835
    .local v1, ai_dock:Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_2

    .line 5836
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity registered for this intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 5837
    goto :goto_1

    .line 5840
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5841
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v3

    .line 5842
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 5854
    .end local v1           #ai_dock:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 5856
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_4

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    move-object v3, v4

    .line 5857
    goto :goto_1

    .line 5860
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_4
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5861
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5862
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 5863
    goto :goto_1

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    move-object v3, v4

    .line 5866
    goto :goto_1

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_6
    move-object v3, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 5274
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5275
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5276
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5283
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 5078
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5086
    .local v0, repeatEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5087
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5088
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 5052
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 5057
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5058
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5059
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5062
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5064
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5066
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5068
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5070
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5071
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5075
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 5073
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 5091
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5092
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5093
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 5095
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5101
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 5096
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 5097
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 3066
    const/16 v18, 0x0

    .line 3067
    .local v18, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 3068
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 3069
    .local v20, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 3070
    .local v21, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 3071
    .local v22, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 3076
    .local v19, initialDown:Z
    :goto_0
    if-eqz v19, :cond_3

    .line 3077
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 3082
    .local v17, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 3088
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 3089
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3096
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3097
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 3098
    const/16 v18, 0x0

    .line 3101
    :cond_0
    if-eqz v19, :cond_4

    .line 3102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3117
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_1
    :goto_2
    return-object v18

    .line 3071
    .restart local v20       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v21       #keyCode:I
    .restart local v22       #metaState:I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 3079
    .restart local v19       #initialDown:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17       #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 3103
    .restart local v14       #flags:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 3105
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 2150
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLiveWallpaperFlag:Z

    if-eqz v1, :cond_0

    .line 2152
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2154
    :cond_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 6110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6111
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6112
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6114
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6115
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6116
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 6118
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6119
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6120
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6121
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6122
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6123
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6125
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 6126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6127
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6129
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6130
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6131
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6132
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6133
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6134
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6135
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6137
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6139
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6140
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6142
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6143
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6144
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6145
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6146
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6147
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6149
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6150
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6152
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6153
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6154
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6156
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6157
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6158
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6160
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6161
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6162
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6164
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6165
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6166
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6168
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6169
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6170
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6172
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6173
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6174
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6176
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6177
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6178
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6180
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6181
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6182
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6184
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6186
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6188
    const-string v0, " mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6189
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6191
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6193
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6194
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6195
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6196
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6197
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6199
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6201
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAutoMotiveEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6206
    return-void
.end method

.method public enableGuestMode(Z)V
    .locals 3
    .parameter "isGuestMode"

    .prologue
    .line 6723
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 6724
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGuestMode, isGuestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsGuestMode:Z

    .line 6726
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 5238
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5239
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 5241
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 5762
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 5763
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 5764
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5765
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 5245
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5246
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5248
    :cond_0
    return-void
.end method

.method public finishAnimationLw()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4034
    const/4 v0, 0x0

    .line 4035
    .local v0, changes:I
    const/4 v3, 0x0

    .line 4037
    .local v3, topIsFullscreen:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4041
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_0

    .line 4044
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v8, :cond_9

    .line 4046
    invoke-static {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->statusBarShowingOrHideing(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 4086
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->checkStatusBarVisibility(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 4091
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPenButton:Z

    .line 4092
    .local v4, topNeedsPenButton:Z
    if-eqz v2, :cond_1

    .line 4093
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_d

    move v4, v6

    .line 4096
    :cond_1
    :goto_2
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPenButton:Z

    if-eq v4, v8, :cond_2

    .line 4097
    move v5, v4

    .line 4099
    .local v5, topNeedsPenButtonF:Z
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPenButton:Z

    .line 4101
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v9, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4114
    .end local v5           #topNeedsPenButtonF:Z
    :cond_2
    const/4 v1, 0x0

    .line 4115
    .local v1, isCamera:Z
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    if-eqz v8, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.camera"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4117
    const/4 v1, 0x1

    .line 4118
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4119
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutLaunchCamera:Z

    if-eqz v8, :cond_4

    .line 4120
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4122
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyAfterCameraLaunch()V

    .line 4124
    :cond_3
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutLaunchCamera:Z

    .line 4125
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_4

    .line 4126
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishAnimationLw isCamera, attr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lp.flags=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_6

    if-nez v1, :cond_6

    .line 4137
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v8

    if-nez v8, :cond_e

    .line 4138
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4139
    or-int/lit8 v0, v0, 0x7

    .line 4146
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->getNeedToShowKeyguard(Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 4150
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4186
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v6

    and-int/lit8 v6, v6, 0x6

    if-eqz v6, :cond_7

    .line 4189
    or-int/lit8 v0, v0, 0x1

    .line 4193
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4194
    return v0

    .line 4037
    .end local v1           #isCamera:Z
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #topNeedsPenButton:Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4047
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_0

    .line 4054
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_a

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_b

    :cond_a
    move v3, v6

    .line 4060
    :goto_4
    if-eqz v3, :cond_c

    invoke-static {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->statusBarShowingOrHideing(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4063
    or-int/lit8 v0, v0, 0x1

    .line 4065
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_b
    move v3, v7

    .line 4054
    goto :goto_4

    .line 4081
    :cond_c
    invoke-static {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->statusBarShowingOrHideing(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .restart local v4       #topNeedsPenButton:Z
    :cond_d
    move v4, v7

    .line 4093
    goto/16 :goto_2

    .line 4156
    .restart local v1       #isCamera:Z
    :cond_e
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v8, :cond_10

    .line 4157
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4158
    or-int/lit8 v0, v0, 0x7

    .line 4162
    :cond_f
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_3

    .line 4164
    :cond_10
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4165
    or-int/lit8 v0, v0, 0x7

    .line 4169
    :cond_11
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v8, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    .line 4172
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->getNeedToShowKeyguard(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v6

    if-nez v6, :cond_6

    .line 4175
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 3968
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 4244
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    .line 4248
    const/4 v0, 0x1

    .line 4250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2141
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v0, :cond_0

    .line 2142
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 2144
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    goto :goto_0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2132
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    const v6, 0x10100

    .line 3316
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3317
    .local v2, fl:I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 3319
    .local v3, systemUiVisibility:I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 3322
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    .line 3324
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3325
    .local v1, availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 3330
    .local v0, availBottom:I
    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    .line 3331
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    .line 3332
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3352
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :goto_1
    return-void

    .line 3327
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3328
    .restart local v1       #availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0       #availBottom:I
    goto :goto_0

    .line 3336
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3339
    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_3

    .line 3340
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 3341
    :cond_3
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_4

    .line 3343
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3346
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3351
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


.method public getIdleScreenLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6716
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2092
    const/16 v0, 0xf

    return v0
.end method

.method public getNavigationBarHeight(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 6863
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNavigationBarVisibleHeight(I)I

    move-result v0

    return v0
.end method

.method public getNavigationBarWidth(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 6859
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNavigationBarVisibleWidth(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v0, :cond_1

    .line 2116
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 2128
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 2118
    .restart local p2
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2121
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_2

    if-ge p1, p2, :cond_0

    .line 2124
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isNavigationBarOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    goto :goto_0
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 2106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isNavigationBarOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 2110
    .end local p1
    :cond_0
    return p1
.end method

.method getPowerLongPress()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method getScreenshotChordLongPress()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 890
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorRectLw(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "systemRect"

    .prologue
    .line 3555
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3556
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3557
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3558
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3559
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 3561
    :goto_0
    return v0

    .line 3560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    .line 3561
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goHome()Z
    .locals 15

    .prologue
    .line 5898
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5900
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5928
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v14

    .line 5934
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_3

    .line 5935
    const/4 v0, 0x0

    .line 5941
    .end local v14           #result:I
    :goto_0
    return v0

    .line 5909
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5910
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5914
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5915
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 5916
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 5917
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 5923
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_0

    .line 5924
    const/4 v0, 0x0

    goto :goto_0

    .line 5937
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_0
    move-exception v0

    .line 5941
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method handleFirstPenDown(Z)Z
    .locals 5
    .parameter "down"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6915
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetupWizardHasRun:Z

    if-nez v1, :cond_0

    .line 6916
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "setup_wizard_has_run"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetupWizardHasRun:Z

    .line 6918
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetupWizardHasRun:Z

    if-nez v1, :cond_2

    .line 6942
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 6916
    goto :goto_0

    .line 6921
    :cond_2
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6922
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstPenDown:Z

    if-nez v1, :cond_5

    .line 6923
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "has_pen_down_after_setup_wizard"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstPenDown:Z

    .line 6925
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstPenDown:Z

    if-nez v1, :cond_5

    .line 6926
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "has_pen_down_after_setup_wizard"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6928
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstPenDown:Z

    .line 6930
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    .line 6931
    const-string v1, "WindowManager"

    const-string v3, "Show first pen down tips"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6934
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.action.FIRST_PEN_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6935
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    move v1, v3

    .line 6923
    goto :goto_2

    :cond_5
    move v2, v3

    .line 6942
    goto :goto_1
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 4348
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4349
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 4368
    :goto_0
    return-void

    .line 4357
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4358
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4366
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 4358
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 4363
    :catch_0
    move-exception v1

    .line 4364
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4366
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 6100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method hasRingingCall()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 6322
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6323
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 6324
    const-string v3, "WindowManager"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6331
    :goto_0
    return v2

    .line 6328
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 6329
    :catch_0
    move-exception v0

    .line 6330
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ITelephony.isOffhhook threw RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 2096
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 5625
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5633
    return-void
.end method

.method public hideIdleScreen()V
    .locals 1

    .prologue
    .line 6712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideIdleScreen()V

    .line 6713
    return-void
.end method

.method public hideKeyguardWindow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4199
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 4200
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 4201
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hide Keyguard Window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4203
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    .line 4206
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 5269
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5270
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .locals 11
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1373
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1374
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1375
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 1376
    const-string v8, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 1377
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v8, :cond_0

    .line 1379
    new-instance v8, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-direct {v8, p1, p0, p4}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 1381
    :cond_0
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1382
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1384
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :goto_0
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 1387
    .local v7, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1388
    new-instance v8, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1389
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1390
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 1392
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1393
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1394
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v9, 0x1020

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1396
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1397
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.CAR_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x1020

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1400
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1401
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x1020

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1405
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1406
    .local v6, pm:Landroid/os/PowerManager;
    const/4 v8, 0x1

    const-string v9, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1408
    const-string v8, "1"

    const-string v9, "ro.debuggable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1409
    const v8, 0x10e000e

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1411
    const v8, 0x10e0010

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1414
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->LOCK_DESK_DOCK_PORTRAIT:Z

    if-eqz v8, :cond_7

    .line 1415
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1427
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1430
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x40d000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1435
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1437
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1439
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1442
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1443
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1444
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1445
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1446
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1447
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1448
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 1449
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 1451
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1456
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1457
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1458
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 1459
    if-eqz v3, :cond_2

    .line 1460
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPluggedIn:Z

    .line 1463
    :cond_2
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1464
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070021

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1471
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x408003d

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1476
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070023

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1478
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070024

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1480
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070025

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1483
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1490
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v8}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1491
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1501
    :goto_3
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.intent.ACTION_HTC_DOCK_SCREEN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    .line 1502
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    const/high16 v9, 0x1020

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1506
    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->MIRROR_MODE_UNLOCK:Z

    if-nez v8, :cond_4

    .line 1507
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1508
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v8, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 1510
    .local v4, mirrorintent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 1511
    const-string v8, "mirror_display_state"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1514
    .local v5, mirrorstatus:I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_a

    .line 1515
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorMode:Z

    .line 1518
    :cond_3
    :goto_4
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_4

    .line 1519
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init() mMirrorMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mirrorstatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v4           #mirrorintent:Landroid/content/Intent;
    .end local v5           #mirrorstatus:I
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1526
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v8, "com.htc.autobot.PROJECTOR_STATE"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1527
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1528
    .local v1, htcintent:Landroid/content/Intent;
    if-eqz v1, :cond_6

    .line 1529
    const-string v8, "EXTRA_STATE"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1531
    .local v2, htcstatus:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    .line 1532
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcMode:Z

    .line 1536
    :cond_5
    :goto_5
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_6

    .line 1537
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init() mHtcMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", htcstatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    .end local v2           #htcstatus:I
    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1543
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v8, "com.htc.AutoMotive.Service.ModeChange"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1544
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1548
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setupBootCompleteReceiver()V

    .line 1551
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    .line 1552
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setupFixedLandscapeOrientation()V

    .line 1555
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    invoke-virtual {v8, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->init(Landroid/content/Context;)V

    .line 1560
    return-void

    .line 1419
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #htcintent:Landroid/content/Intent;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const v8, 0x409000f

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto/16 :goto_1

    .line 1460
    .restart local v0       #filter:Landroid/content/IntentFilter;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1493
    :cond_9
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto/16 :goto_3

    .line 1516
    .restart local v4       #mirrorintent:Landroid/content/Intent;
    .restart local v5       #mirrorstatus:I
    :cond_a
    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 1517
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorMode:Z

    goto/16 :goto_4

    .line 1533
    .end local v4           #mirrorintent:Landroid/content/Intent;
    .end local v5           #mirrorstatus:I
    .restart local v1       #htcintent:Landroid/content/Intent;
    .restart local v2       #htcstatus:I
    :cond_b
    if-nez v2, :cond_5

    .line 1534
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcMode:Z

    goto :goto_5

    .line 1385
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #htcintent:Landroid/content/Intent;
    .end local v2           #htcstatus:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #pm:Landroid/os/PowerManager;
    .end local v7           #settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4298
    const/4 v4, 0x0

    .line 4300
    .local v4, plugged:Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4301
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4303
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 4304
    .local v2, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 4306
    .local v5, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4307
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .line 4308
    .local v0, buf:[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 4309
    .local v3, n:I
    if-le v3, v7, :cond_0

    .line 4310
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 4317
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4319
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4327
    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4328
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 4329
    return-void

    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_2
    move v4, v8

    .line 4310
    goto :goto_0

    .line 4312
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 4313
    .local v1, ex:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4317
    if-eqz v5, :cond_1

    .line 4319
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4320
    :catch_1
    move-exception v9

    goto :goto_1

    .line 4314
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4315
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4317
    if-eqz v5, :cond_1

    .line 4319
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 4320
    :catch_3
    move-exception v9

    goto :goto_1

    .line 4317
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 4319
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4321
    :cond_3
    :goto_7
    throw v7

    .end local v2           #filename:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/FileReader;
    :cond_4
    move v9, v8

    .line 4327
    goto :goto_2

    :cond_5
    move v7, v8

    .line 4328
    goto :goto_3

    .line 4320
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 4317
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_6

    .line 4314
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 4312
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 43
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 2508
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v24

    .line 2509
    .local v24, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 2510
    .local v22, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    .line 2511
    .local v28, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v25

    .line 2512
    .local v25, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    .line 2513
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v39

    if-nez v39, :cond_4

    const/4 v11, 0x1

    .line 2514
    .local v11, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    .line 2523
    .local v7, canceled:Z
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_1

    .line 2524
    const/16 v23, 0x0

    .line 2525
    .local v23, keyName:Ljava/lang/String;
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v39

    move/from16 v0, v22

    move/from16 v1, v39

    if-gt v0, v1, :cond_0

    if-gez v22, :cond_5

    .line 2526
    :cond_0
    const-string v23, "NOT_DEFINED"

    .line 2532
    :goto_1
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "interceptKeyBeforeDispatch keyCode="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", keyName="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", down="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " repeatCount="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "   keyguardOn="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mHomePressed="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    .end local v23           #keyName:Ljava/lang/String;
    :cond_1
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->logKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2545
    const/4 v6, 0x0

    .line 2546
    .local v6, block_vk_mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "htc_block_virtual_key"

    const/16 v41, 0x0

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2549
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v6, v0, :cond_6

    .line 2550
    const/16 v39, 0x3

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    const/16 v39, 0x52

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    const/16 v39, 0x4

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    const/16 v39, 0x54

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    const/16 v39, 0xdb

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    const/16 v39, 0xbb

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    .line 2554
    :cond_2
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_3

    const-string v39, "WindowManager"

    const-string v40, "interceptBeforeDispatching, blocks virtual keys"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_3
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 2557
    .local v19, intent:Landroid/content/Intent;
    const-string v39, "com.htc.intent.action.BLOCK_VIRTUAL_KEY"

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2560
    const-string v39, "android.intent.extra.KEY_NAME"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2563
    const-wide/16 v39, -0x1

    .line 3049
    .end local v19           #intent:Landroid/content/Intent;
    :goto_2
    return-wide v39

    .line 2513
    .end local v6           #block_vk_mode:I
    .end local v7           #canceled:Z
    .end local v11           #down:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2530
    .restart local v7       #canceled:Z
    .restart local v11       #down:Z
    .restart local v23       #keyName:Ljava/lang/String;
    :cond_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1

    .line 2569
    .end local v23           #keyName:Ljava/lang/String;
    .restart local v6       #block_vk_mode:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsGuestMode:Z

    move/from16 v39, v0

    if-eqz v39, :cond_9

    .line 2570
    const/16 v39, 0x54

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    const/16 v39, 0x1b

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    const/16 v39, 0xe4

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 2573
    :cond_7
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_8

    .line 2574
    const-string v39, "WindowManager"

    const-string v40, "interceptBeforeDispatching, blocks keys for guest mode"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_8
    const-wide/16 v39, -0x1

    goto :goto_2

    .line 2584
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    move/from16 v39, v0

    if-eqz v39, :cond_c

    and-int/lit16 v0, v14, 0x400

    move/from16 v39, v0

    if-nez v39, :cond_c

    .line 2585
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v39, v0

    if-eqz v39, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v39, v0

    if-nez v39, :cond_a

    .line 2586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 2587
    .local v26, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v39, v0

    const-wide/16 v41, 0x96

    add-long v34, v39, v41

    .line 2588
    .local v34, timeoutTime:J
    cmp-long v39, v26, v34

    if-gez v39, :cond_a

    .line 2589
    sub-long v39, v34, v26

    goto :goto_2

    .line 2592
    .end local v26           #now:J
    .end local v34           #timeoutTime:J
    :cond_a
    const/16 v39, 0x19

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v39, v0

    if-eqz v39, :cond_c

    .line 2594
    if-nez v11, :cond_b

    .line 2595
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 2597
    :cond_b
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2602
    :cond_c
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->keyEventHandle:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->handleBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v29

    .line 2603
    .local v29, ret:I
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->keyEventHandle:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->needToReturnBeforeDispatching()Z

    move-result v39

    if-eqz v39, :cond_d

    .line 2604
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v39, v0

    goto/16 :goto_2

    .line 2612
    :cond_d
    const/16 v39, 0x3

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_23

    .line 2620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_14

    if-nez v11, :cond_14

    .line 2625
    sget-boolean v39, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v39, :cond_e

    .line 2626
    invoke-static {}, Lcom/htc/utils/PerformanceLogUtil;->logHomeKeyTriggered()V

    .line 2631
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 2632
    .local v15, homeWasLongPressed:Z
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2633
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 2634
    if-nez v15, :cond_14

    .line 2636
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v32

    .line 2637
    .local v32, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v32, :cond_f

    .line 2638
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    .end local v32           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_f
    :goto_3
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2647
    if-nez v7, :cond_13

    .line 2651
    const/16 v18, 0x0

    .line 2653
    .local v18, incomingRinging:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v33

    .line 2654
    .local v33, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v33, :cond_10

    .line 2655
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    .line 2661
    .end local v33           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_10
    :goto_4
    if-eqz v18, :cond_11

    .line 2662
    const-string v39, "WindowManager"

    const-string v40, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    .end local v18           #incomingRinging:Z
    :goto_5
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2640
    :catch_0
    move-exception v12

    .line 2641
    .local v12, e:Landroid/os/RemoteException;
    const-string v39, "WindowManager"

    const-string v40, "RemoteException when showing recent apps"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2643
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3

    .line 2657
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v18       #incomingRinging:Z
    :catch_1
    move-exception v13

    .line 2658
    .local v13, ex:Landroid/os/RemoteException;
    const-string v39, "WindowManager"

    const-string v40, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2665
    .end local v13           #ex:Landroid/os/RemoteException;
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcSpeakDownTime:J

    move-wide/from16 v39, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v41

    cmp-long v39, v39, v41

    if-nez v39, :cond_12

    .line 2666
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Ignoring HOME; there\'s a HtcSpeak running. down time: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcSpeakDownTime:J

    move-wide/from16 v41, v0

    invoke-virtual/range {v40 .. v42}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2669
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_5

    .line 2672
    .end local v18           #incomingRinging:Z
    :cond_13
    const-string v39, "WindowManager"

    const-string v40, "Ignoring HOME; event canceled."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2681
    .end local v15           #homeWasLongPressed:Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPressed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_19

    if-eqz v11, :cond_19

    if-nez v28, :cond_19

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileScreenCaptureEnabled()Z

    move-result v39

    if-eqz v39, :cond_19

    .line 2683
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_15

    .line 2684
    const-string v39, "WindowManager"

    const-string v40, "interceptKeyBeforeDispatching(), ready to screen capture, power + home"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_15
    const/4 v4, 0x0

    .line 2689
    .local v4, appName:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Landroid/app/IActivityManager;->getTopActivityName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 2695
    :cond_16
    :goto_6
    if-eqz v4, :cond_17

    .line 2696
    const/16 v39, 0x20

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2697
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_17

    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Screen capture: appName="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_17
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 2702
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v39, "com.htc.action.SCREEN_CAPTURE_BG"

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2703
    if-eqz v4, :cond_18

    const-string v39, "activity_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2704
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2707
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIgnoreScreenOff:Z

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2713
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2690
    .end local v19           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v12

    .line 2691
    .restart local v12       #e:Landroid/os/RemoteException;
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_16

    const-string v39, "WindowManager"

    const-string v40, "Unable to query Activity name"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2720
    .end local v4           #appName:Ljava/lang/String;
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_19
    if-eqz p1, :cond_1b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2721
    .local v5, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_7
    if-eqz v5, :cond_1e

    .line 2722
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v36, v0

    .line 2723
    .local v36, type:I
    const/16 v39, 0x7d4

    move/from16 v0, v36

    move/from16 v1, v39

    if-eq v0, v1, :cond_1a

    const/16 v39, 0x7d9

    move/from16 v0, v36

    move/from16 v1, v39

    if-ne v0, v1, :cond_1c

    .line 2726
    :cond_1a
    const-wide/16 v39, 0x0

    goto/16 :goto_2

    .line 2720
    .end local v5           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v36           #type:I
    :cond_1b
    const/4 v5, 0x0

    goto :goto_7

    .line 2728
    .restart local v5       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v36       #type:I
    :cond_1c
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v37, v0

    .line 2729
    .local v37, typeCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_1e

    .line 2730
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v39, v39, v17

    move/from16 v0, v36

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d

    .line 2732
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2729
    :cond_1d
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 2736
    .end local v17           #i:I
    .end local v36           #type:I
    .end local v37           #typeCount:I
    :cond_1e
    if-eqz v11, :cond_20

    .line 2737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v39, v0

    if-nez v39, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1f

    .line 2739
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v32

    .line 2740
    .restart local v32       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v32, :cond_1f

    .line 2741
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2749
    .end local v32           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    :goto_9
    if-nez v28, :cond_21

    .line 2750
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2772
    :cond_20
    :goto_a
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2743
    :catch_3
    move-exception v12

    .line 2744
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v39, "WindowManager"

    const-string v40, "RemoteException when preloading recent apps"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2746
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_9

    .line 2751
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v39

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    if-eqz v39, :cond_20

    .line 2752
    if-nez v24, :cond_20

    .line 2758
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v18

    .line 2762
    .restart local v18       #incomingRinging:Z
    if-nez v18, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsGuestMode:Z

    move/from16 v39, v0

    if-nez v39, :cond_22

    .line 2763
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v39

    move-object/from16 v0, p0

    move-wide/from16 v1, v39

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome(J)V

    goto :goto_a

    .line 2765
    :cond_22
    const-string v39, "WindowManager"

    const-string v40, "ignore handleLongPressOnHome when hasRingingCall or it\'s in GuestMode"

    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2773
    .end local v5           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v18           #incomingRinging:Z
    :cond_23
    const/16 v39, 0x52

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_24

    .line 2775
    const/4 v9, 0x1

    .line 2777
    .local v9, chordBug:I
    if-eqz v11, :cond_31

    if-nez v28, :cond_31

    .line 2778
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v39, v0

    if-eqz v39, :cond_31

    and-int/lit8 v39, v25, 0x1

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_31

    .line 2779
    new-instance v19, Landroid/content/Intent;

    const-string v39, "android.intent.action.BUG_REPORT"

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2780
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2781
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2799
    .end local v9           #chordBug:I
    .end local v19           #intent:Landroid/content/Intent;
    :cond_24
    const/16 v39, 0x54

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_27

    .line 2800
    if-eqz v11, :cond_26

    .line 2801
    if-nez v28, :cond_25

    .line 2802
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2803
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2812
    :cond_25
    const-wide/16 v39, 0x0

    goto/16 :goto_2

    .line 2806
    :cond_26
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2807
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v39, v0

    if-eqz v39, :cond_25

    .line 2808
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2809
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2813
    :cond_27
    const/16 v39, 0xbb

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_2c

    .line 2817
    if-eqz v7, :cond_28

    .line 2818
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    .line 2821
    const-string v39, "mRecentPressed: cancel"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelRecentAppsAction(Ljava/lang/String;)V

    .line 2823
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2828
    :cond_28
    if-nez v11, :cond_2a

    .line 2829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_29

    .line 2830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    .line 2882
    :cond_29
    :goto_b
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2834
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleRecentApps(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_b

    .line 2838
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendMenuKey()V

    .line 2840
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->decreaseKeyCount(I)V

    goto :goto_b

    .line 2845
    :cond_2a
    if-nez v28, :cond_2b

    .line 2847
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    .line 2848
    sget-boolean v39, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v39, :cond_29

    .line 2849
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "interceptKeyBeforeDispatching(), mHideNavBar="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", mAppSwitchType="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2852
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v39

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    if-eqz v39, :cond_29

    .line 2854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_1

    goto :goto_b

    .line 2867
    :pswitch_2
    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2869
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleRecentApps(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2871
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    goto/16 :goto_b

    .line 2856
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendMenuKey()V

    .line 2857
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    .line 2859
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->decreaseKeyCount(I)V

    .line 2863
    const-string v39, "APP_SWITCH_ACTION_PRESS_RECENTAPPS_HOLD_MENU"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelRecentAppsAction(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2883
    :cond_2c
    const/16 v39, 0xdb

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_31

    .line 2884
    if-eqz v11, :cond_2f

    .line 2885
    if-nez v28, :cond_2e

    .line 2886
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2902
    :cond_2d
    :goto_c
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2887
    :cond_2e
    const/16 v39, 0x1

    move/from16 v0, v28

    move/from16 v1, v39

    if-ne v0, v1, :cond_2d

    .line 2888
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2889
    if-nez v24, :cond_2d

    .line 2890
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_c

    .line 2894
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_30

    .line 2895
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_c

    .line 2897
    :cond_30
    if-nez v24, :cond_2d

    .line 2898
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_c

    .line 2910
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move/from16 v39, v0

    if-eqz v39, :cond_34

    .line 2911
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 2912
    .local v21, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v21 .. v22}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v39

    if-eqz v39, :cond_34

    .line 2913
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2914
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2915
    if-eqz v11, :cond_32

    if-nez v28, :cond_32

    if-nez v24, :cond_32

    .line 2916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v31

    .line 2917
    .local v31, shortcutIntent:Landroid/content/Intent;
    if-eqz v31, :cond_33

    .line 2918
    const/high16 v39, 0x1000

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2920
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2931
    .end local v31           #shortcutIntent:Landroid/content/Intent;
    :cond_32
    :goto_d
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2921
    .restart local v31       #shortcutIntent:Landroid/content/Intent;
    :catch_4
    move-exception v13

    .line 2922
    .local v13, ex:Landroid/content/ActivityNotFoundException;
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v22 .. v22}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2927
    .end local v13           #ex:Landroid/content/ActivityNotFoundException;
    :cond_33
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v22 .. v22}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2937
    .end local v21           #kcm:Landroid/view/KeyCharacterMap;
    .end local v31           #shortcutIntent:Landroid/content/Intent;
    :cond_34
    if-nez v24, :cond_35

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasHWKB()Z

    move-result v39

    if-eqz v39, :cond_35

    .line 2938
    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-static {v0, v1, v11, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->makeFnState(IIZIZ)V

    .line 2942
    :cond_35
    const/16 v20, 0x0

    .line 2943
    .local v20, isLongPress:Z
    and-int/lit16 v0, v14, 0x80

    move/from16 v39, v0

    if-eqz v39, :cond_36

    .line 2944
    const/16 v20, 0x1

    .line 2945
    :cond_36
    const/16 v16, 0x0

    .line 2948
    .local v16, hwKId:I
    and-int/lit16 v0, v14, 0x100

    move/from16 v39, v0

    if-nez v39, :cond_3d

    .line 2949
    const/16 v39, 0xd3

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_38

    .line 2950
    const/16 v16, 0x1

    .line 2955
    :cond_37
    :goto_e
    if-eqz v16, :cond_3d

    .line 2956
    if-nez v11, :cond_3b

    .line 2957
    new-instance v38, Landroid/content/Intent;

    const-string v39, "ACTION_UAK_TRIGGLE"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2958
    .local v38, uakIntent:Landroid/content/Intent;
    const-string v39, "EXTRA_UAK_KEY_TYPE"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2959
    const-string v40, "EXTRA_UAK_KEY_EVENT_LONGPRESS"

    if-eqz v20, :cond_3a

    const/16 v39, 0x1

    :goto_f
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2961
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2951
    .end local v38           #uakIntent:Landroid/content/Intent;
    :cond_38
    const/16 v39, 0xd4

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_39

    .line 2952
    const/16 v16, 0x2

    goto :goto_e

    .line 2953
    :cond_39
    const/16 v39, 0xd5

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_37

    .line 2954
    const/16 v16, 0x3

    goto :goto_e

    .line 2959
    .restart local v38       #uakIntent:Landroid/content/Intent;
    :cond_3a
    const/16 v39, 0x0

    goto :goto_f

    .line 2962
    .end local v38           #uakIntent:Landroid/content/Intent;
    :cond_3b
    if-eqz v20, :cond_3d

    .line 2963
    new-instance v38, Landroid/content/Intent;

    const-string v39, "ACTION_UAK_TRIGGLE"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2964
    .restart local v38       #uakIntent:Landroid/content/Intent;
    const-string v39, "EXTRA_UAK_KEY_TYPE"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2965
    const-string v40, "EXTRA_UAK_KEY_EVENT_LONGPRESS"

    if-eqz v20, :cond_3c

    const/16 v39, 0x1

    :goto_10
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2967
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2965
    :cond_3c
    const/16 v39, 0x0

    goto :goto_10

    .line 2975
    .end local v38           #uakIntent:Landroid/content/Intent;
    :cond_3d
    if-eqz v11, :cond_3e

    if-nez v28, :cond_3e

    if-nez v24, :cond_3e

    const/high16 v39, 0x1

    and-int v39, v39, v25

    if-eqz v39, :cond_3e

    .line 2977
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 2978
    .restart local v21       #kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v21 .. v22}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v39

    if-eqz v39, :cond_3e

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v39, v0

    const v40, -0x70001

    and-int v40, v40, v25

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v31

    .line 2982
    .restart local v31       #shortcutIntent:Landroid/content/Intent;
    if-eqz v31, :cond_3e

    .line 2983
    const/high16 v39, 0x1000

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2985
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2991
    :goto_11
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 2986
    :catch_5
    move-exception v13

    .line 2987
    .restart local v13       #ex:Landroid/content/ActivityNotFoundException;
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v22 .. v22}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 2997
    .end local v13           #ex:Landroid/content/ActivityNotFoundException;
    .end local v21           #kcm:Landroid/view/KeyCharacterMap;
    .end local v31           #shortcutIntent:Landroid/content/Intent;
    :cond_3e
    if-eqz v11, :cond_3f

    if-nez v28, :cond_3f

    if-nez v24, :cond_3f

    .line 2998
    sget-object v39, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2999
    .local v8, category:Ljava/lang/String;
    if-eqz v8, :cond_3f

    .line 3000
    const-string v39, "android.intent.action.MAIN"

    move-object/from16 v0, v39

    invoke-static {v0, v8}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 3001
    .restart local v19       #intent:Landroid/content/Intent;
    const/high16 v39, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3003
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3009
    :goto_12
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 3004
    :catch_6
    move-exception v13

    .line 3005
    .restart local v13       #ex:Landroid/content/ActivityNotFoundException;
    const-string v39, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", category="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 3014
    .end local v8           #category:Ljava/lang/String;
    .end local v13           #ex:Landroid/content/ActivityNotFoundException;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_3f
    if-eqz v11, :cond_41

    if-nez v28, :cond_41

    const/16 v39, 0x3d

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_41

    .line 3015
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v39, v0

    if-nez v39, :cond_42

    if-nez v24, :cond_42

    .line 3016
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v39

    move/from16 v0, v39

    and-int/lit16 v0, v0, -0xc2

    move/from16 v30, v0

    .line 3017
    .local v30, shiftlessModifiers:I
    const/16 v39, 0x2

    move/from16 v0, v30

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v39

    if-nez v39, :cond_40

    const/high16 v39, 0x1

    move/from16 v0, v30

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v39

    if-eqz v39, :cond_42

    .line 3020
    :cond_40
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 3021
    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3022
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 3025
    .end local v30           #shiftlessModifiers:I
    :cond_41
    if-nez v11, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v39, v0

    if-eqz v39, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v39, v0

    and-int v39, v39, v25

    if-nez v39, :cond_42

    .line 3027
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 3028
    if-eqz v24, :cond_44

    const/16 v39, 0x2

    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3033
    :cond_42
    if-eqz v11, :cond_46

    if-nez v28, :cond_46

    const/16 v39, 0xcc

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_43

    const/16 v39, 0x3e

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_46

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x7000

    move/from16 v39, v0

    if-eqz v39, :cond_46

    .line 3037
    :cond_43
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xc1

    move/from16 v39, v0

    if-eqz v39, :cond_45

    const/4 v10, -0x1

    .line 3038
    .local v10, direction:I
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v39, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-interface {v0, v1, v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3039
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 3028
    .end local v10           #direction:I
    :cond_44
    const/16 v39, 0x3

    goto :goto_13

    .line 3037
    :cond_45
    const/4 v10, 0x1

    goto :goto_14

    .line 3041
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_48

    if-nez v11, :cond_48

    const/16 v39, 0xcc

    move/from16 v0, v22

    move/from16 v1, v39

    if-eq v0, v1, :cond_47

    const/16 v39, 0x3e

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_48

    .line 3044
    :cond_47
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3045
    const-wide/16 v39, -0x1

    goto/16 :goto_2

    .line 3049
    :cond_48
    const-wide/16 v39, 0x0

    goto/16 :goto_2

    .line 2830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2854
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 24
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 4441
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    if-nez v20, :cond_1

    const/4 v7, 0x1

    .line 4442
    .local v7, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 4443
    .local v6, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 4445
    .local v13, keyCode:I
    const/high16 v20, 0x100

    and-int v20, v20, p2

    if-eqz v20, :cond_2

    const/4 v11, 0x1

    .line 4451
    .local v11, isInjected:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    const/4 v14, 0x0

    .line 4456
    .local v14, keyguardActive:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 4458
    const/16 v18, 0x0

    .line 5025
    :cond_0
    :goto_3
    return v18

    .line 4441
    .end local v6           #canceled:Z
    .end local v7           #down:Z
    .end local v11           #isInjected:Z
    .end local v13           #keyCode:I
    .end local v14           #keyguardActive:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 4445
    .restart local v6       #canceled:Z
    .restart local v7       #down:Z
    .restart local v13       #keyCode:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 4451
    .restart local v11       #isInjected:Z
    :cond_3
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v14

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v14

    goto :goto_2

    .line 4468
    .restart local v14       #keyguardActive:Z
    :cond_5

    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->performReleaseHapticFeedback(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    const/4 v5, 0x0

    .line 4469
    .local v5, block_vk_mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "htc_block_virtual_key"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4471
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_6

    .line 4472
    const-string v20, "WindowManager"

    const-string v21, "interceptBeforeQueuing, blocks virtual keys by Settings"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4474
    :cond_6
    if-eqz v7, :cond_8

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v20, 0x52

    move/from16 v0, v20

    if-eq v13, v0, :cond_8

    :cond_7
    if-nez v5, :cond_8

    .line 4479
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4481
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_8

    .line 4482
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VirtualKey ActionDown keycode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", performHapticFeedbackLw()"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    :cond_8
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v13, v0, :cond_9

    .line 4489
    or-int/lit8 p2, p2, 0x1

    .line 4491
    :cond_9
    and-int/lit8 v20, p2, 0x3

    if-eqz v20, :cond_b

    const/4 v12, 0x1

    .line 4496
    .local v12, isWakeKey:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventsBlocked:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 4497
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_a

    .line 4498
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Dropping virtual key because window transition in progress. key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 4491
    .end local v12           #isWakeKey:Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_4

    .line 4504
    .restart local v12       #isWakeKey:Z
    :cond_c
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_d

    .line 4505
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "interceptKeyBeforeQueue keycode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " screenIsOn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " keyguardActive="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " policyFlags="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " repeat count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    :cond_d
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_e

    .line 4513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4526
    :cond_e
    const/16 v18, 0x0

    .line 4529
    .local v18, result:I
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->keyEventHandle:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->handleBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v18

    .line 4530
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->keyEventHandle:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->needToReturnBeforeQueueing()Z

    move-result v20

    if-nez v20, :cond_0

    .line 4535
    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    :cond_f
    if-eqz v11, :cond_12

    if-nez v12, :cond_12

    .line 4537
    :cond_10
    const/16 v18, 0x1

    .line 4608
    :cond_11
    :goto_5
    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_3

    .line 5004
    :sswitch_0
    if-eqz v7, :cond_0

    .line 5005
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 5006
    .local v19, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_0

    .line 5008
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 5009
    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 5015
    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_3

    .line 4541
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    const/16 v18, 0x0

    .line 4545
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v10

    .line 4548
    .local v10, isInCall:Z
    if-eqz v7, :cond_11

    if-eqz v12, :cond_11

    .line 4549
    if-eqz v14, :cond_18

    .line 4561
    if-nez p3, :cond_16

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v13, v0, :cond_16

    if-eqz v10, :cond_16

    .line 4565
    or-int/lit8 v18, v18, 0x2

    .line 4575
    :goto_6
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x1c

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x89

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x4a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 4578
    :cond_13
    const/16 v20, 0x1b

    move/from16 v0, v20

    if-eq v13, v0, :cond_14

    const/16 v20, 0xe4

    move/from16 v0, v20

    if-ne v13, v0, :cond_11

    .line 4579
    :cond_14
    or-int/lit8 v18, v18, 0x1

    .line 4581
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_15

    const-string v20, "WindowManager"

    const-string v21, "delay 100ms to wait for screen on"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    :cond_15
    const-wide/16 v20, 0x64

    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 4584
    :catch_0
    move-exception v20

    goto :goto_5

    .line 4567
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    move/from16 v20, v0

    const/16 v22, 0x20

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto :goto_6

    :cond_17
    const/16 v20, 0x0

    goto :goto_7

    .line 4594
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    move/from16 v20, v0

    const/16 v22, 0x20

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    const/16 v20, 0x1

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 4601
    or-int/lit8 v18, v18, 0x2

    goto/16 :goto_5

    .line 4594
    :cond_19
    const/16 v20, 0x0

    goto :goto_8

    .line 4612
    .end local v10           #isInCall:Z
    :sswitch_1
    const/16 v20, 0x19

    move/from16 v0, v20

    if-ne v13, v0, :cond_1c

    .line 4613
    if-eqz v7, :cond_1b

    .line 4614
    if-eqz p3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_1a

    .line 4616
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4617
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 4618
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 4619
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4620
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4639
    :cond_1a
    :goto_9
    if-eqz v7, :cond_0

    .line 4640
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 4641
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_1f

    .line 4643
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 4650
    const-string v20, "WindowManager"

    const-string v21, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4659
    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_3

    .line 4623
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4624
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_9

    .line 4626
    :cond_1c
    const/16 v20, 0x18

    move/from16 v0, v20

    if-ne v13, v0, :cond_1a

    .line 4627
    if-eqz v7, :cond_1d

    .line 4628
    if-eqz p3, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_1a

    .line 4630
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4631
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4632
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_9

    .line 4635
    :cond_1d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4636
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_9

    .line 4662
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1e
    :try_start_3
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_1f

    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_1f

    .line 4666
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 4669
    :catch_1
    move-exception v8

    .line 4670
    .local v8, ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4674
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v20

    if-eqz v20, :cond_0

    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_0

    .line 4677
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_3

    .line 4685
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_2
    and-int/lit8 v18, v18, -0x2

    .line 4686
    if-eqz v7, :cond_2c

    .line 4687
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 4688
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v9, 0x0

    .line 4692
    .local v9, hungUp:Z
    const/16 v16, 0x0

    .line 4693
    .local v16, mSilentByPowerKey:Z
    const/4 v15, 0x0

    .line 4697
    .local v15, mNeedToEndCall:Z
    if-eqz v19, :cond_29

    .line 4710
    :try_start_4
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x18

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_20

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_27

    .line 4712
    :cond_20
    if-eqz p3, :cond_21

    .line 4713
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    .line 4714
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z

    move-result v9

    .line 4727
    :cond_21
    :goto_a
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_22

    if-eqz v9, :cond_22

    .line 4728
    const-string v20, "WindowManager"

    const-string v21, "[ATS][?com.android.internal.policy.impl?][end_call][successful]"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4748
    :cond_22
    :goto_b
    if-eqz p3, :cond_25

    if-eqz v9, :cond_23

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v13, v0, :cond_25

    :cond_23
    if-eqz v9, :cond_24

    if-eqz v9, :cond_24

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-eq v13, v0, :cond_25

    :cond_24
    if-nez v16, :cond_25

    if-eqz v15, :cond_2a

    .line 4753
    :cond_25
    const/16 v16, 0x0

    .line 4754
    const/4 v15, 0x0

    .line 4756
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    goto/16 :goto_3

    .line 4716
    :cond_26
    :try_start_5
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v9

    goto :goto_a

    .line 4720
    :cond_27
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    .line 4721
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z

    move-result v9

    goto :goto_a

    .line 4723
    :cond_28
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v9

    goto :goto_a

    .line 4735
    :catch_2
    move-exception v8

    .line 4736
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 4740
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_29
    const-string v20, "WindowManager"

    const-string v21, "!!! Unable to find ITelephony interface !!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4759
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v20

    if-eqz v20, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isLockScreen()Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 4761
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4762
    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_3

    .line 4766
    :cond_2b
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4771
    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_3

    .line 4778
    .end local v9           #hungUp:Z
    .end local v15           #mNeedToEndCall:Z
    .end local v16           #mSilentByPowerKey:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2c
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v20

    if-nez v20, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 4779
    :cond_2d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4782
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_2e

    .line 4784
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v20

    if-nez v20, :cond_0

    .line 4788
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_0

    .line 4790
    and-int/lit8 v20, v18, -0x3

    or-int/lit8 v18, v20, 0x4

    goto/16 :goto_3

    .line 4798
    :sswitch_3
    and-int/lit8 v18, v18, -0x2

    .line 4799
    if-eqz v7, :cond_40

    .line 4800
    if-eqz p3, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_2f

    .line 4802
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4803
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 4804
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4807
    :cond_2f
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 4808
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v9, 0x0

    .line 4809
    .restart local v9       #hungUp:Z
    const/4 v4, 0x0

    .line 4813
    .local v4, bHandled:Z
    const/16 v16, 0x0

    .line 4814
    .restart local v16       #mSilentByPowerKey:Z
    const/4 v15, 0x0

    .line 4818
    .restart local v15       #mNeedToEndCall:Z
    if-eqz v19, :cond_33

    .line 4820
    :try_start_6
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v20

    if-eqz v20, :cond_39

    .line 4826
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z

    move-result v20

    if-eqz v20, :cond_38

    .line 4827
    const/4 v15, 0x1

    .line 4844
    :cond_30
    :goto_c
    if-eqz v15, :cond_33

    .line 4853
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x18

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_31

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3b

    .line 4855
    :cond_31
    if-eqz p3, :cond_32

    .line 4856
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3a

    .line 4857
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z

    move-result v9

    .line 4870
    :cond_32
    :goto_d
    sget-boolean v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v20, :cond_33

    if-eqz v9, :cond_33

    .line 4871
    const-string v20, "WindowManager"

    const-string v21, "[ATS][?com.android.internal.policy.impl?][end_call][successful]"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4889
    :cond_33
    :goto_e
    if-eqz p3, :cond_36

    if-eqz v9, :cond_34

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v13, v0, :cond_36

    :cond_34
    if-eqz v9, :cond_35

    if-eqz v9, :cond_35

    const/16 v20, 0x1a

    move/from16 v0, v20

    if-eq v13, v0, :cond_36

    :cond_35
    if-nez v16, :cond_36

    if-eqz v15, :cond_3d

    .line 4893
    :cond_36
    const/16 v16, 0x0

    .line 4894
    const/4 v15, 0x0

    .line 4896
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4912
    :goto_f
    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v20, v0

    if-nez v20, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3f

    :cond_37
    const/16 v20, 0x1

    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_3

    .line 4829
    :cond_38
    :try_start_7
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V

    .line 4830
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 4831
    const/16 v16, 0x1

    goto :goto_c

    .line 4835
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_30

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v20

    if-eqz v20, :cond_30

    .line 4840
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v9

    goto/16 :goto_c

    .line 4859
    :cond_3a
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v9

    goto :goto_d

    .line 4863
    :cond_3b
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3c

    .line 4864
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z

    move-result v9

    goto/16 :goto_d

    .line 4866
    :cond_3c
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v9

    goto/16 :goto_d

    .line 4879
    :catch_3
    move-exception v8

    .line 4880
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 4899
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v20

    if-eqz v20, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isLockScreen()Z

    move-result v20

    if-eqz v20, :cond_3e

    .line 4901
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4902
    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_f

    .line 4906
    :cond_3e
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4907
    const/4 v4, 0x0

    .line 4908
    and-int/lit8 v18, v18, -0x2

    goto/16 :goto_f

    .line 4912
    :cond_3f
    const/16 v20, 0x0

    goto/16 :goto_10

    .line 4918
    .end local v4           #bHandled:Z
    .end local v9           #hungUp:Z
    .end local v15           #mNeedToEndCall:Z
    .end local v16           #mSilentByPowerKey:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4920
    :cond_41
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4921
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4931
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPressed:Z

    .line 4932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4934
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_43

    .line 4936
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShouldTurnOffOnKeyUp:Z

    .line 4937
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIgnoreScreenOff:Z

    move/from16 v20, v0

    if-nez v20, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v20, v0

    if-nez v20, :cond_42

    .line 4939
    and-int/lit8 v20, v18, -0x3

    or-int/lit8 v18, v20, 0x4

    .line 4941
    :cond_42
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIgnoreScreenOff:Z

    .line 4944
    :cond_43
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->sendPowerUpBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_3

    .line 4966
    :sswitch_4
    if-eqz v7, :cond_44

    .line 4967
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 4968
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_44

    .line 4970
    :try_start_8
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v20

    if-eqz v20, :cond_0

    .line 4988
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_44
    :goto_11
    :sswitch_5
    and-int/lit8 v20, v18, 0x1

    if-nez v20, :cond_0

    .line 4994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    new-instance v22, Landroid/view/KeyEvent;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v20 .. v22}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 4997
    .local v17, msg:Landroid/os/Message;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4998
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 4975
    .end local v17           #msg:Landroid/os/Message;
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_4
    move-exception v8

    .line 4976
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 5017
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v8

    .line 5018
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v20, "WindowManager"

    const-string v21, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 4608
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .parameter "policyFlags"

    .prologue
    .line 5031
    const/4 v1, 0x0

    .line 5033
    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 5035
    .local v0, isWakeMotion:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 5036
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5038
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()Z

    .line 5044
    :cond_0
    :goto_1
    return v1

    .line 5033
    .end local v0           #isWakeMotion:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5041
    .restart local v0       #isWakeMotion:Z
    :cond_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public interceptPenBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIILandroid/view/MotionEvent;)Z
    .locals 7
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "metaState"
    .parameter "policyFlags"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 6948
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 6949
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptPenBeforeDispatching: win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", metaState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", policyFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6951
    :cond_0
    const/4 v2, 0x0

    .line 6953
    .local v2, result:Z
    if-nez p2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleFirstPenDown(Z)Z

    .line 6957
    if-nez p2, :cond_1

    invoke-virtual {p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 6959
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6960
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6961
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_1

    .line 6962
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6963
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.ACTION_PEN_HW_BTN_CLICKED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6964
    const-string v3, "packageName"

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6965
    const-string v3, "title"

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 6966
    const-string v3, "penWorkingMode"

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenWorkingMode:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6967
    const-string v3, "windowType"

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6968
    const-string v3, "event"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6969
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6970
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6978
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return v4

    :cond_2
    move v3, v4

    .line 6953
    goto :goto_0
.end method

.method intitPenVars()V
    .locals 3

    .prologue
    .line 6877
    const-string v0, "pen.scribble.package"

    const-string v1, "com.htc.mysketcher"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScribblePackageName:Ljava/lang/String;

    .line 6878
    const-string v0, "pen.scribble.toast"

    const-string v1, "pen_tips_cannot_scribble_here"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScribbleMessageName:Ljava/lang/String;

    .line 6879
    const-string v0, "pen.scribble.interval"

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureInterval:J

    .line 6880
    const-string v0, "pen.scribble.timeout"

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstPenDownTimeout:J

    .line 6881
    return-void
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1258
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isInCall()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 6303
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6304
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 6305
    const-string v3, "WindowManager"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    :goto_0
    return v2

    .line 6309
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 6310
    :catch_0
    move-exception v0

    .line 6311
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ITelephony.isOffhhook threw RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 5258
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 5263
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isMediaKey(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 6341
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x56

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    const/16 v0, 0x59

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 6351
    :cond_0
    const/4 v0, 0x1

    .line 6353
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 4335
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4336
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 4337
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    const/4 v1, 0x0

    .line 4340
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    .line 5228
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    .line 5233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isScreenSaverEnabled()Z
    .locals 1

    .prologue
    .line 5679
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPluggedIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardIsShowing()Z
    .locals 1

    .prologue
    .line 6570
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3219
    :goto_0
    return-void

    .line 3181
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 3208
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3216
    :cond_2
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 3211
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 26
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 3634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 3947
    :cond_0
    :goto_0
    return-void

    .line 3637
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    const/16 v24, 0x1

    .line 3639
    .local v24, needsToOffsetInputMethodTarget:Z
    :goto_1
    if-eqz v24, :cond_2

    .line 3643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3646
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3647
    .local v4, fl:I
    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3648
    .local v5, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v25

    .line 3650
    .local v25, sysUiFl:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3651
    .local v8, pf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3652
    .local v9, df:Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 3653
    .local v10, cf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3656
    .local v11, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v23, 0x1

    .line 3660
    .local v23, hasNavBar:Z
    :goto_2
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_8

    .line 3661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3662
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3663
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3664
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3666
    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyboardFly()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->getKeyboardFlyHeight()I

    move-result v22

    .line 3671
    .local v22, fly:I
    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3677
    .end local v22           #fly:I
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3919
    :goto_4
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_3

    .line 3920
    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3921
    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3926
    :cond_3
    const/high16 v2, 0x200

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    .line 3927
    const/4 v2, 0x0

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3939
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3943
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3944
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3945
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    .line 3637
    .end local v4           #fl:I
    .end local v5           #sim:I
    .end local v8           #pf:Landroid/graphics/Rect;
    .end local v9           #df:Landroid/graphics/Rect;
    .end local v10           #cf:Landroid/graphics/Rect;
    .end local v11           #vf:Landroid/graphics/Rect;
    .end local v23           #hasNavBar:Z
    .end local v24           #needsToOffsetInputMethodTarget:Z
    .end local v25           #sysUiFl:I
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 3656
    .restart local v4       #fl:I
    .restart local v5       #sim:I
    .restart local v8       #pf:Landroid/graphics/Rect;
    .restart local v9       #df:Landroid/graphics/Rect;
    .restart local v10       #cf:Landroid/graphics/Rect;
    .restart local v11       #vf:Landroid/graphics/Rect;
    .restart local v24       #needsToOffsetInputMethodTarget:Z
    .restart local v25       #sysUiFl:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 3673
    .restart local v23       #hasNavBar:Z
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 3679
    :cond_8
    and-int/lit16 v15, v5, 0xf0

    .line 3681
    .local v15, adjust:I
    const v2, 0x10500

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_14

    and-int/lit8 v2, v25, 0x4

    if-nez v2, :cond_14

    .line 3691
    if-eqz p3, :cond_9

    .line 3694
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 3696
    :cond_9
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_e

    .line 3705
    :cond_a
    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_5
    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3707
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_6
    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3710
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_7
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3743
    :goto_8
    const/16 v2, 0x10

    if-eq v15, v2, :cond_12

    .line 3744
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3746
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 3754
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3755
    const/16 v2, 0x30

    if-eq v15, v2, :cond_13

    .line 3756
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3757
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3758
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3759
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3705
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_5

    .line 3707
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_6

    .line 3710
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_7

    .line 3719
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_f

    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_10

    :cond_f
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->UNRESTRICTED_WALLPAPER:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_11

    .line 3733
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3734
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3736
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 3738
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3739
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3740
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 3749
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3750
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3751
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3752
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    .line 3761
    :cond_13
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3764
    :cond_14
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_15

    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_24

    .line 3771
    :cond_15
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_1a

    .line 3773
    :cond_16
    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3774
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3775
    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_b
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3778
    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_c
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3842
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3843
    const/16 v2, 0x30

    if-eq v15, v2, :cond_23

    .line 3844
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3845
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3846
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3847
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3773
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_a

    .line 3775
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_b

    .line 3778
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_c

    .line 3786
    :cond_1a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_1b

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_1c

    .line 3789
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3790
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3791
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3792
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_d

    .line 3798
    :cond_1c
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_1d

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_1e

    :cond_1d
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1e

    .line 3802
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3804
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 3806
    :cond_1e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_1f

    .line 3808
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3809
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3810
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3811
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 3813
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_20

    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_20

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_20

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_21

    :cond_20
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->UNRESTRICTED_WALLPAPER:Z

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_22

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_22

    .line 3830
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3831
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3832
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3833
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 3836
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3838
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 3849
    :cond_23
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3851
    :cond_24
    if-eqz p3, :cond_25

    .line 3856
    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v14, v4

    move-object/from16 v16, p3

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3859
    :cond_25
    const-string v2, "Keyguard"

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3860
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3861
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3862
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3863
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3866
    :cond_26
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_27

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_28

    .line 3868
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3869
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3870
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3872
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3881
    :cond_28
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_29

    .line 3886
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3887
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3888
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3889
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3892
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3893
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3894
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3895
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3896
    const/16 v2, 0x10

    if-eq v15, v2, :cond_2a

    .line 3897
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3898
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 3899
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 3907
    :goto_e
    const/16 v2, 0x30

    if-eq v15, v2, :cond_2b

    .line 3908
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3909
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3910
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3902
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3903
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 3904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3905
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_e

    .line 3913
    :cond_2b
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method

.method public lockNow()V
    .locals 3

    .prologue
    .line 5731
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5732
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5733
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5737
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5738
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->forcePasswordTimeout()V

    .line 5741
    :cond_0
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 905
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 906
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needSensorRunningLp, mCurrentAppOrientation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    if-eqz v2, :cond_2

    .line 910
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 911
    const-string v1, "WindowManager"

    const-string v2, "needSensorRunningLp(), mShowingShutdownAnim is true, so return false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_1
    :goto_0
    return v0

    .line 917
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 923
    goto :goto_0

    .line 925
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v1, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_7

    :cond_6
    move v0, v1

    .line 931
    goto :goto_0

    .line 933
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v2, v1, :cond_1

    .line 948
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    .line 950
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 951
    const-string v1, "WindowManager"

    const-string v2, "needSensorRunningLp, SCREEN_ORIENTATION_NOSENSOR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :cond_8
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-ne v2, v1, :cond_9

    .line 957
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 958
    const-string v1, "WindowManager"

    const-string v2, "needSensorRunningLp, SCREEN_ORIENTATION_PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    move v0, v1

    .line 964
    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 6
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4256
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    .line 4280
    :cond_0
    :goto_0
    return-void

    .line 4259
    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    .line 4260
    .local v0, newLidState:I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    .line 4264
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 4265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 4266
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 4268
    if-eqz p3, :cond_5

    .line 4269
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4270
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v4, 0x1a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto :goto_0

    .end local v0           #newLidState:I
    :cond_2
    move v0, v2

    .line 4259
    goto :goto_1

    .restart local v0       #newLidState:I
    :cond_3
    move v1, v2

    .line 4270
    goto :goto_2

    .line 4273
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2, v1}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0

    .line 4276
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    .line 4277
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v3, v4, v2, v2}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0
.end method

.method public notifyPWMWhenCameraShortcut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4221
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 4222
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyPWMWhenCameraShortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutLaunchCamera:Z

    .line 4224
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    .line 4225
    return-void
.end method

.method onScreenShotMessageSend(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 7
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5954
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 5956
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5992
    :cond_0
    :goto_1
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_1
    move v0, v2

    .line 5954
    goto :goto_0

    .line 5959
    .restart local v0       #hapticsDisabled:Z
    :cond_2
    const/4 v1, 0x0

    .line 5960
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 5962
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 5981
    :goto_2
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    .line 5982
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performHapticFeedbackLw: effectId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pattern[] len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5985
    :cond_3
    array-length v4, v1

    if-ne v4, v3, :cond_4

    .line 5987
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v5, v1, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_3
    move v2, v3

    .line 5992
    goto :goto_1

    .line 5965
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 5966
    goto :goto_2

    .line 5968
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 5969
    goto :goto_2

    .line 5971
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 5972
    goto :goto_2

    .line 5974
    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 5975
    goto :goto_2

    .line 5990
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_3

    .line 5960
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x7

    .line 2378
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2424
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 2380
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 2384
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2388
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2391
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 2395
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2399
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2403
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2408
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2413
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2418
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 2421
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2378
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_5
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1963
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 2357
    if-eqz p2, :cond_0

    .line 2358
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2359
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2361
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 2429
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2430
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2431
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2432
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2433
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2434
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 5313
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5314
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 5315
    .local v1, sensorRotation:I
    if-gez v1, :cond_0

    .line 5316
    move v1, p2

    .line 5321
    :cond_0
    const/4 v0, -0x1

    .line 5325
    .local v0, preferredRotation:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    if-eqz v3, :cond_2

    .line 5326
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 5327
    const-string v3, "WindowManager"

    const-string v4, "rotationForOrientationLw, return ROTATION_0 due to mShowingShutdownAnim"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5328
    :cond_1
    monitor-exit v5

    move p2, v2

    .line 5463
    .end local p2
    :goto_0
    return p2

    .line 5333
    .restart local p2
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_3

    .line 5337
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 5408
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 5460
    :pswitch_0
    if-ltz v0, :cond_20

    .line 5461
    monitor-exit v5

    move p2, v0

    goto :goto_0

    .line 5339
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_4

    .line 5341
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    goto :goto_1

    .line 5344
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcMode:Z

    if-eqz v3, :cond_6

    .line 5345
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_5

    .line 5346
    const-string v3, "WindowManager"

    const-string v4, "HTC mode enabled, so preferredRotation=1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 5350
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorMode:Z

    if-eqz v3, :cond_8

    .line 5351
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    .line 5352
    const-string v3, "WindowManager"

    const-string v4, "Mirror mode enabled, so preferredRotation=1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5353
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 5356
    :cond_8
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v7, :cond_b

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_b

    .line 5361
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_a

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_2

    .line 5363
    :cond_b
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_c

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_c

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_f

    :cond_c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_f

    .line 5370
    :cond_d
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_e

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_e
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_3

    .line 5372
    :cond_f
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_10

    if-eq p1, v7, :cond_11

    const/4 v3, -0x1

    if-eq p1, v3, :cond_11

    :cond_10
    if-eq p1, v8, :cond_11

    if-eq p1, v9, :cond_11

    const/4 v3, 0x6

    if-eq p1, v3, :cond_11

    const/4 v3, 0x7

    if-ne p1, v3, :cond_16

    .line 5381
    :cond_11
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_12

    .line 5385
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110016

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v4

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 5388
    :cond_12
    if-ne v1, v7, :cond_13

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_13

    if-ne p1, v9, :cond_15

    .line 5391
    :cond_13
    move v0, v1

    goto/16 :goto_1

    :cond_14
    move v3, v2

    .line 5385
    goto :goto_4

    .line 5393
    :cond_15
    move v0, p2

    goto/16 :goto_1

    .line 5395
    :cond_16
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_17

    const/4 v3, 0x5

    if-eq p1, v3, :cond_17

    .line 5401
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    goto/16 :goto_1

    .line 5405
    :cond_17
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 5411
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5412
    monitor-exit v5

    move p2, v0

    goto/16 :goto_0

    .line 5414
    :cond_18
    iget p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local p2
    monitor-exit v5

    goto/16 :goto_0

    .line 5465
    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5418
    .restart local v0       #preferredRotation:I
    .restart local v1       #sensorRotation:I
    .restart local p2
    :pswitch_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5419
    monitor-exit v5

    move p2, v0

    goto/16 :goto_0

    .line 5421
    :cond_19
    iget p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local p2
    monitor-exit v5

    goto/16 :goto_0

    .line 5425
    .restart local p2
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5426
    monitor-exit v5

    move p2, v0

    goto/16 :goto_0

    .line 5428
    :cond_1a
    iget p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local p2
    monitor-exit v5

    goto/16 :goto_0

    .line 5432
    .restart local p2
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5433
    monitor-exit v5

    move p2, v0

    goto/16 :goto_0

    .line 5435
    :cond_1b
    iget p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local p2
    monitor-exit v5

    goto/16 :goto_0

    .line 5439
    .restart local p2
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5440
    monitor-exit v5

    move p2, v0

    goto/16 :goto_0

    .line 5442
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5443
    monitor-exit v5

    goto/16 :goto_0

    .line 5445
    :cond_1d
    iget p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local p2
    monitor-exit v5

    goto/16 :goto_0

    .line 5449
    .restart local p2
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5450
    monitor-exit v5

    move p2, v0

    goto/16 :goto_0

    .line 5452
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5453
    monitor-exit v5

    goto/16 :goto_0

    .line 5455
    :cond_1f
    iget p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local p2
    monitor-exit v5

    goto/16 :goto_0

    .line 5463
    .restart local p2
    :cond_20
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, v2

    goto/16 :goto_0

    .line 5408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    .line 5470
    packed-switch p1, :pswitch_data_0

    .line 5482
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5474
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 5479
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 5470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenOnStartedLw()V
    .locals 2

    .prologue
    .line 5998
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5999
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 6000
    monitor-exit v1

    .line 6001
    return-void

    .line 6000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public screenOnStoppedLw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6004
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6005
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6006
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6007
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 6010
    .end local v0           #curTime:J
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6013
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 6014
    monitor-exit v3

    .line 6016
    :cond_1
    return-void

    .line 6014
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public screenTurnedOff(I)V
    .locals 3
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 5135
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->resetMetaState()Z

    .line 5139
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    .line 5142
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5143
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5144
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5147
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5150
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5151
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 5153
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 5154
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenTurnedOff with reason OFF_BECAUSE_OF_USER_WITH_DISMISS_KEYGUARD, win: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5162
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5164
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5165
    return-void

    .line 5146
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5157
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    goto :goto_0

    .line 5164
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    const/4 v1, 0x1

    .line 5169
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5175
    if-eqz p1, :cond_1

    .line 5176
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5178
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5181
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 5219
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5220
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5223
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5224
    return-void

    .line 5211
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_2

    .line 5213
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 5215
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5216
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5217
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5223
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 5179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .parameter "win"
    .parameter "transit"

    .prologue
    const/16 v4, 0x2004

    const/16 v3, 0x2002

    const/16 v2, 0x1003

    const/16 v1, 0x1001

    .line 2444
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_3

    .line 2445
    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_1

    .line 2446
    :cond_0
    const v0, 0x10a001b

    .line 2473
    :goto_0
    return v0

    .line 2447
    :cond_1
    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_b

    .line 2448
    :cond_2
    const v0, 0x10a001a

    goto :goto_0

    .line 2450
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_b

    .line 2452
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_7

    .line 2453
    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_5

    .line 2454
    :cond_4
    const v0, 0x10a0015

    goto :goto_0

    .line 2455
    :cond_5
    if-eq p2, v1, :cond_6

    if-ne p2, v2, :cond_b

    .line 2456
    :cond_6
    const v0, 0x10a0014

    goto :goto_0

    .line 2459
    :cond_7
    if-eq p2, v3, :cond_8

    if-ne p2, v4, :cond_9

    .line 2460
    :cond_8
    const v0, 0x10a0019

    goto :goto_0

    .line 2461
    :cond_9
    if-eq p2, v1, :cond_a

    if-ne p2, v2, :cond_b

    .line 2462
    :cond_a
    const v0, 0x10a0018

    goto :goto_0

    .line 2465
    :cond_b
    const/4 v0, 0x5

    if-ne p2, v0, :cond_c

    .line 2466
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2469
    const v0, 0x10a0011

    goto :goto_0

    .line 2473
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5286
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5287
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5291
    return-void
.end method

.method sendEvent(III)V
    .locals 6
    .parameter "code"
    .parameter "action"
    .parameter "flags"

    .prologue
    .line 6734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(IIIJ)V

    .line 6735
    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 14
    .parameter "code"
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 6738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6739
    .local v2, now:J
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    .line 6740
    .local v8, repeatCount:I
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v4, p3, 0x8

    or-int/lit8 v12, v4, 0x40

    const/16 v13, 0x101

    move-wide/from16 v4, p4

    move/from16 v6, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 6748
    .local v1, ev:Landroid/view/KeyEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6754
    :goto_1
    return-void

    .line 6739
    .end local v1           #ev:Landroid/view/KeyEvent;
    .end local v8           #repeatCount:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 6750
    .restart local v1       #ev:Landroid/view/KeyEvent;
    .restart local v8       #repeatCount:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 3566
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 3574
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 3575
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 3576
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 3577
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 3608
    .end local p8
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3610
    return-void

    .line 3585
    .restart local p7
    .restart local p8
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    .line 3586
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3602
    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p8

    .end local p8
    :cond_3
    invoke-virtual {p7, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3603
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3594
    .restart local p8
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3595
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 3596
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 3597
    :cond_5
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 3598
    :cond_6
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 3599
    :cond_7
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 5945
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5946
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 5947
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 5948
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5950
    :cond_0
    monitor-exit v1

    .line 5951
    return-void

    .line 5950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .parameter "plugged"

    .prologue
    const/4 v2, 0x1

    .line 4283
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_1

    .line 4284
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4285
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 4286
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    .line 4287
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    .line 4289
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 4290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4291
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4292
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4293
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4295
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setIdleScreen(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 6697
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setIdleScreen(Landroid/content/ComponentName;)V

    .line 6698
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;II)V
    .locals 19
    .parameter "display"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1563
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1566
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_5

    .line 1567
    move/from16 v7, p3

    .line 1568
    .local v7, shortSize:I
    move/from16 v4, p2

    .line 1569
    .local v4, longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1570
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1571
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1573
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1574
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1594
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    .line 1595
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    .line 1597
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1601
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1605
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1611
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 1624
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    aget v9, v9, v10

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    aget v9, v9, v10

    if-eqz v9, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    aget v13, v13, v14

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1631
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    if-eqz v9, :cond_1

    .line 1633
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v13, v13, v14

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1638
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    aget v9, v9, v10

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    aget v9, v9, v10

    if-eqz v9, :cond_2

    .line 1640
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move/from16 v18, v0

    aget v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 1650
    :cond_2
    mul-int/lit16 v9, v7, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v8, v9, v10

    .line 1654
    .local v8, shortSizeDp:I
    const/16 v9, 0x258

    if-ge v8, v9, :cond_7

    .line 1656
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1657
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1668
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v9, :cond_a

    .line 1669
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110034

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1675
    const-string v9, "qemu.hw.mainkeys"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1677
    .local v6, navBarOverride:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1678
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1685
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v9, :cond_c

    .line 1689
    mul-int/lit16 v9, v4, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v9, v10

    .line 1692
    .local v5, longSizeDp:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v3, v9, v10

    .line 1695
    .local v3, barHeightDp:I
    sub-int v9, v8, v3

    mul-int/lit8 v9, v9, 0x10

    div-int v2, v9, v5

    .line 1700
    .local v2, aspect:I
    const/16 v9, 0x9

    if-ge v2, v9, :cond_b

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 1709
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :goto_4
    const-string v9, "portrait"

    const-string v10, "persist.demo.hdmirotation"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1710
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 1714
    :goto_5
    return-void

    .line 1576
    .end local v8           #shortSizeDp:I
    :cond_4
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1577
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 1580
    .end local v4           #longSize:I
    .end local v7           #shortSize:I
    :cond_5
    move/from16 v7, p2

    .line 1581
    .restart local v7       #shortSize:I
    move/from16 v4, p3

    .line 1582
    .restart local v4       #longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1583
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1584
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1586
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1587
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1589
    :cond_6
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1590
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1658
    .restart local v8       #shortSizeDp:I
    :cond_7
    const/16 v9, 0x2d0

    if-ge v8, v9, :cond_8

    .line 1660
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1661
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_1

    .line 1664
    :cond_8
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1665
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_1

    .line 1679
    .restart local v6       #navBarOverride:Ljava/lang/String;
    :cond_9
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 1682
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 1700
    .restart local v2       #aspect:I
    .restart local v3       #barHeightDp:I
    .restart local v5       #longSizeDp:I
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1701
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v9, :cond_d

    .line 1704
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 1706
    :cond_d
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 1712
    :cond_e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto/16 :goto_5
.end method

.method public setKeyEventsBlocked(Z)V
    .locals 0
    .parameter "blocked"

    .prologue
    .line 6577
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventsBlocked:Z

    .line 6578
    return-void
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "ime"
    .parameter "target"

    .prologue
    .line 6105
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6106
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6107
    return-void
.end method

.method public setLockScreenShowImmediately(Z)V
    .locals 3
    .parameter "redraw"

    .prologue
    .line 6593
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 6594
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockScreenShowImmediately = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6595
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setNeedRedraw(Z)V

    .line 6597
    :cond_0
    return-void
.end method

.method public setNavigationBarVisibility(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 6826
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALWAYS_SHOW_NAV_BAR:Z

    if-eqz v1, :cond_1

    .line 6837
    :cond_0
    :goto_0
    return-void

    .line 6830
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 6832
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    .line 6833
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6834
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.UPDATE_NAV_BAR_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6835
    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6836
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setPenWorkingMode(I)V
    .locals 3
    .parameter "penWorkingMode"

    .prologue
    .line 6872
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPenWorkingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenWorkingMode:I

    .line 6874
    return-void
.end method

.method setPowerLongPress(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5488
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 5489
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .parameter "safeMode"

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 5521
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5524
    return-void

    .line 5521
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setShowKeyguard(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 6602
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 6603
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowKeyguard("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6604
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setNeedToShowKeyguard(Z)V

    .line 6606
    :cond_0
    return-void
.end method

.method public setSkipCamera(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 4228
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 4229
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkeepCamera to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    .line 4231
    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 3
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    .line 5502
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5505
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 5506
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5509
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5517
    :goto_0
    return-void

    .line 5513
    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 5576
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 5621
    :goto_0
    return-void

    .line 5577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 4

    .prologue
    .line 1234
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    if-eqz v1, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_2

    .line 1237
    const-string v1, "WindowManager"

    const-string v2, "showGlobalActionsDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcPWMExtention:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->logKeyCodeHandle:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->uploadKeyEvent()V

    .line 1245
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    if-nez v1, :cond_3

    .line 1246
    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .line 1248
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1249
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->showDialog(ZZ)V

    .line 1250
    if-eqz v0, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    goto :goto_0
.end method

.method public showIdleScreen()V
    .locals 1

    .prologue
    .line 6707
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showIdleScreen()V

    .line 6708
    return-void
.end method

.method public showKeyguardWindow()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4210
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    .line 4211
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 4212
    const-string v2, "KeyguardViewMediator"

    const-string v3, "show Keyguard Window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4214
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableSkipCamera:Z

    .line 4217
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public showKeyguardWithAnimation(Z)V
    .locals 3
    .parameter "showLockScreen"

    .prologue
    .line 6611
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 6612
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showKeyguardWithAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6613
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setNeedToShowKeyguardAnimation(Z)V

    .line 6615
    :cond_0
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 2
    .parameter "behavior"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1366
    return-void
.end method

.method startDockOrHome()V
    .locals 3

    .prologue
    .line 5870
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5871
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 5873
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5879
    :goto_0
    return-void

    .line 5875
    :catch_0
    move-exception v1

    .line 5878
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startScreenSaver()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5685
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5686
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenSaverEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5687
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 5688
    .local v0, dm:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5700
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :goto_0
    return v1

    .line 5693
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5694
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 5699
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5695
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v3

    .line 5699
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopScreenSaver()V
    .locals 3

    .prologue
    .line 5705
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5706
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 5707
    .local v0, dm:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5716
    :goto_0
    return-void

    .line 5712
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5715
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5713
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 2076
    packed-switch p1, :pswitch_data_0

    .line 2087
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2079
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2081
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 2083
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 2085
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2076
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 5567
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5568
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 5569
    monitor-exit v1

    .line 5570
    return-void

    .line 5569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 5540
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 5542
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 5546
    :cond_0
    const-string v0, "dev.silent_reboot"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 5549
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemReady(), mShowingShutdownAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    .line 5554
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5555
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 5557
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5562
    monitor-exit v1

    .line 5563
    return-void

    .line 5562
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateOrientationListenerLp()V
    .locals 4

    .prologue
    .line 978
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen status, mScreenOnEarly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SensorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_2
    const/4 v0, 0x1

    .line 994
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_4

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 996
    const/4 v0, 0x0

    .line 998
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_4

    .line 999
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 1003
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "Enabling listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1010
    :cond_4
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1015
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    const-string v2, "Disabling listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5778
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5782
    :goto_0
    return-void

    .line 5779
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    .line 5787
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5791
    :goto_0
    return-void

    .line 5788
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 15

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1717
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1718
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 1719
    .local v5, updateRotation:Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1720
    :try_start_0
    const-string v11, "end_button_behavior"

    const/4 v13, 0x2

    invoke-static {v4, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1723
    const-string v11, "incall_power_button_behavior"

    const/4 v13, 0x1

    invoke-static {v4, v11, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1729
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleted:Z

    if-eqz v11, :cond_e

    .line 1730
    const-string v13, "HIDE_NAV_BAR"

    sget-boolean v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWVGA:Z

    if-eqz v11, :cond_c

    move v11, v9

    :goto_0
    invoke-static {v4, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1731
    .local v1, hideNavBar:I
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I

    if-eq v1, v11, :cond_0

    .line 1732
    if-ne v1, v9, :cond_d

    .line 1733
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setNavigationBarVisibility(Z)V

    .line 1734
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->onNavigationBarChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1746
    .end local v1           #hideNavBar:I
    :cond_0
    :goto_2
    :try_start_2
    const-string v13, "APP_SWITCH_KEY_BEHAVIOR"

    sget-boolean v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWVGA:Z

    if-eqz v11, :cond_10

    move v11, v10

    :goto_3
    invoke-static {v4, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    .line 1748
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v11, :cond_1

    .line 1749
    const-string v11, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSettings, mHideNavBar= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", APP_SWITCH_KEY_BEHAVIOR= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_1
    const-string v11, "user_rotation"

    const/4 v13, 0x0

    invoke-static {v4, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1756
    .local v6, userRotation:I
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v11, v6, :cond_2

    .line 1757
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1758
    const/4 v5, 0x1

    .line 1760
    :cond_2
    const-string v11, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v4, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_11

    move v7, v8

    .line 1768
    .local v7, userRotationMode:I
    :goto_4
    sget-boolean v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v11, :cond_3

    if-ne v7, v9, :cond_3

    .line 1771
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation()I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1772
    const-string v11, "user_rotation"

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-static {v4, v11, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1775
    :cond_3
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v11, v7, :cond_4

    .line 1776
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1777
    const/4 v5, 0x1

    .line 1778
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1781
    :cond_4
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_6

    .line 1782
    const-string v11, "pointer_location"

    const/4 v13, 0x0

    invoke-static {v4, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1784
    .local v3, pointerLocation:I
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v11, v3, :cond_6

    .line 1785
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1786
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    move v10, v9

    :cond_5
    invoke-virtual {v11, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1791
    .end local v3           #pointerLocation:I
    :cond_6
    const-string v10, "screen_off_timeout"

    const/4 v11, 0x0

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1793
    const-string v10, "default_input_method"

    invoke-static {v4, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1795
    .local v2, imId:Ljava/lang/String;
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_12

    move v0, v9

    .line 1796
    .local v0, hasSoftInput:Z
    :goto_5
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v10, v0, :cond_7

    .line 1797
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1798
    const/4 v5, 0x1

    .line 1802
    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110038

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    .line 1805
    const-string v10, "screensaver_enabled"

    const/4 v11, 0x1

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_13

    move v10, v9

    :goto_6
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    .line 1812
    const-string v10, "screen_off_timeout"

    const/4 v11, 0x0

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 1814
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    if-lez v10, :cond_8

    .line 1817
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    add-int/lit16 v10, v10, -0x1388

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 1823
    :cond_8
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_a

    .line 1824
    const-string v10, "launch_dock_screen"

    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_ROSIE_AS_HOME:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_HTC_DOCKSCREEN_AS_HOME:I

    if-ne v10, v11, :cond_9

    move v8, v9

    :cond_9
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcDockScreenAsHome:Z

    .line 1829
    :cond_a
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1830
    if-eqz v5, :cond_b

    .line 1831
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1833
    :cond_b
    return-void

    .end local v0           #hasSoftInput:Z
    .end local v2           #imId:Ljava/lang/String;
    .end local v6           #userRotation:I
    .end local v7           #userRotationMode:I
    :cond_c
    move v11, v8

    .line 1730
    goto/16 :goto_0

    .line 1736
    .restart local v1       #hideNavBar:I
    :cond_d
    const/4 v11, 0x0

    :try_start_3
    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I

    goto/16 :goto_1

    .line 1829
    .end local v1           #hideNavBar:I
    :catchall_0
    move-exception v8

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 1744
    :cond_e
    :try_start_4
    const-string v13, "HIDE_NAV_BAR"

    sget-boolean v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWVGA:Z

    if-eqz v11, :cond_f

    move v11, v9

    :goto_7
    invoke-static {v4, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavBar:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_f
    move v11, v8

    goto :goto_7

    :cond_10
    move v11, v8

    .line 1746
    goto/16 :goto_3

    .restart local v6       #userRotation:I
    :cond_11
    move v7, v9

    .line 1760
    goto/16 :goto_4

    .restart local v2       #imId:Ljava/lang/String;
    .restart local v7       #userRotationMode:I
    :cond_12
    move v0, v8

    .line 1795
    goto :goto_5

    .restart local v0       #hasSoftInput:Z
    :cond_13
    move v10, v8

    .line 1805
    goto :goto_6

    .line 1740
    .end local v0           #hasSoftInput:Z
    .end local v2           #imId:Ljava/lang/String;
    .end local v6           #userRotation:I
    .end local v7           #userRotationMode:I
    .restart local v1       #hideNavBar:I
    :catch_0
    move-exception v11

    goto/16 :goto_2
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 5648
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 5649
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 5651
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5652
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5657
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetLastUserActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetLastUserActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5661
    monitor-exit v1

    .line 5662
    return-void

    .line 5661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 5
    .parameter "type"

    .prologue
    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 2006
    const/4 v4, 0x1

    if-lt p1, v4, :cond_0

    const/16 v4, 0x63

    if-gt p1, v4, :cond_0

    .line 2071
    :goto_0
    :sswitch_0
    return v0

    .line 2009
    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->getMiuiViewLayer(II)I

    move-result v0

    goto :goto_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2011
    :sswitch_1
    const/16 v0, 0xf

    goto :goto_0

    .line 2013
    :sswitch_2
    const/16 v0, 0x10

    goto :goto_0

    .line 2015
    :sswitch_3
    const/16 v0, 0xe

    goto :goto_0

    .line 2017
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 2019
    :sswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 2021
    goto :goto_0

    :sswitch_7
    move v0, v2

    .line 2023
    goto :goto_0

    .line 2025
    :sswitch_8
    const/16 v0, 0xc

    goto :goto_0

    .line 2027
    :sswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 2029
    :sswitch_a
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_b
    move v0, v3

    .line 2031
    goto :goto_0

    .line 2033
    :sswitch_c
    const/16 v0, 0xa

    goto :goto_0

    .line 2035
    :sswitch_d
    const/16 v0, 0x11

    goto :goto_0

    .line 2037
    :sswitch_e
    const/16 v0, 0x12

    goto :goto_0

    .line 2039
    :sswitch_f
    const/16 v0, 0x17

    goto :goto_0

    .line 2041
    :sswitch_10
    const/4 v0, 0x7

    goto :goto_0

    .line 2043
    :sswitch_11
    const/4 v0, 0x6

    goto :goto_0

    .line 2047
    :sswitch_12
    const/16 v0, 0x16

    goto :goto_0

    .line 2049
    :sswitch_13
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_14
    move v0, v3

    .line 2051
    goto :goto_0

    .line 2053
    :sswitch_15
    const/16 v0, 0x14

    goto :goto_0

    .line 2055
    :sswitch_16
    const/16 v0, 0x18

    goto :goto_0

    .line 2057
    :sswitch_17
    const/16 v0, 0x1a

    goto :goto_0

    .line 2059
    :sswitch_18
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_19
    move v0, v1

    .line 2062
    goto :goto_0

    :sswitch_1a
    move v0, v2

    .line 2066
    goto :goto_0

    .line 2009
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_19
        0x66 -> :sswitch_1a
        0x67 -> :sswitch_1a
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_9
        0x7d4 -> :sswitch_7
        0x7d5 -> :sswitch_11
        0x7d6 -> :sswitch_e
        0x7d7 -> :sswitch_10
        0x7d8 -> :sswitch_4
        0x7d9 -> :sswitch_8
        0x7da -> :sswitch_a
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_c
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_2
        0x7df -> :sswitch_f
        0x7e0 -> :sswitch_12
        0x7e1 -> :sswitch_3
        0x7e2 -> :sswitch_13
        0x7e3 -> :sswitch_14
        0x7e4 -> :sswitch_d
        0x7e5 -> :sswitch_16
        0x7e6 -> :sswitch_17
        0x7e7 -> :sswitch_18
        0x7e8 -> :sswitch_15
    .end sparse-switch
.end method
