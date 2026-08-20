.class public Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;
.super Ljava/lang/Object;
.source "WifiGuiderManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;
    }
.end annotation


# static fields
.field private static final DBG_PROCESS_MESSAGE:Z = false

.field private static final INTENT_DATA_SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "WifiGuiderService"

.field private static final TIPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wifiguider"

.field private static final TIPS_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wifiguider.WifiGuiderService"

.field static final VERSION:Ljava/lang/String; = "2.2"


# instance fields
.field private final mCachedDiagnosisResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field final mDiagnosisClientMode:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIsRegistered:Z

.field private final mResultLock:Ljava/lang/Object;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCachedDiagnosisResults(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mCachedDiagnosisResults:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultLock(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mResultLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiIssueDetector(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRegistered(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mIsRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mResultLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mCachedDiagnosisResults:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mContext:Landroid/content/Context;

    .line 79
    new-instance p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mDiagnosisClientMode:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    .line 80
    iput-object p3, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 81
    iput-object p4, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mDiagnosisClientMode:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->start()V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->registerDiagnosticListener(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mDiagnosisClientMode:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, " - version=2.2"

    .line 101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " - cached diagnostics results"

    .line 102
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->getCachedDiagnosisResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    :cond_38
    return-void
.end method

.method public getCachedDiagnosisResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mCachedDiagnosisResults:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public handleUserUnlock(I)V
    .registers 4

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle user unlock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , mIsRegistered = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mIsRegistered:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiGuiderService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mIsRegistered:Z

    if-nez p1, :cond_27

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->checkAndStart()V

    :cond_27
    return-void
.end method

.method public processReport(I)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->mDiagnosisClientMode:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->processReport(I)V

    return-void
.end method
