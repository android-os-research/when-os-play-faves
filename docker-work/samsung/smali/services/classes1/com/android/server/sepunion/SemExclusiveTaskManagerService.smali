.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.super Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;
.source "SemExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;,
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;,
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;,
        Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    }
.end annotation


# static fields
.field public static final A11Y_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.accessibility"

.field public static final AIR_MOTION_ENGINE:Ljava/lang/String; = "air_motion_engine"

.field public static final AIR_MOTION_WAKE_UP:Ljava/lang/String; = "air_motion_wake_up"

.field public static final ASSISTANT_MENU:Ljava/lang/String; = "assistant_menu"

.field public static final BABYCRYING_START_TYPE:I = 0x1

.field public static final BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"

.field public static final BROADCAST_BABYCRYING_START:Ljava/lang/String; = "com.samsung.settings.action.sound_detector.start"

.field public static final BROADCAST_DOORBELL_START:Ljava/lang/String; = "com.samsung.settings.action.doorbell_detector.start"

.field public static final BROADCAST_ONE_HAND_MODE:Ljava/lang/String; = "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

.field public static final BROADCAST_TURN_OFF_ALL_SOUND:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field public static final COLOR_ADJUSTMENT_DEFAULT:I = 0x2

.field public static final COLOR_ADJUSTMENT_GRAY_SCALE:I = 0x0

.field public static final COLOR_BLIND:Ljava/lang/String; = "color_blind"

.field public static final COLOR_LENS:Ljava/lang/String; = "color_lens"

.field public static final COMPONENT_NAME_ASSISTANT_MENU:Ljava/lang/String; = "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

.field public static final COMPONENT_NAME_GOOGLE_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback/.TalkBackService"

.field public static final COMPONENT_NAME_INTERACTION_CONTROL:Ljava/lang/String; = "com.samsung.accessibility/.interactioncontrol.AccessControlMainService"

.field public static final COMPONENT_NAME_MAGNIFICATION:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field public static final COMPONENT_NAME_TALKBACK_SE:Ljava/lang/String; = "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

.field public static final COMPONENT_NAME_UNIVERSAL_SWITCH:Ljava/lang/String; = "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

.field public static final DOORBELL_START_TYPE:I = 0x2

.field public static final EASY_MUTE:Ljava/lang/String; = "easy_mute"

.field public static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field public static final GLOBAL:I = 0x3

.field public static final INTENT_NAME_UPDATE_MY_A11Y_NOTI:Ljava/lang/String; = "com.samsung.accessibility.UPDATE_MY_A11Y_NOTI"

.field public static final INTERACTION_CONTROL:Ljava/lang/String; = "interaction_control"

.field public static final KEY_A11Y_SETTINGS_RESET:Ljava/lang/String; = "accreset_state"

.field public static final MAGNIFICATION_SHORTCUT:Ljava/lang/String; = "magnification_shortcut"

.field public static final ONE_HANDED_MODE:Ljava/lang/String; = "one_handed_mode"

.field public static final PACKAGE_BIXBY_WAKEUP:Ljava/lang/String; = "com.samsung.android.bixby.wakeup"

.field public static final REMOVE_ANIMATION:Ljava/lang/String; = "remove_animation"

.field public static final SECURE:I = 0x2

.field public static final SETTINGS_SUBSTRING_COUNT:I = 0x13

.field public static final SOUND_DETECTOR_BABY_CRY:Ljava/lang/String; = "sound_detector"

.field public static final SOUND_DETECTOR_DOOR_BELL:Ljava/lang/String; = "doorbell_detector"

.field public static final SOUND_DETECTOR_SET_START_TYPE:Ljava/lang/String; = "setStartType"

.field public static final SYSTEM:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TALKBACK:Ljava/lang/String; = "talkback"

.field public static final TALKBACK_SE:Ljava/lang/String; = "talkback_se"

.field public static final TAP_DURATION:Ljava/lang/String; = "tap_duration"

.field public static final TURN_OFF_ALL_SOUND:Ljava/lang/String; = "mute_all_sound"

.field public static final UNIVERSAL_SWITCH:Ljava/lang/String; = "universal_switch"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mExclusiveTaskObserver:Landroid/database/ContentObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mMagnificationShortcut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskMapByKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;",
            ">;"
        }
    .end annotation
