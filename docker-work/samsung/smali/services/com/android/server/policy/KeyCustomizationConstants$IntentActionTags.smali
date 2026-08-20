.class public Lcom/android/server/policy/KeyCustomizationConstants$IntentActionTags;
.super Ljava/lang/Object;
.source "KeyCustomizationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentActionTags"
.end annotation


# static fields
.field public static final ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

.field public static final AOD:Ljava/lang/String; = "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

.field public static final CREATE_SECURE_FOLDER:Ljava/lang/String; = "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

.field public static final CRITICAL_COMMUNICATION_CONTROL_BUTTON:Ljava/lang/String; = "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

.field public static final CRITICAL_COMMUNICATION_SOS_BUTTON:Ljava/lang/String; = "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

.field public static final DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.DOUBLE_CLICK"

.field public static final EMERGENCY_SOS:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_EMERGENCY"

.field public static final FINGER_ON_DISPLAY:Ljava/lang/String; = "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

.field public static final GAMEPAD_INTENTSERVICE:Ljava/lang/String; = "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

.field public static final GAME_BOOSTER_TOGGLE_MENU:Ljava/lang/String; = "com.samsung.android.game.gametools.action.togglemenu"

.field public static final ISSUE_TRACKER:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ACTION"

.field public static final KEY_CUSTOMIZATION_INFO_CHANGED:Ljava/lang/String; = "com.samsung.android.action.KEYCUSTOMIZE_INFO_CHANGED"

.field public static final PANIC_CALL:Ljava/lang/String; = "com.samsung.android.action.PANIC_CALL"

.field public static final PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field public static final PEN_INSERT_USER_SWITCH:Ljava/lang/String; = "com.samsung.pen.INSERT.USER_SWITCH"

.field public static final RECOGNIZE_SPEECH:Ljava/lang/String; = "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

.field public static final SAMSUNG_PAY:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field public static final SETUP_WIZARD_GLOBAL_ACTION:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

.field public static final SETUP_WIZARD_POWER_OFF_GUIDE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

.field public static final START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
