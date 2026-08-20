.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$DiagnosticReportListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    return-void
.end method


# virtual methods
.method public final onReportAdded(I)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->processReport(I)V

    return-void
.end method
