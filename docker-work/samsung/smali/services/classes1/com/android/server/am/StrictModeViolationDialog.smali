.class public final Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# static fields
.field public static final ACTION_OK:I = 0x0

.field public static final ACTION_OK_AND_REPORT:I = 0x1

.field public static final DISMISS_TIMEOUT:J = 0xea60L

.field public static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mResult:Lcom/android/server/am/AppErrorResult;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmProc(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResult(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .registers 9

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Lcom/android/server/am/StrictModeViolationDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    iput-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iput-object p4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 57
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 59
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/PackageList;->size()I

    move-result p2

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-ne p2, p3, :cond_46

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_46

    const p2, 0x1040d92

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    iget-object p1, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object p1, v3, p3

    .line 61
    invoke-virtual {v1, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 65
    :cond_46
    iget-object p1, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const p2, 0x1040d93

    new-array v3, p3, [Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 66
    invoke-virtual {v1, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    :goto_5a
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 p1, -0x1

    const p2, 0x104045c

    .line 74
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 75
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 73
    invoke-virtual {p0, p1, p2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 77
    iget-object p1, p4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_98

    :try_start_74
    const-string/jumbo p1, "restriction_policy"

    .line 82
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 83
    iget p2, p4, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result p1

    if-eqz p1, :cond_98

    const/4 p1, -0x2

    const p2, 0x1040b80

    .line 85
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 86
    invoke-virtual {v0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_98} :catch_98

    .line 100
    :catch_98
    :cond_98
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Strict Mode Violation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, 0xea60

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
