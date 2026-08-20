.class public final Lcom/android/server/policy/SingleKeyGestureDetector;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;,
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;,
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyGestureFlag;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LONGPRESS:I = 0x2

.field public static final KEY_VERYLONGPRESS:I = 0x4

.field public static final MSG_KEY_DELAYED_PRESS:I = 0x2

.field public static final MSG_KEY_LONG_PRESS:I = 0x0

.field public static final MSG_KEY_VERY_LONG_PRESS:I = 0x1

.field public static final MULTI_PRESS_TIMEOUT:J

.field public static final SEC_MULTI_PRESS_MIN_TIMEOUT:I = 0x32

.field public static final SEC_MULTI_PRESS_TIMEOUT:I = 0xaa

.field public static final TAG:Ljava/lang/String; = "SingleKeyGesture"

.field public static mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public static sDefaultLongPressTimeout:J

.field public static sDefaultMultiPressTimeout:J

.field public static sDefaultVeryLongPressTimeout:J


# instance fields
.field public mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public mBeganFromNonInteractive:Z

.field public mDownKeyCode:I

.field public volatile mHandledByLongPress:Z

.field public final mHandler:Landroid/os/Handler;

.field public mKeyPressCounter:I

.field public volatile mKeyReleaseTime:J

.field public mLastDownTime:J

.field public mLastUpTime:J

.field public final mRules:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;",
            ">;"
        }
    .end annotation
.end field

.field public mTriggeredMultiPressTime:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriggeredMultiPressTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmKeyCustomizationPolicy()Lcom/android/server/policy/KeyCustomizationManager;
    .registers 1

    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 66
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

    const/4 v1, 0x4

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x18

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x19

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4f

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xaa

    .line 111
    sput-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 77
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    const-wide/16 v1, 0x0

    .line 80
    iput-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    const/4 v3, 0x0

    .line 99
    iput-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 102
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 103
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 105
    iput-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 118
    iput-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 377
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static get(Landroid/content/Context;Lcom/android/server/policy/KeyCustomizationManager;)Lcom/android/server/policy/SingleKeyGestureDetector;
    .registers 5

    .line 362
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;-><init>()V

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e0135

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 369
    sput-object p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 370
    sget-wide p0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    sput-wide p0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    return-object v0
.end method


# virtual methods
.method public addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 3

    .line 383
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public beganFromNonInteractive()Z
    .registers 1

    .line 702
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SingleKey rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 721
    :goto_15
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 722
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_3f
    return-void
.end method

.method public final getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;
    .registers 5

    .line 895
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)V

    return-object v0
.end method

.method public getKeyPressCounter(I)I
    .registers 3

    .line 653
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v0, p1, :cond_b

    .line 654
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getMultiPressTimeout(I)J
    .registers 2

    .line 862
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_d

    const-wide/16 p0, 0x0

    return-wide p0

    .line 866
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMultiPressTimeoutMs()J

    move-result-wide p0

    return-wide p0
.end method