.end field

.field public mUserStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mproccessExclusiveTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessExclusiveTask(Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserSwitch(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 75
    const-class v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 1098
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    .line 1099
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 1100
    sget-object p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v0, "SemExclusiveTaskManagerService start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->init()V

    const/4 p1, 0x0

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V

    .line 1104
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static setGrayScale(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "accessibility"

    .line 707
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    const/4 p1, 0x4

    .line 710
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_16

    :cond_12
    const/4 p1, 0x0

    .line 712
    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const-string p1, "\n##### SemExclusiveTaskManagerService #####\n##### (dumpsys sepunion exclusivetask) #####\n"

    .line 1173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move v0, p3

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1177
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "task["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->-$$Nest$fgetrawKey(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v3

    goto :goto_11

    .line 1181
    :cond_58
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1182
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExclusiveTaskMap size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    iget-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1186
    iget-object v3, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exclusiveTask name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->-$$Nest$fgetname(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    iget-object v2, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p3

    .line 1190
    :goto_ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 1191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "manipulated task["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ed

    :cond_119
    return-void
.end method

.method public final executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 14

    .line 511
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePostProccess() name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const-string/jumbo v3, "sound_detector"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v1, :sswitch_data_340

    goto/16 :goto_c1

    :sswitch_3d
    const-string v1, "doorbell_detector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_c1

    :cond_47
    const/16 v9, 0xa

    goto/16 :goto_c1

    :sswitch_4b
    const-string/jumbo v1, "tap_duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_c1

    :cond_56
    const/16 v9, 0x9

    goto/16 :goto_c1

    :sswitch_5a
    const-string v1, "color_blind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_c1

    :cond_64
    move v9, v2

    goto/16 :goto_c1

    :sswitch_67
    const-string v1, "color_lens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_c1

    :cond_70
    const/4 v9, 0x7

    goto :goto_c1

    :sswitch_72
    const-string/jumbo v1, "interaction_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_c1

    :cond_7c
    const/4 v9, 0x6

    goto :goto_c1

    :sswitch_7e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_c1

    :cond_85
    const/4 v9, 0x5

    goto :goto_c1

    :sswitch_87
    const-string/jumbo v1, "mute_all_sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_c1

    :cond_91
    move v9, v4

    goto :goto_c1

    :sswitch_93
    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto :goto_c1

    :cond_9c
    move v9, v5

    goto :goto_c1

    :sswitch_9e
    const-string/jumbo v1, "magnification_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto :goto_c1

    :cond_a8
    move v9, v6

    goto :goto_c1

    :sswitch_aa
    const-string/jumbo v1, "one_handed_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_c1

    :cond_b4
    move v9, v7

    goto :goto_c1

    :sswitch_b6
    const-string/jumbo v1, "remove_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto :goto_c1

    :cond_c0
    move v9, v8

    :goto_c1
    const/4 v0, 0x0

    const-string v1, "android.intent.action.MAIN"

    packed-switch v9, :pswitch_data_36e

    goto/16 :goto_33f

    .line 698
    :pswitch_c9
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->updateA11yNotification()V

    goto/16 :goto_33f

    .line 519
    :pswitch_ce
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    .line 521
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v3, "color_adjustment_type"

    invoke-static {v1, v3, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_eb

    .line 524
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setGrayScale(Landroid/content/Context;Z)V

    goto/16 :goto_33f

    .line 526
    :cond_eb
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setGrayScale(Landroid/content/Context;Z)V

    .line 527
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v1, "color_blind_user_parameter"

    invoke-static {p0, v1, v0, p3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    .line 529
    invoke-virtual {p1, p2, p0}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    goto/16 :goto_33f

    .line 535
    :pswitch_103
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    if-eqz p2, :cond_12c

    .line 537
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v1, "color_lens_type"

    invoke-static {p2, v1, v8, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    .line 539
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v0, "color_lens_opacity"

    invoke-static {p0, v0, v8, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 541
    invoke-virtual {p1, p2, p0}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z

    goto/16 :goto_33f

    .line 544
    :cond_12c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z

    goto/16 :goto_33f

    .line 590
    :pswitch_131
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.samsung.accessibility/.interactioncontrol.AccessControlMainService"

    .line 591
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_14a

    .line 593
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_33f

    .line 595
    :cond_14a
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto/16 :goto_33f

    .line 603
    :pswitch_153
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_165

    .line 604
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.sound_detector.start"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_16c

    .line 606
    :cond_165
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.doorbell_detector.start"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_16c
    const-string v0, "com.samsung.android.bixby.wakeup"

    .line 608
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 611
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "setStartType"

    if-eqz p1, :cond_18c

    .line 613
    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_18f

    .line 615
    :cond_18c
    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    :goto_18f
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.samsung.accessibility"

    const-string v1, "com.samsung.accessibility.sounddetector.service.SoundDetectService"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_1a6

    .line 621
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_33f

    .line 623
    :cond_1a6
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto/16 :goto_33f

    .line 550
    :pswitch_1af
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "mute"

    .line 552
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_33f

    .line 652
    :pswitch_1c5
    :try_start_1c5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 653
    new-instance p3, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.bluelightfilter"

    const-string v1, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p3, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    if-eqz p2, :cond_1dd

    const/16 p2, 0x15

    goto :goto_1df

    :cond_1dd
    const/16 p2, 0x16

    .line 655
    :goto_1df
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1e9} :catch_1eb

    goto/16 :goto_33f

    .line 658
    :catch_1eb
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string p1, "error during starting BlueLightFilterService"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33f

    :pswitch_1f4
    const-string p1, "accessibility_display_magnification_enabled"

    const-string v0, "com.android.server.accessibility.MagnificationController"

    if-eqz p2, :cond_237

    .line 666
    :goto_1fa
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v8, p2, :cond_230

    .line 667
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_21c

    .line 668
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v1, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {p2, p1, v7, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_22d

    .line 670
    :cond_21c
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V

    :goto_22d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1fa

    .line 673
    :cond_230
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_33f

    .line 676
    :cond_237
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v7, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_24d

    .line 677
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v7, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 680
    :cond_24d
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v6, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_263

    .line 681
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v6, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 684
    :cond_263
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v5, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_279

    .line 685
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v5, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 689
    :cond_279
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {p2, p1, v8, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v7, :cond_33f

    .line 690
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {p0, p1, v8, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_33f

    .line 558
    :pswitch_29d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p2, :cond_2d7

    .line 561
    :try_start_2a3
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "one_handed_op_wakeup_type"

    iget p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, v8, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_2b5

    goto :goto_2b6

    :cond_2b5
    move v7, v8

    :goto_2b6
    if-nez v7, :cond_2e4

    .line 565
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p3, "onehand/onehand"

    .line 566
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 568
    new-instance p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v1, 0x8

    const/16 v2, 0x452

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 574
    invoke-interface {p1, p3}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    goto :goto_2e4

    :cond_2d7
    const/16 p3, 0x452

    .line 577
    invoke-interface {p1, p3, v2, v5}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V
    :try_end_2dc
    .catch Landroid/os/RemoteException; {:try_start_2a3 .. :try_end_2dc} :catch_2dd

    goto :goto_2e4

    .line 581
    :catch_2dd
    sget-object p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string p3, "Exception occurs when remove OneHandedMode Key"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_2e4
    :goto_2e4
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "is_enabled"

    .line 584
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 585
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_33f

    .line 629
    :pswitch_2f7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p2, :cond_2fe

    goto :goto_300

    :cond_2fe
    const/high16 v0, 0x3f800000    # 1.0f

    .line 632
    :goto_300
    :try_start_300
    invoke-interface {p1, v8, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 633
    invoke-interface {p1, v7, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 634
    invoke-interface {p1, v6, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_309
    .catch Landroid/os/RemoteException; {:try_start_300 .. :try_end_309} :catch_30a

    goto :goto_311

    .line 636
    :catch_30a
    sget-object p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v0, "error during calling setAnimationScale"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_311
    const-string/jumbo p1, "reduce_animations"

    if-eqz p2, :cond_330

    .line 640
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {p2, p1, v8, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreReduceAnimationValue:I

    .line 641
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {p0, p1, v7, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_33f

    .line 643
    :cond_330
    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreReduceAnimationValue:I

    if-nez p2, :cond_33f

    .line 644
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {p0, p1, v8, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_33f
    :goto_33f
    return-void

    :sswitch_data_340
    .sparse-switch
        -0x4f32c677 -> :sswitch_b6
        -0x22f0b665 -> :sswitch_aa
        -0x119ca23e -> :sswitch_9e
        -0x76e157a -> :sswitch_93
        0x9fe6a4b -> :sswitch_87
        0x107740f6 -> :sswitch_7e
        0x2753a830 -> :sswitch_72
        0x4cdb505a -> :sswitch_67
        0x4e04eb79 -> :sswitch_5a
        0x55f1a6b0 -> :sswitch_4b
        0x5616ee94 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_36e
    .packed-switch 0x0
        :pswitch_2f7
        :pswitch_29d
        :pswitch_1f4
        :pswitch_1c5
        :pswitch_1af
        :pswitch_153
        :pswitch_131
        :pswitch_103
        :pswitch_ce
        :pswitch_c9
        :pswitch_153
    .end packed-switch
.end method

.method public finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public final getA11yServiceTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;
    .registers 8

    .line 336
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v1

    .line 339
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last a11y count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current a11y count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v5, "enabled_accessibility_services"

    .line 342
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 345
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_b2

    const-string p0, "a11y count hasn\'t changed"

    .line 346
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 348
    :goto_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 349
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 350
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldServices : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 353
    :cond_89
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 354
    :goto_8d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 355
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 356
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newServices : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_b1
    return-object v4

    .line 362
    :cond_b2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-le p1, v3, :cond_ca

    .line 363
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string/jumbo p1, "new a11y service is on"

    .line 364
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d7

    .line 367
    :cond_ca
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string/jumbo p1, "old a11y service is off"

    .line 368
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    :goto_d7
    if-eqz p1, :cond_e2

    .line 373
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    return-object p0

    :cond_e2
    return-object v4
.end method

.method public final getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 382
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 383
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 384
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 385
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string/jumbo p0, "talkback se status has changed"

    .line 387
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "talkback_se"

    return-object p0

    .line 389
    :cond_41
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback/.TalkBackService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string/jumbo p0, "talkback status has changed"

    .line 390
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "talkback"

    return-object p0

    .line 392
    :cond_57
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string/jumbo p0, "universal switch status has changed"

    .line 393
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "universal_switch"

    return-object p0

    .line 395
    :cond_6d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "assistant menu status has changed"

    .line 396
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "assistant_menu"

    return-object p0

    :cond_81
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string p2, "enabled_accessibility_services"

    .line 1047
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    .line 1050
    :cond_e
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 1052
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-nez p0, :cond_23

    .line 1057
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1060
    :cond_23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1061
    new-instance p2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v0, 0x3a

    invoke-direct {p2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1062
    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1064
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_46

    .line 1065
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 1066
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1069
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_46
    return-object p1
.end method

.method public getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 981
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExclusiveTaskList for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 983
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz p1, :cond_73

    .line 986
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    move-result-object v1

    .line 987
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 988
    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 989
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 990
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz v2, :cond_35

    .line 991
    invoke-static {v2, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 992
    sget-object v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExclusiveTaskList add : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_73
    return-object v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 171
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no user status for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_25
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    return-object p0
.end method

.method public final hasExclusiveRelation(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Ljava/lang/String;)Z
    .registers 6

    .line 210
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    const/4 v0, 0x0

    const-string v1, "### "

    if-nez p0, :cond_27

    .line 212
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t exist in mTaskMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 216
    :cond_27
    invoke-static {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    .line 217
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist in exclusiveListSet of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_56
    const/4 p0, 0x1

    return p0
.end method

.method public final init()V
    .registers 3

    .line 158
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->readExclusiveRelation()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->verifyExclusiveRelation()Z

    .line 164
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessExceptionalCases()V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->registerExclusiveTaskObserver()V

    return-void
.end method

.method public isAccessibilityServiceEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1082
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object p0

    .line 1084
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    return v1

    .line 1087
    :cond_d
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 1088
    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v0

    :cond_24
    return v1
.end method

.method public isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1077
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->isAccessibilityServiceEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1120
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string p1, "SemExclusiveTaskManagerService onCreate()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1115
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v0, "SemExclusiveTaskManagerService onStart()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final proccessExceptionalCases()V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string/jumbo v1, "talkback_se"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz v0, :cond_12

    const-string v1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 227
    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_1a

    .line 229
    :cond_12
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mTaskMap hasn\'t COMPONENT_NAME_TALKBACK_SE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_1a
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string/jumbo v1, "universal_switch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz v0, :cond_2c

    const-string v1, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    .line 233
    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_34

    .line 235
    :cond_2c
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mTaskMap hasn\'t COMPONENT_NAME_UNIVERSAL_SWITCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_34
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string/jumbo v1, "talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz v0, :cond_46

    const-string v1, "com.google.android.marvin.talkback/.TalkBackService"

    .line 239
    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_4e

    .line 241
    :cond_46
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mTaskMap hasn\'t COMPONENT_NAME_GOOGLE_TALKBACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_4e
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    const-string v0, "assistant_menu"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz p0, :cond_5f

    const-string v0, "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

    .line 245
    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    goto :goto_67

    .line 247
    :cond_5f
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "mTaskMap hasn\'t COMPONENT_NAME_ASSISTANT_MENU"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-void
.end method

.method public final proccessExclusiveTask(Ljava/lang/String;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-nez p1, :cond_12

    .line 303
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string p1, "### proccessExclusiveTask() : task is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 308
    :cond_12
    iget-boolean v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    if-eqz v0, :cond_25

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetType(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    .line 309
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string p1, "### ignore changed a11y settings"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_25
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetType(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 315
    sget-object p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled_accessibility_service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v3, "enabled_accessibility_services"

    .line 315
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getA11yServiceTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    move-result-object v0

    if-nez v0, :cond_5c

    const-string p0, "### no samsung a11y service"

    .line 319
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5c
    move-object p1, v0

    .line 324
    :cond_5d
    invoke-static {p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessTurningOnTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    goto :goto_6a

    .line 329
    :cond_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->proccessTurningOffTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    :goto_6a
    return-void
.end method

.method public final proccessTurningOffTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 8

    .line 466
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proccessTurningOffTask() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is in mExclusiveTaskMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 472
    iget-object v0, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 476
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 477
    invoke-static {v1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mcanTurnOnFeature(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v2

    if-nez v2, :cond_76

    invoke-virtual {p0, v1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->reCheck(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 478
    :cond_76
    sget-object v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turn on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for exclusive task name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 479
    invoke-static {v1, v2, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mturnOnOff(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 481
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    goto :goto_56

    .line 485
    :cond_a3
    iget-object p2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_ac
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tap_duration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 489
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->updateA11yNotification()V

    :cond_bc
    return-void
.end method

.method public final proccessTurningOnTask(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 11

    .line 407
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proccessTurningOnTask() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask-IA;)V

    .line 409
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->-$$Nest$fputname(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;Ljava/lang/String;)V

    .line 411
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    if-eqz v3, :cond_30

    .line 415
    invoke-static {v3, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 418
    iget-object v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 419
    sget-object v4, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is in mExclusiveTaskMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v5, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 421
    iget-object v6, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is in manipulatedList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v4, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v4, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b1

    .line 426
    iget-object v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_b1
    iget-object v4, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 434
    invoke-static {v3, v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mturnOnOff(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 435
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 436
    sget-object v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "turn off "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 440
    :cond_e2
    iget-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f3

    .line 441
    iget-object p2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_f3
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tap_duration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 445
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->updateA11yNotification()V

    :cond_103
    return-void
.end method

.method public final reCheck(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 8

    .line 494
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "one_handed_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    .line 495
    :cond_f
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reCheck For : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 498
    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 500
    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 501
    invoke-static {v2, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "corner_action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 502
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is Exceptional case for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_80
    return v1
.end method

.method public final readExclusiveRelation()V
    .registers 15

    const-string/jumbo v0, "task-list"

    .line 912
    sget-object v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readExclusiveRelation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/task_action.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 916
    :try_start_12
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 918
    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 919
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    invoke-interface {v1}, Lorg/w3c/dom/Document;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_158

    .line 920
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 922
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v4

    .line 923
    :goto_41
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_61

    .line 924
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 925
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    goto :goto_61

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_61
    :goto_61
    move v0, v2

    .line 931
    :goto_62
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_158

    .line 932
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 934
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v4, :cond_14d

    const-string/jumbo v5, "task"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 938
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 939
    new-instance v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task-IA;)V

    .line 941
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    move v6, v2

    .line 942
    :goto_90
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_139

    .line 943
    invoke-interface {v1, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 945
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    sparse-switch v10, :sswitch_data_15a

    goto :goto_df

    :sswitch_aa
    const-string v10, "exclusive"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    move v9, v12

    goto :goto_df

    :sswitch_b4
    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    move v9, v4

    goto :goto_df

    :sswitch_bf
    const-string/jumbo v10, "name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    move v9, v2

    goto :goto_df

    :sswitch_ca
    const-string/jumbo v10, "key"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    move v9, v13

    goto :goto_df

    :sswitch_d5
    const-string/jumbo v10, "needNotify"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    move v9, v11

    :cond_df
    :goto_df
    if-eqz v9, :cond_12f

    if-eq v9, v4, :cond_124

    if-eq v9, v13, :cond_11a

    if-eq v9, v12, :cond_f7

    if-eq v9, v11, :cond_ea

    goto :goto_135

    :cond_ea
    const-string v8, "1"

    .line 962
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->needNotify:Z

    goto :goto_135

    .line 956
    :cond_f7
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 957
    new-instance v8, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 959
    invoke-static {v5}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_135

    .line 953
    :cond_11a
    iget-object v8, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->setSettingsKey(Ljava/lang/String;)V

    goto :goto_135

    .line 950
    :cond_124
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    goto :goto_135

    .line 947
    :cond_12f
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    :goto_135
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_90

    .line 967
    :cond_139
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$mgetName(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    iget-object v6, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    invoke-static {v6}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->-$$Nest$fgetrawKey(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_14d} :catch_151

    :cond_14d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_62

    .line 975
    :catch_151
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string v0, "error during readExclusiveRelation()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    return-void

    nop

    :sswitch_data_15a
    .sparse-switch
        -0x583f3c81 -> :sswitch_d5
        0x19e5f -> :sswitch_ca
        0x337a8b -> :sswitch_bf
        0x368f3a -> :sswitch_b4
        0x6487be9e -> :sswitch_aa
    .end sparse-switch
.end method

.method public final registerExclusiveTaskObserver()V
    .registers 5

    .line 252
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 253
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "mTaskMap is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 257
    :cond_11
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 261
    iget-object v1, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    goto :goto_26

    .line 264
    :cond_48
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accreset_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .registers 7

    const/4 v0, 0x1

    .line 1008
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object p0

    .line 1010
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p3, :cond_12

    .line 1011
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(I)V

    :cond_12
    if-eqz p3, :cond_18

    .line 1016
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1018
    :cond_18
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_21

    .line 1019
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1023
    :cond_21
    :goto_21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1029
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 1030
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 1032
    :cond_43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_4d

    sub-int/2addr p3, v0

    .line 1034
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1036
    :cond_4d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 1038
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "enabled_accessibility_services"

    .line 1036
    invoke-static {p3, v1, p2, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1039
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1040
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    const-string p2, "accessibility_enabled"

    .line 1039
    invoke-static {p1, p2, p0, p4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final updateA11yNotification()V
    .registers 5

    .line 451
    sget-object v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateA11yNotification() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$3;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final userSwitch(I)V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 180
    sget-object p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already has user status for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_23
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    invoke-direct {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iput p1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 187
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    const-string v1, "enabled_accessibility_services"

    .line 187
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    return-void
.end method

.method public final verifyExclusiveRelation()Z
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 197
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->-$$Nest$fgetexclusiveListSet(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v1, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->hasExclusiveRelation(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;Ljava/lang/String;)Z

    goto :goto_26

    :cond_36
    const/4 p0, 0x1

    return p0
.end method
