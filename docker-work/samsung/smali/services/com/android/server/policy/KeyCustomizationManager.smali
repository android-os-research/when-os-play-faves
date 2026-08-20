.class public Lcom/android/server/policy/KeyCustomizationManager;
.super Ljava/lang/Object;
.source "KeyCustomizationManager.java"


# static fields
.field public static final KEY_ACTION_DOUBLE:Ljava/lang/String; = "double"

.field public static final KEY_ACTION_LONG:Ljava/lang/String; = "long"

.field public static final KEY_ACTION_PRESS:Ljava/lang/String; = "press"

.field public static final KEY_ACTION_QUADRUPLE:Ljava/lang/String; = "quadruple"

.field public static final KEY_ACTION_QUINTUPLE:Ljava/lang/String; = "quintuple"

.field public static final KEY_ACTION_TRIPLE:Ljava/lang/String; = "triple"

.field public static final NEEDED_NEXT_STEP:I = 0x2

.field public static final NEEDED_ONLY_LONG_PRESS_STEP:I = 0x3

.field public static final NO_NEED_NEXT_STEP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "KeyCustomizationManager"


# instance fields
.field public defaultLongPressTimeout:J

.field public mContext:Landroid/content/Context;

.field public mFillInIntent:Landroid/content/Intent;

.field public mHandler:Landroid/os/Handler;

.field public mIsCalledOpenDictationXCoverTop:Z

.field public mIsKeyLongConsumed:Z

.field public mIsKeyLongPressed:Z

.field public mIsTopKeyOnLockScreen:Z

.field public mIsXCoverKeyOnLockScreen:Z

.field public mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

