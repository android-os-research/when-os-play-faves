.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    iput-wide p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->$r8$lambda$PW7LBNC6QtcsHnr0pTKQmKPTMWI(Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method
