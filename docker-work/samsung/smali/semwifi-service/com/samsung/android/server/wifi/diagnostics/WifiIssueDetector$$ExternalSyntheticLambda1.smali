.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/util/LogUtils;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/util/LogUtils;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/util/LogUtils;

    check-cast p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->$r8$lambda$DDNvUVPUG-HSglBcEmGKqmnge5I(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/util/LogUtils;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    return-void
.end method