.field public mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public static synthetic $r8$lambda$I8ZoCgtAmTSrCqsPi24f3XHsrKU(Lcom/android/server/policy/KeyCustomizationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizationManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gnoZQSpJDF4e63OELZYH0lav2-U(Lcom/android/server/policy/KeyCustomizationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizationManager;->lambda$launchXCoverTopDedicatedAction$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    .line 857
    new-instance v0, Lcom/android/server/policy/KeyCustomizationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/KeyCustomizationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/KeyCustomizationManager;)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 872
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 873
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 1294
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    .line 1295
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    const/4 v1, 0x0

    .line 1508
    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1518
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 117
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 119
    new-instance p2, Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-direct {p2, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    .line 1910
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "ACTION_BLOCK_KEY_EVENT"

    return-object p0

    :cond_14
    const-string p0, "ACTION_START_SERVICE"

    return-object p0

    :cond_17
    const-string p0, "ACTION_SEND_BROADCAST"

    return-object p0

    :cond_1a
    const-string p0, "ACTION_START_ACTIVITY"

    return-object p0
.end method

.method public static idToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_54

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_51

    const/16 v0, 0x32

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x3b7

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_48

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_45

    const/16 v0, 0x44f

    if-eq p0, v0, :cond_42

    const/16 v0, 0x450

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x452

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x453

    if-eq p0, v0, :cond_39

    packed-switch p0, :pswitch_data_58

    .line 1943
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30
    const-string p0, "ID_GENERAL_APPLICATION"

    return-object p0

    :pswitch_33
    const-string p0, "ID_APPLICATION_UI_TV_MODE"

    return-object p0

    :pswitch_36
    const-string p0, "ID_APPLICATION_UI_CAMERA"

    return-object p0

    :cond_39
    const-string p0, "ID_SETTING_UI_MOUSE_BUTTON"

    return-object p0

    :cond_3c
    const-string p0, "ID_SETTING_UI_ONE_HAND_MODE"

    return-object p0

    :cond_3f
    const-string p0, "ID_SETTING_UI_SIDE_KEY"

    return-object p0

    :cond_42
    const-string p0, "ID_SETTING_UI_XCOVER_TOP"

    return-object p0

    :cond_45
    const-string p0, "ID_SETTING_UI"

    return-object p0

    :cond_48
    const-string p0, "ID_DEFAULT"

    return-object p0

    :cond_4b
    const-string p0, "ID_SETTING_UI_B2B_DELTA"

    return-object p0

    :cond_4e
    const-string p0, "ID_KNOX_LEGACY"

    return-object p0

    :cond_51
    const-string p0, "ID_KNOX_V2"

    return-object p0

    :cond_54
    const-string p0, "ID_KNOX_MDM"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x7d1
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method private synthetic lambda$launchXCoverTopDedicatedAction$1()V
    .registers 2

    .line 1545
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 858
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "KeyCustomizationManager"

    const-string v1, "broadcast keyCustomization info changed"

    .line 862
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.KEYCUSTOMIZE_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.permisson.ACCESS_KEYCUSTOMIZE_INFO"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static pressToString(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_7

    const-string p0, "KEY_PRESS_SINGLE"

    return-object p0

    :cond_7
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_e

    const-string p0, "KEY_PRESS_LONG"

    return-object p0

    :cond_e
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_15

    const-string p0, "KEY_PRESS_DOUBLE"

    return-object p0

    :cond_15
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1c

    const-string p0, "KEY_PRESS_TRIPLE"

    return-object p0

    :cond_1c
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_23

    const-string p0, "KEY_PRESS_QUADRUPLE"

    return-object p0

    :cond_23
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_2a

    const-string p0, "KEY_PRESS_QUINTUPLE"

    return-object p0

    .line 1896
    :cond_2a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canDispatchXCoverTopKeyEvent(I)Z
    .registers 5

    .line 1312
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    .line 1316
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdThanDefaultWithXCoverTopPress(I)Z

    move-result v0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_1c

    const-string p0, "Allow XCover or Top key event dispatching even though screen is turned off by knox policy."

    .line 1317
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1321
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopIdWithXCoverTopPress(I)Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, "After screen is turned off, disallow XCover or Top key event dispatching, because single or long press has a ID_SETTING_UI_XCOVER_TOP."

    .line 1322
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_29
    return v1
.end method

.method public final checkValidInputKeyCustomzeInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 14

    if-eqz p1, :cond_246

    .line 162
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 163
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 164
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 165
    iget v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v4, 0xa

    const-string v5, " and "

    const-string v6, ")."

    const-string v7, " is not supported in the requested keyCode("

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v1, v10, :cond_8c

    if-eq v1, v9, :cond_8c

    const/16 v11, 0x4f

    if-eq v1, v11, :cond_be

    const/16 v11, 0xbb

    if-eq v1, v11, :cond_8c

    const/16 v11, 0x3f7

    if-eq v1, v11, :cond_be

    const/16 v11, 0x437

    if-eq v1, v11, :cond_be

    packed-switch v1, :pswitch_data_24e

    packed-switch v1, :pswitch_data_258

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    and-int/lit8 v6, v0, 0x3

    if-eqz v6, :cond_43

    if-ne v2, v9, :cond_43

    if-ne v3, v4, :cond_43

    goto/16 :goto_be

    .line 205
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requested keyCode("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") was wrong. The keyCode is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_60
    and-int/lit8 v11, v0, 0x3

    if-eqz v11, :cond_6d

    and-int/lit8 v11, v0, 0x4

    if-nez v11, :cond_6d

    and-int/lit8 v11, v0, 0x8

    if-nez v11, :cond_6d

    goto :goto_be

    .line 193
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    :pswitch_8c
    and-int/lit8 v11, v0, 0x3

    if-eqz v11, :cond_be

    if-eq v2, v8, :cond_95

    if-eq v2, v10, :cond_95

    goto :goto_be

    .line 180
    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    :goto_be
    const/16 v6, 0x44c

    const/16 v7, 0x453

    const-string/jumbo v11, "requested "

    if-nez v2, :cond_f4

    if-lt v3, v6, :cond_cc

    if-gt v3, v7, :cond_cc

    goto :goto_11c

    .line 212
    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f4
    if-eq v2, v8, :cond_11c

    const/4 v5, 0x2

    if-eq v2, v5, :cond_11c

    if-eq v2, v10, :cond_11c

    if-ne v2, v9, :cond_fe

    goto :goto_11c

    .line 223
    :cond_fe
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong. The action is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_11c
    :goto_11c
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-eqz v2, :cond_141

    const/4 v5, -0x1

    if-ne v2, v5, :cond_124

    goto :goto_141

    .line 230
    :cond_124
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requested dispatching("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") was wrong."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_141
    :goto_141
    const/16 v2, 0x7d3

    if-eq v3, v4, :cond_17a

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_17a

    const/16 v4, 0x32

    if-eq v3, v4, :cond_17a

    const/16 v4, 0x3b7

    if-eq v3, v4, :cond_17a

    if-lt v3, v6, :cond_155

    if-le v3, v7, :cond_17a

    :cond_155
    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_15c

    if-gt v3, v2, :cond_15c

    goto :goto_17a

    .line 238
    :cond_15c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong. The id is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 242
    :cond_17a
    :goto_17a
    iget-object v4, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    if-ne v3, v2, :cond_18e

    .line 243
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_185

    goto :goto_18e

    .line 244
    :cond_185
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "requested ownerPackage was empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18e
    :goto_18e
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_1c5

    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1c5

    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_1c5

    and-int/lit8 v4, v0, 0x10

    if-nez v4, :cond_1c5

    and-int/lit8 v4, v0, 0x20

    if-nez v4, :cond_1c5

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1a7

    goto :goto_1c5

    .line 253
    :cond_1a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong. The press is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 257
    :cond_1c5
    :goto_1c5
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    const/16 v5, 0x1a

    if-eqz v4, :cond_1da

    if-ne v1, v5, :cond_1da

    and-int/lit8 v4, v0, 0x10

    if-nez v4, :cond_1d2

    goto :goto_1da

    .line 259
    :cond_1d2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Triple press of Power key is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1da
    :goto_1da
    if-ne v1, v5, :cond_1e9

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_1e1

    goto :goto_1e9

    .line 264
    :cond_1e1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Quintuple press of Power key is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e9
    :goto_1e9
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1f1

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_1f3

    :cond_1f1
    if-eq v3, v7, :cond_23e

    .line 274
    :cond_1f3
    iget-wide v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_20a

    .line 275
    iget-wide v8, p0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    cmp-long p0, v3, v8

    if-lez p0, :cond_202

    goto :goto_20a

    .line 276
    :cond_202
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The longPressTimeoutMs was wrong."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20a
    :goto_20a
    if-lez v7, :cond_217

    if-eqz v1, :cond_20f

    goto :goto_217

    .line 279
    :cond_20f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The longPressTimeoutMs only supported with long press"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :cond_217
    :goto_217
    iget-wide p0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    cmp-long p0, p0, v5

    if-eqz p0, :cond_23d

    if-nez v2, :cond_222

    if-nez v1, :cond_222

    goto :goto_23d

    .line 286
    :cond_222
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The multiPressTimeoutMs is not supported with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23d
    :goto_23d
    return-void

    .line 270
    :cond_23e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The long or double press is not supported with mouse button id."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_246
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyCustomizationInfo is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_24e
    .packed-switch 0x18
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
    .end packed-switch

    :pswitch_data_258
    .packed-switch 0x445
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public clearKeyCustomizationInfoByAction(III)V
    .registers 9

    .line 473
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, " "

    const-string v2, " keyCode="

    const-string v3, "KeyCustomizationManager"

    if-eqz v0, :cond_32

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearKeyCustomizationInfoByAction, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_32
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearByAction(III)Z

    move-result v0

    if-nez v0, :cond_63

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearKeyCustomizationInfoByAction, Requested info is empty. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 480
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 485
    :cond_63
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 486
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_77
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    return-void
.end method

.method public clearKeyCustomizationInfoByKeyCode(II)V
    .registers 7

    .line 436
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, " keyCode="

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_26

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearKeyCustomizationInfoByKeyCode, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_26
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearByKeyCode(II)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearKeyCustomizationInfoByKeyCode, Requested info is empty. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 448
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 449
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 450
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_61
    const/16 p1, 0x1a

    if-ne p2, p1, :cond_81

    .line 454
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_69
    if-ge v1, v0, :cond_86

    aget v2, p1, v1

    .line 455
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v3, :cond_76

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_76

    goto :goto_7e

    :cond_76
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_7b

    goto :goto_7e

    .line 462
    :cond_7b
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 465
    :cond_81
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 468
    :cond_86
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->initLongPressTimeout(I)V

    .line 469
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->initMultiPressTimeout(I)V

    return-void
.end method

.method public clearKeyCustomizationInfoByPackage(Ljava/lang/String;)V
    .registers 9

    .line 410
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "KeyCustomizationManager"

    if-eqz v0, :cond_1a

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKeyCustomizationInfoByPackage packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 417
    :cond_21
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearByPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearKeyCustomizationInfoByPackage, Requested info is empty. packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 424
    :cond_3e
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_43
    if-ge v2, v0, :cond_61

    aget v3, p1, v2

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_59

    .line 426
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    array-length v4, v3

    move v5, v1

    :goto_4f
    if-ge v5, v4, :cond_5e

    aget v6, v3, v5

    .line 427
    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 430
    :cond_59
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_61
    return-void
.end method

.method public dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I
    .registers 4

    const/4 v0, 0x0

    .line 1030
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;ZZ)I

    move-result p0

    return p0
.end method

.method public dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;ZZ)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1035
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1a

    move v8, v7

    goto :goto_1b

    :cond_1a
    move v8, v6

    :goto_1b
    const/4 v9, 0x3

    .line 1039
    invoke-virtual {v0, v9, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v10

    const/4 v5, 0x4

    .line 1040
    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v11

    .line 1042
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v13, "KeyCustomizationManager"

    if-eqz v12, :cond_6f

    .line 1043
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dispatchKeyEvent: keyCode="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " down="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " repeatCount="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " isLongPress="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " pressAction="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-static {v10}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " longPressAction="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1043
    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_6f
    invoke-virtual {v0, v11, v10}, Lcom/android/server/policy/KeyCustomizationManager;->shouldLaunchLongOrShortPressAction(II)Z

    move-result v12

    const-string v14, "dispatchKeyEvent - default, NEEDED_NEXT_STEP"

    const/4 v15, 0x2

    if-nez v12, :cond_80

    .line 1050
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_7f

    .line 1051
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    return v15

    :cond_80
    const/4 v12, -0x1

    if-eqz v8, :cond_110

    if-nez v1, :cond_b6

    .line 1058
    iput-boolean v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 1059
    iput-boolean v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 1061
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_TOP_KEY_B2B_DELTA_CONCEPT:Z

    if-eqz v1, :cond_9d

    .line 1062
    invoke-virtual {v0, v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1063
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_9c

    const-string v0, "dispatchKeyEvent:down - launch MCPTT, NO_NEED_NEXT_STEP"

    .line 1064
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return v7

    .line 1069
    :cond_9d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_a4

    .line 1070
    invoke-virtual {v0, v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V

    :cond_a4
    if-ne v10, v15, :cond_b6

    .line 1073
    invoke-virtual {v0, v3, v9}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;I)I

    move-result v1

    if-ne v1, v12, :cond_b6

    .line 1074
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_b5

    const-string v0, "dispatchKeyEvent:down - sendBroadcast, NO_NEED_NEXT_STEP"

    .line 1075
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    return v7

    :cond_b6
    if-eqz v2, :cond_fc

    .line 1082
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 1083
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_e0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(II)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1085
    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(IZ)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1086
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_d3

    const-string v1, "dispatchKeyEvent:longPress - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    .line 1087
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_d3
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v7

    .line 1093
    :cond_d6
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_df

    const-string v0, "dispatchKeyEvent:longPress - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 1094
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    return v15

    .line 1100
    :cond_e0
    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1101
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_ef

    const-string v1, "dispatchKeyEvent:longPress - launch Action, NO_NEED_NEXT_STEP"

    .line 1102
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_ef
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v7

    .line 1108
    :cond_f2
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_fb

    const-string v0, "dispatchKeyEvent:longPress, NEEDED_ONLY_LONG_PRESS_STEP"

    .line 1109
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    return v9

    .line 1114
    :cond_fc
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_199

    invoke-virtual {v0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(I)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1115
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_10f

    const-string v0, "dispatchKeyEvent:down - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 1116
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10f
    return v15

    .line 1122
    :cond_110
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_117

    .line 1123
    invoke-virtual {v0, v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V

    :cond_117
    if-ne v10, v15, :cond_12b

    .line 1125
    iget-boolean v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    invoke-virtual {v0, v3, v9, v1}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;IZ)I

    move-result v1

    if-ne v1, v12, :cond_12b

    .line 1127
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_12a

    const-string v0, "dispatchKeyEvent:up - sendBroadcast, NO_NEED_NEXT_STEP"

    .line 1128
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12a
    return v7

    .line 1134
    :cond_12b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_167

    .line 1135
    iget-boolean v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v1, :cond_153

    .line 1136
    invoke-virtual {v0, v9, v4}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(II)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 1137
    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(IZ)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 1138
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_148

    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    .line 1139
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_148
    return v7

    .line 1144
    :cond_149
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_152

    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 1145
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    return v15

    .line 1151
    :cond_153
    iget-boolean v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-nez v1, :cond_167

    invoke-virtual {v0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(I)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 1152
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_166

    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, No longPress consumed, NEEDED_NEXT_STEP"

    .line 1153
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_166
    return v15

    .line 1160
    :cond_167
    iget-boolean v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v1, :cond_177

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object/from16 v3, p1

    move/from16 v5, p3

    .line 1161
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(IILandroid/view/KeyEvent;IZ)Z

    goto :goto_199

    .line 1165
    :cond_177
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_TOP_KEY_B2B_DELTA_CONCEPT:Z

    if-eqz v1, :cond_18b

    .line 1166
    invoke-virtual {v0, v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 1167
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_18a

    const-string v0, "dispatchKeyEvent:up - launch MCPTT, NO_NEED_NEXT_STEP"

    .line 1168
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18a
    return v7

    .line 1174
    :cond_18b
    iget-boolean v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-eqz v0, :cond_199

    .line 1175
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_198

    const-string v0, "dispatchKeyEvent:up - longPress, NO_NEED_NEXT_STEP"

    .line 1176
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_198
    return v7

    :cond_199
    :goto_199
    if-eq v10, v7, :cond_1ac

    if-eq v10, v9, :cond_1ac

    if-eqz p3, :cond_1a4

    if-eq v11, v7, :cond_1ac

    if-ne v11, v9, :cond_1a4

    goto :goto_1ac

    .line 1195
    :cond_1a4
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1ab

    .line 1196
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ab
    return v15

    .line 1187
    :cond_1ac
    :goto_1ac
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1d1

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_1bf

    const-string v1, "down"

    goto :goto_1c2

    :cond_1bf
    const-string/jumbo v1, "up"

    :goto_1c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - forceDispatching or press action, NO_NEED_NEXT_STEP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d1
    return v7
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 1872
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyCustomization info state: "

    .line 1873
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1874
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBackupKeyCustomizationInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation

    .line 1862
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getBackupKeyCustomizationInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultIntentForKnoxId(ILandroid/view/KeyEvent;ZZZ)Landroid/content/Intent;
    .registers 9

    .line 828
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 832
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    .line 833
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_16

    move p1, v1

    goto :goto_17

    :cond_16
    move p1, v0

    .line 834
    :goto_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-eqz p1, :cond_20

    if-nez p2, :cond_20

    move v0, v1

    .line 837
    :cond_20
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 838
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 839
    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, -0x1

    if-eqz p3, :cond_36

    const/4 v1, 0x4

    goto :goto_49

    :cond_36
    if-eqz p4, :cond_3b

    const/16 v1, 0x8

    goto :goto_49

    :cond_3b
    if-eqz v0, :cond_3e

    goto :goto_49

    :cond_3e
    if-nez p1, :cond_48

    const/4 p0, 0x2

    if-eqz p5, :cond_48

    const-string p1, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    .line 850
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_48
    move v1, p0

    :goto_49
    const-string p0, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    .line 853
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p2
.end method

.method public final getGeneralApplicationIdIfNeeded(Ljava/lang/String;)I
    .registers 2

    .line 1815
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/16 p0, 0x7d3

    return p0
.end method

.method public getHotKeyComponentName(I)Landroid/content/ComponentName;
    .registers 2

    .line 1839
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getIntentWithKeyInfoExtra(Landroid/content/Intent;Landroid/view/KeyEvent;)Landroid/content/Intent;
    .registers 5

    .line 1573
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isKodiakDedicatedPttApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1574
    invoke-static {p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p0

    const-string p2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1

    .line 1578
    :cond_18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_21

    move p0, v0

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 1579
    :goto_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const-string v1, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x2

    :goto_2f
    const-string p0, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    .line 1580
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method public final getKeyAction(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 p0, p1, 0x3

    if-eqz p0, :cond_8

    const-string/jumbo p0, "press"

    return-object p0

    :cond_8
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_10

    const-string/jumbo p0, "long"

    return-object p0

    :cond_10
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_17

    const-string p0, "double"

    return-object p0

    :cond_17
    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_1f

    const-string/jumbo p0, "triple"

    return-object p0

    :cond_1f
    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_27

    const-string/jumbo p0, "quadruple"

    return-object p0

    :cond_27
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_2f

    const-string/jumbo p0, "quintuple"

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 516
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 6

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getGeneralApplicationIdIfNeeded(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 526
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(ILjava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 1510
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    .line 1511
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1514
    :cond_11
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getLastAction(II)I
    .registers 3

    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_a

    .line 541
    :cond_8
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    :goto_a
    return p0
.end method

.method public getLastComponentName(II)Landroid/content/ComponentName;
    .registers 3

    .line 551
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 552
    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_f

    .line 553
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastId(II)I
    .registers 3

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_a

    .line 546
    :cond_8
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    :goto_a
    return p0
.end method

.method public getLastIntentClone(II)Landroid/content/Intent;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 561
    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_11

    .line 562
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 3

    .line 536
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLastLongPressTimeoutMs(II)J
    .registers 3

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    goto :goto_b

    .line 569
    :cond_9
    iget-wide p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    :goto_b
    return-wide p0
.end method

.method public getLastMultiPressTimeoutMs(II)J
    .registers 3

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    goto :goto_b

    .line 574
    :cond_9
    iget-wide p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    :goto_b
    return-wide p0
.end method

.method public final getMaximumMultiPressTimeout(I)J
    .registers 10

    .line 615
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_1b

    aget v5, v0, v4

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_f

    goto :goto_18

    .line 619
    :cond_f
    invoke-virtual {p0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastMultiPressTimeoutMs(II)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_18

    move-wide v2, v5

    :cond_18
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_1b
    return-wide v2
.end method

.method public getMultiPressTimeoutMs(III)J
    .registers 4

    .line 530
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, 0x0

    goto :goto_d

    .line 531
    :cond_b
    iget-wide p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    :goto_d
    return-wide p0
.end method

.method public hasB2BDedicatedPower()Z
    .registers 3

    const/4 v0, 0x3

    const/16 v1, 0x1a

    .line 1589
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x3b7

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public hasDoubleCameraId(I)Z
    .registers 3

    const/16 v0, 0x8

    .line 1798
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x7d1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hasDoublePowerTvModeId()Z
    .registers 3

    const/16 v0, 0x8

    const/16 v1, 0x1a

    .line 1804
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x7d2

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasHigherIdThanDefaultWithXCoverTopPress(I)Z
    .registers 7

    .line 1330
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget v4, v0, v3

    .line 1331
    invoke-virtual {p0, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v4

    .line 1332
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public hasHigherIdWithAllPress(II)Z
    .registers 11

    .line 1231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2e

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    goto :goto_2e

    :cond_d
    const/16 v2, 0x7d3

    .line 1237
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v4, v3

    move v5, v1

    :goto_13
    if-ge v5, v4, :cond_2b

    aget v6, v3, v5

    if-ne v6, p1, :cond_1a

    goto :goto_28

    .line 1241
    :cond_1a
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v6, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-nez v6, :cond_23

    goto :goto_28

    .line 1245
    :cond_23
    iget v6, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v2, v6, :cond_28

    move v2, v6

    :cond_28
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2b
    if-ge v2, v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method

.method public final hasHigherIdWithOppositePress(II)Z
    .registers 5

    .line 1360
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 1364
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    .line 1365
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 1366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasHigherIdInOppositePress, press="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_41
    return v1
.end method

.method public hasLastInfo(II)Z
    .registers 3

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasOneHandModeId()Z
    .registers 3

    const/16 v0, 0x8

    const/4 v1, 0x3

    .line 1810
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x452

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public hasOwnerPackage(Ljava/lang/String;)Z
    .registers 3

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 403
    :cond_8
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->hasOwnerPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasSideKeyDoublePressId()Z
    .registers 3

    const/16 v0, 0x8

    const/16 v1, 0x1a

    .line 1792
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x450

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasXCoverTopId(II)Z
    .registers 3

    .line 1374
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x44f

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasXCoverTopIdWithXCoverTopPress(I)Z
    .registers 7

    .line 1340
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget v4, v0, v3

    .line 1341
    invoke-virtual {p0, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public final hasXCoverTopKeyAndId(I)Z
    .registers 3

    .line 1298
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1301
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopIdWithXCoverTopPress(I)Z

    move-result p0

    return p0
.end method

.method public final hasXCoverTopKeyAndId(II)Z
    .registers 4

    .line 1305
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1308
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->init(IZ)V

    .line 124
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v2, v0

    :goto_9
    if-ge v1, v2, :cond_13

    aget v3, v0, v1

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 127
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mFillInIntent:Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    return-void
.end method

.method public final initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V
    .registers 13

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_9

    .line 134
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 138
    :cond_9
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v2, v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_10
    if-ge v3, v2, :cond_2e

    aget v8, v1, v3

    if-ne p1, v0, :cond_19

    .line 140
    invoke-virtual {p0, v8}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :cond_19
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_22

    const/4 v9, 0x1

    .line 143
    invoke-virtual {p0, v8, p1, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    goto :goto_2b

    .line 145
    :cond_22
    invoke-virtual {p0, v8, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastMultiPressTimeoutMs(II)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_2b

    move-wide v6, v8

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2e
    cmp-long v0, v6, v4

    if-eqz v0, :cond_3b

    .line 152
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/policy/SingleKeyGestureDetector;->setMultiPressTimeout(IJ)V

    :cond_3b
    return-void
.end method

.method public final isAllowHandleDispatching(I)Z
    .registers 2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_19

    const/16 p0, 0x4f

    if-eq p1, p0, :cond_19

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_19

    const/16 p0, 0x437

    if-eq p1, p0, :cond_19

    const/16 p0, 0x18

    if-eq p1, p0, :cond_19

    const/16 p0, 0x19

    if-eq p1, p0, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public final isBlockedDispatchingByKnoxPolicy(IZILandroid/content/Intent;I)Z
    .registers 7

    .line 1758
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    const/16 p1, 0x3f7

    if-eq p1, p5, :cond_13

    const/16 p1, 0x437

    if-eq p1, p5, :cond_13

    const/16 p1, 0x4f

    if-ne p1, p5, :cond_44

    :cond_13
    const/4 p1, 0x1

    if-nez p2, :cond_2b

    .line 1760
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p5

    if-eqz p5, :cond_2b

    .line 1761
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/android/server/policy/KeyCustomizationManager;->isBlockedKey(ZLandroid/os/Bundle;)Z

    move-result p5

    if-eqz p5, :cond_2b

    return p1

    :cond_2b
    if-eqz p2, :cond_44

    if-nez p3, :cond_44

    .line 1766
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 1767
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isBlockedKey(ZLandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_44

    return p1

    :cond_44
    return v0
.end method

.method public final isBlockedKey(ZLandroid/os/Bundle;)Z
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p1, :cond_9

    const-string p0, "blockedStateOnKeyedDown"

    goto :goto_b

    :cond_9
    const-string p0, "blockedStateOnKeyedUp"

    .line 1753
    :goto_b
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isForceBlockDispatchingLongByKnoxPolicy(III)Z
    .registers 4

    .line 1776
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_2e

    const/16 p0, 0xbb

    if-eq p3, p0, :cond_11

    const/4 p0, 0x3

    if-ne p3, p0, :cond_2e

    .line 1778
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Long press of key("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") action should be blocked by knox policy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public isHigherIdThanDefault(I)Z
    .registers 3

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    return p0

    :cond_5
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_a

    const/4 p0, 0x1

    :cond_a
    return p0
.end method

.method public final isKnoxId(I)Z
    .registers 2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_f

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_f

    const/16 p0, 0x32

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final isKodiakDedicatedPttApp(Ljava/lang/String;)Z
    .registers 5

    .line 1280
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_3e

    goto :goto_39

    :sswitch_e
    const-string p0, "com.verizon.pushtotalkplus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_39

    :cond_17
    const/4 v2, 0x3

    goto :goto_39

    :sswitch_19
    const-string p0, "com.att.eptt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_39

    :cond_22
    const/4 v2, 0x2

    goto :goto_39

    :sswitch_24
    const-string p0, "com.sprint.sdcplus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_39

    :cond_2d
    move v2, v0

    goto :goto_39

    :sswitch_2f
    const-string p0, "com.bell.ptt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    move v2, v1

    :goto_39
    packed-switch v2, :pswitch_data_50

    return v1

    :pswitch_3d
    return v0

    :sswitch_data_3e
    .sparse-switch
        -0x6e35f6ae -> :sswitch_2f
        -0x3dc882fb -> :sswitch_24
        0x4dbc6965 -> :sswitch_19
        0x7903cfc3 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method public final isOnLockScreen(I)Z
    .registers 3

    const/16 v0, 0x437

    if-ne p1, v0, :cond_7

    .line 1385
    iget-boolean p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    goto :goto_9

    :cond_7
    iget-boolean p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    :goto_9
    return p0
.end method

.method public final isReportedKey(ZLandroid/os/Bundle;)Z
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p1, :cond_a

    const-string/jumbo p0, "reportStateOnKeyedDown"

    goto :goto_d

    :cond_a
    const-string/jumbo p0, "reportStateOnKeyedUp"

    .line 1739
    :goto_d
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isXCoverOrTopKey(I)Z
    .registers 2

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_b

    const/16 p0, 0x437

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final launchCamera()V
    .registers 5

    const-string v0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 1478
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1480
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 1481
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    const-string/jumbo v3, "isSecure"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isQuickLaunchMode"

    const/4 v3, 0x1

    .line 1483
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1484
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1485
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/high16 v0, 0x24000000

    .line 1488
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1491
    :try_start_3e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->requestWaitingForOccluding(I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_51

    :catch_47
    move-exception v0

    .line 1494
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_51

    :cond_4c
    const/high16 v0, 0x200000

    .line 1498
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1502
    :goto_51
    :try_start_51
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_51 .. :try_end_56} :catch_57

    goto :goto_5f

    :catch_57
    move-exception p0

    const-string v0, "KeyCustomizationManager"

    const-string v1, "No activity to launch Camera."

    .line 1504
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    return-void
.end method

.method public launchLongPressAction(ILandroid/view/KeyEvent;I)Z
    .registers 9

    const/4 v0, 0x4

    .line 939
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    .line 943
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchLongPressAction, keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCustomizationManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6c

    const/4 v4, 0x2

    if-eq p1, v4, :cond_65

    const/4 v4, 0x3

    if-eq p1, v4, :cond_61

    if-eq p1, v0, :cond_5a

    .line 966
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_59

    .line 967
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "launchLongPressAction. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was wrong."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return v2

    :cond_5a
    const-string/jumbo p0, "launchLongPressAction was blocked by KeyCustomizationPolicy."

    .line 961
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 951
    :cond_61
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(IILandroid/view/KeyEvent;)V

    goto :goto_6f

    .line 955
    :cond_65
    invoke-virtual {p0, p2, v0}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;I)I

    move-result p0

    if-nez p0, :cond_6f

    return v2

    .line 947
    :cond_6c
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(II)V

    :cond_6f
    :goto_6f
    return v1
.end method

.method public launchLongPressAction(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 929
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    .line 930
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    const/4 p0, 0x0

    return p0

    .line 934
    :cond_e
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public launchMultiPressAction(Landroid/view/KeyEvent;I)Z
    .registers 14

    const-string v0, "KeyCustomizationManager"

    const/4 v1, 0x0

    if-nez p1, :cond_20

    .line 978
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "launchMultiPressAction, event is null, Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_20
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_28

    const/16 v5, 0x8

    goto :goto_39

    :cond_28
    if-ne p2, v3, :cond_2d

    const/16 v5, 0x10

    goto :goto_39

    :cond_2d
    if-ne p2, v2, :cond_32

    const/16 v5, 0x20

    goto :goto_39

    :cond_32
    const/4 v5, 0x5

    if-ne p2, v5, :cond_38

    const/16 v5, 0x40

    goto :goto_39

    :cond_38
    move v5, v1

    :goto_39
    if-nez v5, :cond_3c

    return v1

    .line 996
    :cond_3c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 997
    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v7

    if-nez v7, :cond_47

    return v1

    .line 1002
    :cond_47
    iget v8, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v8, v2, :cond_4c

    return v1

    .line 1006
    :cond_4c
    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v2

    if-eqz v2, :cond_53

    return v1

    .line 1010
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "launchMultiPressAction, count="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " keyCode="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v8, v2, :cond_a3

    if-eq v8, v4, :cond_9f

    if-eq v8, v3, :cond_9b

    .line 1022
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-static {v8}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was wrong."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1022
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1016
    :cond_9b
    invoke-virtual {p0, v7, v5, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    goto :goto_a6

    .line 1019
    :cond_9f
    invoke-virtual {p0, p1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;I)I

    goto :goto_a6

    .line 1013
    :cond_a3
    invoke-virtual {p0, v7}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    :goto_a6
    return v2
.end method

.method public final launchPressAction(IILandroid/view/KeyEvent;IZ)Z
    .registers 9

    const/4 v0, 0x3

    .line 898
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    return v2

    :cond_9
    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    if-eq p1, v0, :cond_1e

    if-eqz p5, :cond_1d

    if-eq p2, v1, :cond_14

    if-ne p2, v0, :cond_1d

    .line 915
    :cond_14
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/high16 p2, 0x10000000

    const/4 p3, -0x1

    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    goto :goto_25

    :cond_1d
    return v2

    .line 908
    :cond_1e
    invoke-virtual {p0, v0, p4, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startService(IILandroid/view/KeyEvent;)V

    goto :goto_25

    .line 904
    :cond_22
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(II)V

    .line 923
    :goto_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "launchPressAction, keyCode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " forceDispatching="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public launchPressAction(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 886
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v0, 0x3

    .line 887
    invoke-virtual {p0, v0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 891
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(IILandroid/view/KeyEvent;IZ)Z

    move-result p0

    return p0
.end method

.method public launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V
    .registers 8

    const/4 v0, 0x3

    .line 876
    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    .line 880
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchPressSendBroadcast, keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isKeyLongPressed="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "KeyCustomizationManager"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p0, v1, p1, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    return-void
.end method

.method public final launchXCoverActionIfNeeded(IILjava/lang/String;Z)Z
    .registers 8

    .line 1443
    invoke-virtual {p0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->shouldDispatchEventForCameraShutter(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p0, "KeyCustomizationManager"

    const-string p1, "Can not launch dedicated action. Camera is running."

    .line 1444
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1447
    :cond_f
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    return v2

    .line 1450
    :cond_17
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_1e

    return v2

    :cond_1e
    return v1
.end method

.method public final launchXCoverDefaultAction(Ljava/lang/String;IIZ)Z
    .registers 8

    const-string/jumbo v0, "torch/torch"

    .line 1458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1459
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->isOnLockScreen(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleTorchForXCoverKey(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    const/4 v0, 0x0

    if-nez p4, :cond_1b

    return v0

    :cond_1b
    const-string p4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 1467
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_27

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchCamera()V

    return v1

    .line 1470
    :cond_27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 1471
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(II)V

    return v1

    :cond_31
    return v0
.end method

.method public launchXCoverLongActionIfNeeded(IZ)Z
    .registers 9

    .line 1389
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "KeyCustomizationManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    .line 1390
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    const/4 v0, 0x3

    .line 1394
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    const-string p0, "Can not launch long press action by knox policy"

    .line 1395
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1f
    const/4 v0, 0x4

    .line 1399
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastComponentName(II)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_27

    return v2

    .line 1403
    :cond_27
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->shouldDispatchEventForCameraShutter(Z)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string p0, "Can not launch dedicated long action. Camera is running."

    .line 1404
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1408
    :cond_33
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedLongAction(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3e

    return v3

    .line 1412
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    return v3

    .line 1415
    :cond_45
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v3

    :cond_4c
    return v2
.end method

.method public launchXCoverPressActionIfNeeded(IZ)Z
    .registers 6

    .line 1423
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_11

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    .line 1424
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const/4 v0, 0x4

    .line 1428
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "Can not launch press action by knox policy"

    .line 1429
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 v0, 0x3

    .line 1433
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastComponentName(II)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_27

    return v1

    .line 1438
    :cond_27
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 1437
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverActionIfNeeded(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverTopDedicatedAction(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "home/home"

    .line 1544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 1545
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/KeyCustomizationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/KeyCustomizationManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/KeyCustomizationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_15
    const-string v0, "back/back"

    .line 1548
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 1549
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 p1, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    return v1

    :cond_26
    return v0
.end method

.method public final launchXCoverTopDedicatedLongAction(Ljava/lang/String;I)Z
    .registers 5

    const-string/jumbo v0, "quickMessageSender/quickMessageSender"

    .line 1556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1557
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1558
    iput-boolean v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 1559
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictation(I)V

    goto :goto_26

    .line 1561
    :cond_16
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1040ed5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_26
    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final migrationForKnoxPolicy(Landroid/content/Intent;Landroid/view/KeyEvent;ZZ)Z
    .registers 21

    move-object/from16 v1, p1

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_10

    move v12, v10

    goto :goto_11

    :cond_10
    move v12, v11

    .line 1600
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v12, :cond_1b

    if-nez v0, :cond_1b

    move v13, v10

    goto :goto_1c

    :cond_1b
    move v13, v11

    .line 1605
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v2, "getHardKeyReportState"

    .line 1607
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "getHardKeyIntentState"

    .line 1608
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move v14, v2

    move v15, v3

    goto :goto_33

    :cond_31
    move v14, v11

    move v15, v14

    :goto_33
    move-object/from16 v2, p0

    move v3, v9

    move v4, v12

    move v5, v13

    move-object v6, v0

    move v7, v14

    move v8, v15

    .line 1611
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/KeyCustomizationManager;->shouldSkipActionForKnoxPolicy(IZZLandroid/os/Bundle;ZZ)Z

    move-result v2

    if-eqz v2, :cond_42

    return v10

    :cond_42
    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 1617
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v14, :cond_4f

    move-object/from16 v2, p0

    .line 1619
    invoke-virtual {v2, v1, v0, v12, v13}, Lcom/android/server/policy/KeyCustomizationManager;->updateHardKeyReport(Landroid/content/Intent;Landroid/os/Bundle;ZZ)V

    goto :goto_6d

    :cond_4f
    move-object/from16 v2, p0

    if-eqz v15, :cond_60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v12

    move v4, v13

    move/from16 v5, p3

    .line 1621
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateHardKeyIntent(Landroid/content/Intent;IZZZ)V

    goto :goto_6d

    :cond_60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1623
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateIntentForKnoxPolicy(Landroid/content/Intent;ZZZZ)V

    :goto_6d
    return v11
.end method

.method public onUserRemove(I)V
    .registers 2

    .line 1855
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->onUserRemove(I)V

    return-void
.end method

.method public onUserSwitch(I)V
    .registers 5

    .line 1845
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_9

    return-void

    .line 1848
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->onUserSwitch(I)V

    .line 1849
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1c

    aget v2, p1, v1

    .line 1850
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    return-void
.end method

.method public prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V
    .registers 5

    .line 1521
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x4

    .line 1524
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastComponentName(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1526
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    .line 1525
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_36

    .line 1530
    :cond_1c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    move p2, v0

    :goto_26
    if-eqz p2, :cond_2b

    .line 1532
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    return-void

    .line 1537
    :cond_2b
    iget-boolean p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    if-eqz p2, :cond_36

    .line 1538
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 1539
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->closeDictation(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public putHotKey(ILandroid/content/ComponentName;)V
    .registers 3

    if-nez p2, :cond_a

    const-string p0, "KeyCustomizationManager"

    const-string p1, "componentName is empty. Can not set hot key info."

    .line 1824
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1827
    :cond_a
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->putHotKey(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 11

    .line 292
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 293
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    const-string v0, "KeyCustomizationManager"

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-lt v1, v3, :cond_25

    .line 294
    iget v5, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v5, v4, :cond_25

    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 295
    invoke-virtual {v5, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v5

    if-nez v5, :cond_25

    .line 296
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_24

    const-string p0, "No need to block double press behavior. Because there is no added Rule."

    .line 297
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void

    .line 303
    :cond_25
    iget-object v5, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 304
    invoke-virtual {p0, v5}, Lcom/android/server/policy/KeyCustomizationManager;->getGeneralApplicationIdIfNeeded(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_30

    .line 306
    iput v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 309
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->checkValidInputKeyCustomzeInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 311
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v7, :cond_6f

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "putKeyCustomizationInfo keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v8}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ownerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Caller="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    .line 313
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_6f
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 318
    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 319
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_88
    const/16 v0, 0x1a

    if-ne v2, v0, :cond_90

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_b3

    .line 326
    :cond_90
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v0, v4, :cond_9c

    if-lt v1, v3, :cond_9c

    .line 327
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    goto :goto_b3

    :cond_9c
    and-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_a1

    return-void

    :cond_a1
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_ae

    .line 332
    iget-wide v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_ae

    return-void

    .line 335
    :cond_ae
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    .line 338
    :goto_b3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(II)V

    .line 339
    iget-wide v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    return-void
.end method

.method public removeHotKey(Ljava/lang/String;)V
    .registers 3

    .line 1831
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1834
    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeHotKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeKeyCustomizationInfo(III)V
    .registers 5

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(ILjava/lang/String;II)V

    return-void
.end method

.method public removeKeyCustomizationInfo(ILjava/lang/String;II)V
    .registers 11

    .line 363
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, " "

    const-string v2, " keyCode="

    const-string v3, "KeyCustomizationManager"

    if-eqz v0, :cond_40

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyCustomizationInfo "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_40
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->isEmptyKeyCustomizationInfo(III)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requested info has been removed. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_71
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/policy/KeyCustomizationManager;->getMultiPressTimeoutMs(III)J

    move-result-wide v0

    .line 375
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(ILjava/lang/String;II)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 378
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mNotifyKeyCustomizationInfoChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8e
    const/16 p1, 0x1a

    if-ne p4, p1, :cond_96

    .line 383
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_9b

    .line 385
    :cond_96
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :goto_9b
    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_a8

    .line 388
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1, p4}, Lcom/android/server/policy/SingleKeyGestureDetector;->initLongPressTimeout(I)V

    .line 391
    :cond_a8
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 392
    invoke-virtual {p1, p4}, Lcom/android/server/policy/SingleKeyGestureDetector;->getMultiPressTimeout(I)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_c7

    cmp-long p1, p1, v0

    if-nez p1, :cond_c7

    .line 394
    invoke-virtual {p0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->getMaximumMultiPressTimeout(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    :cond_c7
    return-void
.end method

.method public removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
    .registers 7

    .line 344
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "KeyCustomizationManager"

    if-eqz v0, :cond_2f

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeKeyCustomizationInfoByPackage ownerPackage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getGeneralApplicationIdIfNeeded(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3c

    const-string p0, "Can not remove KeyCustomizationInfo, ownerPackage was wrong."

    .line 351
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 354
    :cond_3c
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(ILjava/lang/String;II)V

    return-void
.end method

.method public restoreKeyCustomizationInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreKeyCustomizationInfo, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->restoreKeyCustomizationInfo(Ljava/util/List;)V

    return-void
.end method

.method public sendBroadcast(Landroid/view/KeyEvent;I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    return p0
.end method

.method public sendBroadcast(Landroid/view/KeyEvent;IZ)I
    .registers 5

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    return p0
.end method

.method public sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x0

    if-nez v8, :cond_a

    return v9

    .line 641
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 642
    invoke-virtual {v6, v8, v10}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v0

    if-eqz v0, :cond_15

    return v9

    :cond_15
    if-nez p1, :cond_22

    .line 647
    iget-object v0, v6, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, v8, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_20

    return v9

    :cond_20
    move-object v11, v0

    goto :goto_24

    :cond_22
    move-object/from16 v11, p1

    .line 652
    :goto_24
    iget v12, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 653
    iget v13, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 654
    iget v14, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_33

    move v15, v1

    goto :goto_34

    :cond_33
    move v15, v9

    .line 656
    :goto_34
    iget-object v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    and-int/lit8 v2, v8, 0x4

    if-eqz v2, :cond_3d

    move v3, v1

    move v4, v9

    goto :goto_46

    :cond_3d
    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_44

    move v4, v1

    move v3, v9

    goto :goto_46

    :cond_44
    move v3, v9

    move v4, v3

    :goto_46
    const-string v5, "KeyCustomizationManager"

    if-nez v0, :cond_59

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p2

    move-object v9, v5

    move/from16 v5, p4

    .line 667
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->getDefaultIntentForKnoxId(ILandroid/view/KeyEvent;ZZZ)Landroid/content/Intent;

    move-result-object v0

    :cond_56
    :goto_56
    move-object v4, v0

    const/4 v0, 0x0

    goto :goto_8d

    :cond_59
    move-object v9, v5

    .line 670
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v2, :cond_78

    const/16 v2, 0x3b7

    if-ne v13, v2, :cond_78

    .line 671
    iget-object v1, v6, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_73

    const-string v0, "Can not sendBroadcast. The user setup is not complete"

    .line 672
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_73
    invoke-virtual {v6, v0, v7}, Lcom/android/server/policy/KeyCustomizationManager;->getIntentWithKeyInfoExtra(Landroid/content/Intent;Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_56

    .line 676
    :cond_78
    invoke-virtual {v6, v13}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 678
    invoke-virtual {v6, v0, v7, v3, v4}, Lcom/android/server/policy/KeyCustomizationManager;->migrationForKnoxPolicy(Landroid/content/Intent;Landroid/view/KeyEvent;ZZ)Z

    move-result v2

    if-nez v15, :cond_8b

    if-eqz p4, :cond_8b

    const-string v3, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    .line 681
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8b
    move-object v4, v0

    move v0, v2

    :goto_8d
    if-nez v4, :cond_b0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not sendBroadcast. intent is null. infoKeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_b0
    if-nez v0, :cond_b5

    .line 693
    invoke-virtual {v6, v4, v14}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcastAsUser(Landroid/content/Intent;I)V

    .line 697
    :cond_b5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move v5, v12

    .line 698
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->isBlockedDispatchingByKnoxPolicy(IZILandroid/content/Intent;I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c6

    return v1

    .line 701
    :cond_c6
    invoke-virtual {v6, v13, v8, v12}, Lcom/android/server/policy/KeyCustomizationManager;->isForceBlockDispatchingLongByKnoxPolicy(III)Z

    move-result v0

    if-eqz v0, :cond_cd

    return v1

    .line 706
    :cond_cd
    iget v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-ne v0, v1, :cond_d8

    .line 707
    invoke-virtual {v6, v10}, Lcom/android/server/policy/KeyCustomizationManager;->isAllowHandleDispatching(I)Z

    move-result v1

    if-eqz v1, :cond_d8

    return v0

    :cond_d8
    const/4 v0, 0x0

    return v0
.end method

.method public final sendBroadcastAsUser(Landroid/content/Intent;I)V
    .registers 5

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBroadcastAsUser intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final shouldDispatchEventForCameraShutter(Z)Z
    .registers 2

    .line 1378
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldLaunchLongOrShortPressAction(II)Z
    .registers 3

    const/4 p0, -0x1

    if-eq p1, p0, :cond_6

    const/4 p0, 0x4

    if-ne p1, p0, :cond_7

    :cond_6
    move p1, p2

    :cond_7
    const/4 p0, 0x1

    if-eqz p1, :cond_13

    if-eq p1, p0, :cond_13

    const/4 p2, 0x2

    if-eq p1, p2, :cond_13

    const/4 p2, 0x3

    if-eq p1, p2, :cond_13

    const/4 p0, 0x0

    :cond_13
    return p0
.end method

.method public final shouldSkipActionForKnoxPolicy(IZZLandroid/os/Bundle;ZZ)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_1f

    .line 1640
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p1

    .line 1641
    invoke-virtual {p0, v1, p4}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p0

    if-eqz p1, :cond_15

    if-eqz p0, :cond_15

    if-nez p3, :cond_28

    if-eqz p2, :cond_28

    return v1

    :cond_15
    if-eqz p1, :cond_1a

    if-eqz p3, :cond_1a

    return v1

    :cond_1a
    if-eqz p0, :cond_28

    if-nez p2, :cond_28

    return v1

    :cond_1f
    if-eqz p6, :cond_28

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_28

    if-nez p2, :cond_28

    return v1

    :cond_28
    return v0
.end method

.method public startActivity(II)V
    .registers 3

    .line 733
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 737
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return-void
.end method

.method public startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 6

    .line 741
    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    const-string v1, "KeyCustomizationManager"

    if-nez v0, :cond_c

    const-string p0, "Can not startActivity. intent is null."

    .line 743
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 747
    :cond_c
    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity. userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 751
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPendingIntentActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 753
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mFillInIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_59

    .line 755
    :cond_4f
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_59
    return-void
.end method

.method public final startMCPTTServiceIfNeeded(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x3

    .line 1257
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v2

    if-nez v2, :cond_10

    return v1

    .line 1261
    :cond_10
    iget-object v3, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_30

    .line 1262
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1b

    goto :goto_30

    .line 1266
    :cond_1b
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.att.firstnet.grey"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1267
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    return v1
.end method

.method public startService(IILandroid/view/KeyEvent;)V
    .registers 5

    .line 767
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 771
    :cond_7
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    return-void
.end method

.method public startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V
    .registers 10

    .line 775
    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 776
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const-string v2, "KeyCustomizationManager"

    if-nez v0, :cond_e

    const-string p0, "Can not startService. intent is null."

    .line 779
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 783
    :cond_e
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 784
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 785
    :goto_1e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_TOP_KEY_B2B_DELTA_CONCEPT:Z

    if-eqz v4, :cond_3a

    const/16 v4, 0x3b7

    if-ne v1, v4, :cond_3a

    const-string v4, "com.att.firstnet.grey"

    .line 786
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eqz p4, :cond_3a

    .line 787
    invoke-static {p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    const-string p3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_48

    :cond_3a
    const-string p4, "extraKeyCode"

    .line 789
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyAction(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "extraKeyAction"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    :goto_48
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_59

    const-string p2, "android.intent.action.MAIN"

    .line 794
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "startService add action main"

    .line 795
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_59
    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 799
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startService. userId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " Callers="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x3

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x7d3

    if-ne v1, p2, :cond_8c

    .line 801
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_96

    .line 803
    :cond_8c
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_96
    return-void
.end method

.method public final updateHardKeyIntent(Landroid/content/Intent;IZZZ)V
    .registers 6

    const/16 p0, 0x1a

    if-ne p2, p0, :cond_19

    const-string p0, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz p5, :cond_d

    const/4 p2, 0x1

    .line 1691
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_19

    :cond_d
    if-nez p3, :cond_14

    const/4 p2, 0x2

    .line 1694
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_19

    :cond_14
    if-eqz p4, :cond_19

    .line 1701
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final updateHardKeyReport(Landroid/content/Intent;Landroid/os/Bundle;ZZ)V
    .registers 8

    const/4 v0, 0x0

    .line 1660
    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    .line 1661
    invoke-virtual {p0, v1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p0

    const/4 p2, 0x2

    const-string v2, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz v0, :cond_1c

    if-eqz p0, :cond_1c

    if-eqz p4, :cond_14

    goto :goto_17

    :cond_14
    if-nez p3, :cond_1b

    move v1, p2

    .line 1671
    :goto_17
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2d

    :cond_1b
    return-void

    :cond_1c
    if-eqz v0, :cond_25

    if-eqz p3, :cond_21

    return-void

    .line 1676
    :cond_21
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2d

    :cond_25
    if-eqz p0, :cond_2d

    if-nez p4, :cond_2a

    return-void

    .line 1682
    :cond_2a
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final updateIntentForKnoxPolicy(Landroid/content/Intent;ZZZZ)V
    .registers 6

    if-eqz p4, :cond_4

    const/4 p0, 0x4

    goto :goto_10

    :cond_4
    if-eqz p5, :cond_9

    const/16 p0, 0x8

    goto :goto_10

    :cond_9
    if-eqz p3, :cond_d

    const/4 p0, 0x1

    goto :goto_10

    :cond_d
    if-nez p2, :cond_15

    const/4 p0, 0x2

    :goto_10
    const-string p2, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    .line 1725
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_15
    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(II)V
    .registers 4

    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(IIZ)V
    .registers 8

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_5

    return-void

    .line 589
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastLongPressTimeoutMs(II)J

    move-result-wide v0

    if-eqz p3, :cond_12

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_12

    return-void

    .line 593
    :cond_12
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->setLongPressTimeout(IJ)V

    return-void
.end method

.method public final updateMultiPressTimeoutIfNeeded(IIJZ)V
    .registers 10

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_2e

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_9

    goto :goto_2e

    :cond_9
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_10

    return-void

    .line 605
    :cond_10
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 606
    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getMultiPressTimeout(I)J

    move-result-wide v2

    if-nez p5, :cond_25

    cmp-long p1, v2, v0

    if-eqz p1, :cond_25

    cmp-long p1, p3, v2

    if-gez p1, :cond_25

    return-void

    .line 610
    :cond_25
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector;->setMultiPressTimeout(IJ)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final updatePowerBehavior(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_a

    .line 502
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateLongPressPowerBehavior()V

    goto :goto_27

    :cond_a
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_14

    .line 504
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    goto :goto_27

    :cond_14
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1e

    .line 506
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateTriplePressPowerBehavior()V

    goto :goto_27

    :cond_1e
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_27

    .line 508
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateQuadruplePressPowerBehavior()V

    :cond_27
    :goto_27
    return-void
.end method