.method public hasRule(I)Z
    .registers 2

    .line 822
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 826
    :cond_c
    invoke-static {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result p0

    return p0
.end method

.method public initLongPressTimeout(I)V
    .registers 4

    .line 838
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const-wide/16 v0, 0x0

    .line 842
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->setLongPressTimeoutMs(J)V

    return-void
.end method

.method public initMultiPressTimeout(I)V
    .registers 4

    .line 854
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const-wide/16 v0, 0x0

    .line 858
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->setMultiPressTimeout(J)V

    return-void
.end method

.method public interceptKey(Landroid/view/KeyEvent;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKey(Landroid/view/KeyEvent;ZI)V

    return-void
.end method

.method public interceptKey(Landroid/view/KeyEvent;ZI)V
    .registers 6

    .line 394
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 396
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_14

    :cond_10
    xor-int/lit8 p2, p2, 0x1

    .line 397
    iput-boolean p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 399
    :cond_14
    invoke-virtual {p0, p1, p3}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_1b

    .line 404
    :cond_18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyUp(Landroid/view/KeyEvent;I)Z

    :goto_1b
    return-void
.end method

.method public final interceptKeyDown(Landroid/view/KeyEvent;I)V
    .registers 15

    .line 415
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 417
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    const-string v2, "SingleKeyGesture"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v0, :cond_70

    .line 418
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_6f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 419
    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$msupportLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 421
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->hasExtensionLongPressTimeout()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 423
    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Long press key "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_48
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 439
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    move-result-object p1

    .line 435
    invoke-virtual {v0, v3, v1, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 441
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 442
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6f
    return-void

    :cond_70
    if-nez v1, :cond_7c

    .line 448
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_9b

    .line 449
    invoke-static {v1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 450
    :cond_7c
    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_98

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Press another key "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 455
    :cond_9b
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 458
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const-wide/16 v5, 0x0

    if-nez v1, :cond_cf

    .line 471
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_cd

    .line 472
    invoke-static {v1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 473
    sget-boolean v7, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v7, :cond_cb

    .line 474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intercept key by rule "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_cb
    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 479
    :cond_cd
    iput-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 481
    :cond_cf
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_d4

    return-void

    .line 487
    :cond_d4
    invoke-virtual {v1, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyDown(Landroid/view/KeyEvent;)V

    .line 491
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    sub-long/2addr v7, v9

    .line 495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 496
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 498
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMultiPressTimeoutMs()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-ltz v1, :cond_f1

    .line 500
    iput v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    goto :goto_f6

    .line 502
    :cond_f1
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 507
    :goto_f6
    iput-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 509
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-ne v1, v4, :cond_fe

    .line 510
    iput-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    :cond_fe
    if-ne v1, v4, :cond_150

    .line 515
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$msupportLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 516
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 519
    invoke-virtual {p0, v2, v5, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    move-result-object v2

    .line 516
    invoke-virtual {v1, v3, v0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 521
    invoke-virtual {v1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 522
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v5

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    :cond_127
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$msupportVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_22b

    .line 526
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 529
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    move-result-object p1

    .line 526
    invoke-virtual {v1, v4, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 531
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 532
    iget-object p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getVeryLongPressTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_22b

    .line 535
    :cond_150
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    if-eqz v1, :cond_1b6

    const/high16 v1, 0x1000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_16a

    move v3, v4

    .line 543
    :cond_16a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    if-nez v3, :cond_1b6

    .line 544
    iget-wide v10, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    cmp-long v1, v10, v5

    if-eqz v1, :cond_1b6

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    const-wide/16 v10, 0x32

    add-long/2addr v5, v10

    cmp-long v1, v8, v5

    if-gez v1, :cond_1b6

    .line 546
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptKeyDown keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyReleaseTime("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") -  eventTime("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    sub-long/2addr v8, v5

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_1b6
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-le v1, v4, :cond_1d6

    .line 553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger multi press, mTriggeredMultiPressTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1d6
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v1

    if-le v1, v4, :cond_22b

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 561
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v3

    if-ne v1, v3, :cond_22b

    .line 562
    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_210

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger multi press "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for it reached the max count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_210
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 570
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    move-result-object p1

    .line 566
    invoke-virtual {v1, v7, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 572
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 573
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_22b
    :goto_22b
    return-void
.end method

.method public final interceptKeyUp(Landroid/view/KeyEvent;I)Z
    .registers 11

    .line 582
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 585
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v0, :cond_13

    return v1

    .line 590
    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v0, v4, :cond_20

    .line 591
    invoke-virtual {v3, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(Landroid/view/KeyEvent;)V

    .line 595
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2c

    .line 596
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 597
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 598
    iput-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v2

    .line 602
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v5, v4, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v0, v5, :cond_c8

    .line 604
    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_80

    .line 605
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_60

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "press key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleKeyGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_60
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 612
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    move-result-object p1

    .line 608
    invoke-virtual {v0, v4, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 614
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 615
    iget-object p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    iput-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v2

    .line 621
    :cond_80
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v3

    if-ge v0, v3, :cond_af

    .line 622
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v3, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 626
    invoke-virtual {p0, v6, v7, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyHandlerObj(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    move-result-object v6

    .line 622
    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 628
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 629
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 631
    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMultiPressTimeoutMs()J

    move-result-wide v4

    .line 629
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 636
    :cond_af
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 638
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    if-eqz v0, :cond_c7

    const/high16 v0, 0x1000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_bf

    move v1, v2

    :cond_bf
    if-nez v1, :cond_c7

    .line 642
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    :cond_c7
    return v2

    .line 648
    :cond_c8
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return v1
.end method

.method public isKeyIntercepted(I)Z
    .registers 2

    .line 698
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public removeRule(I)V
    .registers 2

    .line 818
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public reset()V
    .registers 5

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActiveRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Callers(5)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 664
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleKeyGesture"

    .line 663
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 669
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_44

    .line 670
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    :cond_44
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-lez v0, :cond_50

    .line 675
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    :cond_50
    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const-wide/16 v2, 0x0

    .line 682
    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 684
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    if-eqz v0, :cond_5d

    .line 685
    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 688
    :cond_5d
    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 693
    :cond_5f
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 694
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    return-void
.end method

.method public setBeganFromNonInteractive(Z)V
    .registers 4

    .line 707
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBeganFromNonInteractive old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleKeyGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_25
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    return-void
.end method

.method public setLongPressTimeout(IJ)V
    .registers 4

    .line 830
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_b

    return-void

    .line 834
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->setLongPressTimeoutMs(J)V

    return-void
.end method

.method public setMultiPressTimeout(IJ)V
    .registers 4

    .line 846
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_b

    return-void

    .line 850
    :cond_b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->setMultiPressTimeout(J)V

    return-void
.end method
