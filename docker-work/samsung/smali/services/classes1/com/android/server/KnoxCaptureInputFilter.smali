.class public Lcom/android/server/KnoxCaptureInputFilter;
.super Landroid/view/InputFilter;
.source "KnoxCaptureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final KNOXCAPTURE_HW_KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final KNOXCAPTURE_HW_KEY_SCAN_INPUT:Ljava/lang/String; = "scanInput"

.field public static final MSG_END_OF_SCAN:I = 0x354

.field public static final MSG_NEXT_KEY_EVENT:I = 0x353

.field public static final TAG:Ljava/lang/String;

.field public static final WAIT_TIME_FOR_LAST_SCAN_CHARACTER:J = 0x64L


# instance fields
.field public activeScanDeviceId:I

.field public activeScanInput:Ljava/lang/StringBuilder;

.field public final context:Landroid/content/Context;

.field public installed:Z

.field public final scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

.field public scannerDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBarcodeDataFromhw(Lcom/android/server/KnoxCaptureInputFilter;I[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/KnoxCaptureInputFilter;->updateBarcodeDataFromhw(I[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 30
    const-class v0, Lcom/android/server/KnoxCaptureInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.type"

    .line 35
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 53
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    .line 54
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ScanEventThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    .line 57
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanInput:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public markInputDeviceAsScanner(I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 63
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 64
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markInputDeviceAsScanner, inputDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1b
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 67
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 100
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 101
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", policyFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_26
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2e

    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_4b

    .line 107
    :cond_2e
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4b

    .line 108
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 109
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_4b

    .line 111
    :cond_48
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onInstalled()V
    .registers 3

    .line 81
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 82
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "KnoxCapture input filter installed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->installed:Z

    .line 85
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

.method public onUninstalled()V
    .registers 3

    .line 90
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 91
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    const-string v1, "KnoxCapture input filter uninstalled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->installed:Z

    .line 94
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    return-void
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 6

    .line 117
    iget v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const/16 v1, 0x354

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iget v2, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    if-ne v0, v2, :cond_30

    .line 127
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const/16 v2, 0x353

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    :cond_30
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unmarkInputDeviceAsScanner(I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 73
    sget-boolean v0, Lcom/android/server/KnoxCaptureInputFilter;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 74
    sget-object v0, Lcom/android/server/KnoxCaptureInputFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmarkInputDeviceAsScanner, inputDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1b
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateBarcodeDataFromhw(I[B)V
    .registers 6

    const-string v0, "content://com.samsung.android.bbc.bbcagent/knoxCapture/updateBarcodeDataFromhw"

    .line 135
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "scanInput"

    .line 139
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 140
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
