.class public Lcom/android/server/accessibility/SamsungStickyKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungStickyKeys.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final INDEX_ALT:I = 0x2

.field public static final INDEX_CTRL:I = 0x1

.field public static final INDEX_MAX:I = 0x4

.field public static final INDEX_META:I = 0x3

.field public static final INDEX_SHIFT:I = 0x0

.field public static final MESSAGE_INIT_VIEW:I = 0x63

.field public static final MESSAGE_KEY_UP_ALT:I = 0x64

.field public static final MESSAGE_KEY_UP_CTRL:I = 0x65

.field public static final MESSAGE_KEY_UP_META:I = 0x67

.field public static final MESSAGE_KEY_UP_SHIFT:I = 0x66

.field public static final STATUS_LOCKED:I = 0x2

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PRESSED:I = 0x1

.field public static final STICKY_ALT_LOCKED:I = 0x2

.field public static final STICKY_ALT_ON:I = 0x1

.field public static final STICKY_CTRL_LOCKED:I = 0x200

.field public static final STICKY_CTRL_ON:I = 0x100

.field public static final STICKY_META_LOCKED:I = 0x2000

.field public static final STICKY_META_ON:I = 0x1000

.field public static final STICKY_SHIFT_LOCKED:I = 0x20

.field public static final STICKY_SHIFT_ON:I = 0x10

.field public static final TAG:Ljava/lang/String; = "SamsungStickyKeys"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mModifierKeyMask:I

