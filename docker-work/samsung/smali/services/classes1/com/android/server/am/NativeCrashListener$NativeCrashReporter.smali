.class public Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/NativeCrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeCrashReporter"
.end annotation


# instance fields
.field public mApp:Lcom/android/server/am/ProcessRecord;

.field public mCrashReport:Ljava/lang/String;

.field public mSignal:I

.field public final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method public constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V
    .registers 5

    .line 69
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    const-string p1, "NativeCrashReport"

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 72
    iput p3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    .line 73
    iput-object p4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string/jumbo v0, "unknown"

    .line 79
    :try_start_3
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    const-string v2, "Native crash"

    .line 80
    iput-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 81
    iget v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    invoke-static {v2}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 82
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 83
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 84
    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    iput-object v0, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    iget-object v0, v0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "native_crash"

    iget-object p0, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->handleApplicationCrashInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p0

    const-string v0, "NativeCrashListener"

    const-string v1, "Unable to report native crash"

    .line 91
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void
.end method
