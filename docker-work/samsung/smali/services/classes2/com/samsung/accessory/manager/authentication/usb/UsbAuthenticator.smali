.class public Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "UsbAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
    }
.end annotation


# static fields
.field public static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field public static final AUTH_TIMEOUT:J = 0x2710L

.field public static final COMPONENT_NAME_KES:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field public static final COMPONENT_NAME_KES_RECEIVER:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

.field public static final DBG:Z

.field public static final ERROR_RESTART_TIME_MS:I = 0xc8

.field public static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field public static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field public static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public USB_ATTACHED:I

.field public USB_DETACHED:I

.field public final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field public mContext:Landroid/content/Context;

.field public mCoverType:I

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public mFailuresCount:I

.field public mIsFactoryBinary:Z

.field public volatile mIsShutingdown:Z

.field public mLastAttachTime:J

.field public volatile mLastAuthenticationTime:J

.field public mLastDetachTime:J

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field public mRetryCounterFactoryTest:I

.field public mRetryCounterWhenBusy:I

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSystemReady:Z

.field public mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public mUriData:[B

.field public mUsbAttachedWhenNanos:J

.field public mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

.field public mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public usbState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbAuthHandler(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCounterWhenBusy(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->handleAuthStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->initialize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleAuthenticationTimeOuts(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUsbVerified(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZJ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    .line 36
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .registers 7

    .line 273
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAuthenticationTime:J

    .line 58
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    .line 59
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    .line 60
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 65
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterFactoryTest:I

    .line 66
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    .line 68
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_ATTACHED:I

    const/4 v2, 0x1

    .line 69
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    .line 71
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsShutingdown:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 76
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    .line 77
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    const/4 v0, 0x2

    .line 78
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCoverType:I

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 82
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 274
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    .line 275
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 277
    new-instance p1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    return-void
.end method


# virtual methods
.method public addRecord(II)V
    .registers 5

    .line 411
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/16 v0, 0x3c

    if-le p2, v0, :cond_f

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 412
    :cond_f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current UsbAuthenticator state:"

    .line 422
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz p1, :cond_27

    .line 426
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  auth reason = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    const-string p1, "  Historical authentication: "

    .line 431
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 432
    :goto_2d
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-ge p1, p3, :cond_54

    .line 433
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 437
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastAuthenticationTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastAttachTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastDetachTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleAuthResponse(Landroid/os/Message;)V
    .registers 13

    .line 180
    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 187
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 188
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reason"

    .line 191
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_44

    move v3, v4

    goto/16 :goto_b2

    :cond_44
    if-ne v1, v4, :cond_4b

    :goto_46
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_b2

    :cond_4b
    const/16 v5, 0xb

    if-eq v1, v5, :cond_ac

    const/16 v5, 0x1e

    if-ne v1, v5, :cond_54

    goto :goto_ac

    :cond_54
    const/16 v0, 0x1f

    const/4 v5, 0x2

    if-ne v1, v0, :cond_62

    .line 208
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 209
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_b1

    :cond_62
    const/16 v0, 0xc

    if-ne v1, v0, :cond_6f

    .line 212
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 213
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_46

    :cond_6f
    const/16 v0, 0xd

    const/4 v6, 0x5

    if-ne v1, v0, :cond_9a

    .line 216
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    if-ge v0, v5, :cond_8f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 217
    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 218
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v5, 0x1

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x1388

    move-object v4, p0

    .line 220
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJJ)V

    goto :goto_b1

    .line 222
    :cond_8f
    iput v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 223
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 224
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_46

    :cond_9a
    const/16 v0, 0x5a

    if-ne v1, v0, :cond_b1

    const-wide/16 v4, 0x12c

    .line 229
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 230
    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V

    goto :goto_b1

    :cond_ac
    :goto_ac
    const-string v4, "do nothing.."

    .line 205
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    :goto_b1
    move v4, v3

    .line 234
    :goto_b2
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->addRecord(II)V

    if-eqz v3, :cond_c3

    .line 236
    invoke-virtual {p0, v4, v2, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    const-wide/16 v0, 0x0

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->stopAuthentication(J)V

    .line 240
    :cond_c3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final handleAuthStart()V
    .registers 6

    .line 244
    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_26

    if-eq v1, v3, :cond_26

    const-string/jumbo v1, "session is busy"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 256
    :cond_26
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v1, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v1

    if-ne v1, v2, :cond_4b

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    const-string v4, "connectivity_type"

    .line 260
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v1, v0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_54

    .line 266
    :cond_4b
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v1, v0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    .line 270
    :goto_54
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final initialize()V
    .registers 6

    .line 280
    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize usb authenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    .line 285
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 286
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    .line 287
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 288
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DetachTimeoutWakeLock"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 290
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 292
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    .line 293
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->authenticationReady()V

    return-void
.end method

.method public final isAuthenticationReady()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsShutingdown:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final notifyFriendsStateChanged(Z[B[B)Z
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    .line 382
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 384
    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_53

    .line 385
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    .line 387
    :try_start_15
    new-instance p3, Landroid/content/ComponentName;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "accessoryType"

    .line 389
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCoverType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "accessoryState"

    if-eqz p1, :cond_35

    const/16 p1, 0x3e9

    goto :goto_37

    :cond_35
    const/16 p1, 0x3ea

    .line 390
    :goto_37
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "accessoryUid"

    .line 391
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "from"

    const-string p2, "com.samsung.accessory.manager.authentication"

    .line 392
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4b} :catch_4c

    goto :goto_53

    .line 395
    :catch_4c
    sget-object p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string p1, "error during starting KES service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    const/4 p0, 0x1

    return p0
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsbAttached(JZ)V
    .registers 8

    .line 298
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mIsFactoryBinary:Z

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_47

    :cond_b
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_20

    .line 301
    iget p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_ATTACHED:I

    iput p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    .line 302
    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastAttachTime:J

    const/4 p1, 0x1

    .line 304
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication(ZJ)V

    goto :goto_47

    .line 307
    :cond_20
    iget p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    iput p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    .line 308
    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAttachedWhenNanos:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_34

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x1dcd6500

    cmp-long p1, p1, v2

    if-gez p1, :cond_34

    const-wide/16 v0, 0x1f4

    .line 312
    :cond_34
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mLastDetachTime:J

    const/4 p1, 0x0

    .line 314
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mFailuresCount:I

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->stopAuthentication(J)V

    :cond_47
    :goto_47
    return-void
.end method

.method public removeAuthenticationTimeOuts()V
    .registers 2

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 348
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final scheduleAuthenticationTimeOuts(J)V
    .registers 4

    .line 342
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 343
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setUsbVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 6

    .line 362
    sget-object v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbVerified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_10

    .line 364
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCoverType:I

    :cond_10
    if-eqz p1, :cond_3b

    .line 367
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    if-eqz p2, :cond_44

    .line 368
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    if-eqz p1, :cond_44

    array-length p3, p1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_44

    const/4 p3, 0x1

    .line 369
    aget-byte v0, p1, p3

    const/16 v1, 0x11

    if-lt v0, v1, :cond_44

    const/16 v1, 0x20

    if-ge v0, v1, :cond_44

    .line 370
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    goto :goto_44

    :cond_3b
    const/4 p1, 0x0

    .line 374
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    .line 375
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUriData:[B

    :cond_44
    :goto_44
    return-void
.end method

.method public final startAuthentication(ZJ)V
    .registers 6

    .line 320
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_17

    const-wide/16 v0, 0x6978

    .line 324
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    const/4 p1, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 328
    :cond_17
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final startAuthentication(ZJJ)V
    .registers 8

    .line 331
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 333
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_12

    .line 335
    invoke-virtual {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    .line 338
    :cond_12
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final stopAuthentication(J)V
    .registers 5

    .line 352
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 353
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 407
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