.field public mModifierKeyUpEvent:[Landroid/view/KeyEvent;

.field public mModifierKeyUpPolicyFlags:[I

.field public mModifierKeys:[Landroid/widget/TextView;

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mStickyKeysView:Landroid/view/View;

.field public mUiThread:Ljava/lang/Thread;

.field public final mUserId:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$_3QmvPVyn30EDR7btRLlEAD5NuQ(Lcom/android/server/accessibility/SamsungStickyKeys;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->lambda$setModifierKeyStatus$0(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModifierKeyUpEvent(Lcom/android/server/accessibility/SamsungStickyKeys;)[Landroid/view/KeyEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModifierKeyUpPolicyFlags(Lcom/android/server/accessibility/SamsungStickyKeys;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungStickyKeys;)Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmModifierKeyMask(Lcom/android/server/accessibility/SamsungStickyKeys;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdebugLog(Lcom/android/server/accessibility/SamsungStickyKeys;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misHardwareKeyboardAvailable(Lcom/android/server/accessibility/SamsungStickyKeys;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->isHardwareKeyboardAvailable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeViews(Lcom/android/server/accessibility/SamsungStickyKeys;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungStickyKeys;->makeViews()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetModifierKeyStatus(Lcom/android/server/accessibility/SamsungStickyKeys;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 125
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/TextView;

    .line 65
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/view/KeyEvent;

    .line 66
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    new-array v0, v0, [I

    .line 68
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    .line 70
    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungStickyKeys$1;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v1, Lcom/android/server/accessibility/SamsungStickyKeys$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungStickyKeys$2;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mUiThread:Ljava/lang/Thread;

    .line 127
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    .line 128
    iput p2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mUserId:I

    const-string/jumbo p2, "window"

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    .line 130
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x63

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static createBackKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 15

    .line 494
    new-instance v13, Landroid/view/KeyEvent;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 495
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 496
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    const/4 v6, 0x4

    const/4 v8, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v13
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 3

    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 505
    :cond_c
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v1, 0x80

    if-ne p0, v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private synthetic lambda$setModifierKeyStatus$0(II)V
    .registers 5

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setModifierKeyStatus(), index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungStickyKeys"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    aget-object p1, v0, p1

    if-eqz p2, :cond_61

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_47

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    goto :goto_66

    :cond_2d
    const p2, 0x1080adb

    .line 189
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x10608e4

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_66

    :cond_47
    const p2, 0x1080adc

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 184
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x10608e6

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_66

    :cond_61
    const/16 p0, 0x8

    .line 179
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_66
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 474
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_7
    return-void
.end method

.method public final debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 511
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getModifierKeyStatus(I)I
    .registers 6

    const/16 v0, 0x71

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x72

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x75

    if-eq p1, v0, :cond_30

    const/16 v0, 0x76

    if-eq p1, v0, :cond_30

    packed-switch p1, :pswitch_data_4a

    return v2

    .line 299
    :pswitch_17
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_1e

    return v3

    :cond_1e
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_23

    return v1

    :cond_23
    return v2

    .line 289
    :pswitch_24
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_2b

    return v3

    :cond_2b
    and-int/2addr p0, v1

    if-eqz p0, :cond_2f

    return v1

    :cond_2f
    return v2

    .line 318
    :cond_30
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_37

    return v3

    :cond_37
    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_3c

    return v1

    :cond_3c
    return v2

    .line 309
    :cond_3d
    iget p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_44

    return v3

    :cond_44
    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_49

    return v1

    :cond_49
    return v2

    :pswitch_data_4a
    .packed-switch 0x39
        :pswitch_24
        :pswitch_24
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public final injectModifierKeys(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 10

    .line 332
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const-string v5, "SamsungStickyKeys"

    const/4 v6, 0x1

    if-eqz v0, :cond_38

    .line 333
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetAltPressed(Z)V

    .line 334
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_38

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove STICKY_ALT_ON : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 337
    invoke-virtual {p0, v0, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    :cond_38
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_6a

    .line 343
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetShiftPressed(Z)V

    .line 344
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6a

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove STICKY_SHIFT_ON : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v4, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 348
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 352
    :cond_6a
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x300

    if-eqz v0, :cond_9c

    .line 353
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetCtrlPressed(Z)V

    .line 354
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9c

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove STICKY_CTRL_ON : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v6, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 362
    :cond_9c
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x3000

    if-eqz v0, :cond_e0

    .line 363
    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->semSetMetaPressed(Z)V

    .line 365
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v6, 0x43

    if-ne v0, v6, :cond_b7

    const-string/jumbo v0, "modify keycode to KEYCODE_BACK"

    .line 366
    invoke-virtual {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->createBackKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 370
    :cond_b7
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove STICKY_META_ON : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 374
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e0
    return-object p1
.end method

.method public final isHardwareKeyboardAvailable()Z
    .registers 3

    .line 488
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 489
    :goto_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isHardwareKeyboardAvailable() : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SamsungStickyKeys"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isModifierKey(I)Z
    .registers 2

    const/16 p0, 0x71

    if-eq p1, p0, :cond_15

    const/16 p0, 0x72

    if-eq p1, p0, :cond_15

    const/16 p0, 0x75

    if-eq p1, p0, :cond_15

    const/16 p0, 0x76

    if-eq p1, p0, :cond_15

    packed-switch p1, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :cond_15
    :pswitch_15
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x39
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public final makeViews()V
    .registers 7

    .line 138
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    .line 139
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 140
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7d9

    .line 141
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x708

    .line 142
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 146
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 147
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x33

    .line 148
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_26

    :cond_22
    const/16 v1, 0x35

    .line 150
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_26
    const/4 v1, 0x0

    .line 153
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 v2, 0x42000000    # 32.0f

    .line 154
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 156
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 157
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 159
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900af

    const/4 v5, 0x0

    .line 160
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 162
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 164
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v5, 0x10205a7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v1

    .line 165
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v3, 0x1020298

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    .line 166
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v4, 0x10201e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v1, v2

    .line 167
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeys:[Landroid/widget/TextView;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    const v4, 0x1020403

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v1, v2

    .line 169
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 460
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 461
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 481
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mStickyKeysView:Landroid/view/View;

    .line 484
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 7

    .line 199
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 200
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->isModifierKey(I)Z

    move-result v2

    const-string v3, "SamsungStickyKeys"

    if-eqz v2, :cond_59

    if-nez v0, :cond_32

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->proccessModifierKeyPress(I)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->getModifierKeyStatus(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_51

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "ignore KeyEvent.ACTION_DOWN : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_32
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->getModifierKeyStatus(I)I

    move-result v0

    if-eqz v0, :cond_51

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignore KeyEvent.ACTION_UP : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys;->saveModifierKeyUpEvent(ILandroid/view/KeyEvent;I)V

    return-void

    .line 217
    :cond_51
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_58

    .line 218
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_58
    return-void

    .line 223
    :cond_59
    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    if-lez v0, :cond_61

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->injectModifierKeys(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 227
    :cond_61
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_68

    .line 228
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 231
    :cond_68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is pressed, alt : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shift : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ctrl : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", meta : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 239
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p0, :cond_7

    .line 240
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_7
    return-void
.end method

.method public final proccessModifierKeyPress(I)V
    .registers 8

    const/16 v0, 0x71

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "SamsungStickyKeys"

    if-eq p1, v0, :cond_d2

    const/16 v0, 0x72

    if-eq p1, v0, :cond_d2

    const/16 v0, 0x75

    if-eq p1, v0, :cond_95

    const/16 v0, 0x76

    if-eq p1, v0, :cond_95

    packed-switch p1, :pswitch_data_12a

    goto/16 :goto_10d

    .line 403
    :pswitch_1a
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_31

    const-string/jumbo p1, "remove STICKY_SHIFT_LOCKED"

    .line 404
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 406
    invoke-virtual {p0, v1, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_10d

    :cond_31
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_48

    const-string/jumbo p1, "remove STICKY_SHIFT_ON and set STICKY_SHIFT_LOCKED"

    .line 408
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x11

    or-int/lit8 p1, p1, 0x20

    .line 410
    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 411
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_10d

    :cond_48
    const-string/jumbo p1, "set STICKY_SHIFT_ON"

    .line 413
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 415
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_10d

    .line 385
    :pswitch_59
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_70

    const-string/jumbo p1, "remove STICKY_ALT_LOCKED"

    .line 386
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 388
    invoke-virtual {p0, v3, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_10d

    :cond_70
    and-int/2addr p1, v2

    if-eqz p1, :cond_85

    const-string/jumbo p1, "remove STICKY_ALT_ON and set STICKY_ALT_LOCKED"

    .line 390
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit8 p1, p1, -0x2

    or-int/2addr p1, v3

    .line 392
    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 393
    invoke-virtual {p0, v3, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_10d

    :cond_85
    const-string/jumbo p1, "set STICKY_ALT_ON"

    .line 395
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 397
    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto/16 :goto_10d

    .line 439
    :cond_95
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, p1, 0x2000

    const/4 v5, 0x3

    if-eqz v0, :cond_ac

    const-string/jumbo p1, "remove STICKY_META_LOCKED"

    .line 440
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 442
    invoke-virtual {p0, v5, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_10d

    :cond_ac
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_c2

    const-string/jumbo p1, "remove STICKY_META_ON and set STICKY_META_LOCKED"

    .line 444
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x1001

    or-int/lit16 p1, p1, 0x2000

    .line 446
    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 447
    invoke-virtual {p0, v5, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_10d

    :cond_c2
    const-string/jumbo p1, "set STICKY_META_ON"

    .line 449
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 451
    invoke-virtual {p0, v5, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_10d

    .line 421
    :cond_d2
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_e8

    const-string/jumbo p1, "remove STICKY_CTRL_LOCKED"

    .line 422
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 424
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_10d

    :cond_e8
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_fe

    const-string/jumbo p1, "remove STICKY_CTRL_ON and set STICKY_CTRL_LOCKED"

    .line 426
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    and-int/lit16 p1, p1, -0x101

    or-int/lit16 p1, p1, 0x200

    .line 428
    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 429
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    goto :goto_10d

    :cond_fe
    const-string/jumbo p1, "set STICKY_CTRL_ON"

    .line 431
    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    .line 433
    invoke-virtual {p0, v2, v2}, Lcom/android/server/accessibility/SamsungStickyKeys;->setModifierKeyStatus(II)V

    .line 455
    :goto_10d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mModifierKeyMask : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyMask:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/accessibility/SamsungStickyKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_12a
    .packed-switch 0x39
        :pswitch_59
        :pswitch_59
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 523
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 524
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 526
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method

.method public final saveModifierKeyUpEvent(ILandroid/view/KeyEvent;I)V
    .registers 6

    const/16 v0, 0x71

    const/4 v1, 0x0

    if-eq p1, v0, :cond_19

    const/16 v0, 0x72

    if-eq p1, v0, :cond_19

    const/16 v0, 0x75

    if-eq p1, v0, :cond_17

    const/16 v0, 0x76

    if-eq p1, v0, :cond_17

    packed-switch p1, :pswitch_data_28

    goto :goto_1a

    :pswitch_15
    const/4 v1, 0x2

    goto :goto_1a

    :cond_17
    const/4 v1, 0x3

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    .line 281
    :goto_1a
    :pswitch_1a
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpEvent:[Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object p2

    aput-object p2, p1, v1

    .line 282
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mModifierKeyUpPolicyFlags:[I

    aput p3, p0, v1

    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x39
        :pswitch_15
        :pswitch_15
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public final setModifierKeyStatus(II)V
    .registers 4

    .line 173
    new-instance v0, Lcom/android/server/accessibility/SamsungStickyKeys$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/SamsungStickyKeys$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungStickyKeys;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungStickyKeys;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 467
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 468
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungStickyKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
