.class public Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "KnoxGuardSeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 564
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRemoteLockState data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkRemoteLockPassword([B)I
    .registers 3

    .line 572
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkRemoteLockPassword"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 576
    :try_start_10
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setFailureCount(I)V

    .line 579
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetmFailureCount()I

    move-result p0

    if-nez p0, :cond_31

    .line 580
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[HOTP] pin is correct!"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 583
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$smunlockCompleted()V

    goto :goto_64

    .line 585
    :cond_31
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[HOTP] pin is wrong!!! current failure count ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetmFailureCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 586
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$smsetRemoteLockToLockscreen(Z)V
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_57

    goto :goto_64

    :catchall_57
    move-exception p0

    .line 589
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 590
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[HOTP] verify pin error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_64
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetmFailureCount()I

    move-result p0

    return p0
.end method
