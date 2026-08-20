.class public final Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;
.super Landroid/app/tare/IEconomyManager$Stub;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EconomyManagerStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 2

    .line 826
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Landroid/app/tare/IEconomyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 832
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "TARE-IRS"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    const/4 p1, 0x1

    .line 835
    invoke-static {p3}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5b

    .line 836
    aget-object p3, p3, v1

    const-string v0, "-h"

    .line 837
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "--help"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_57

    :cond_2a
    const-string v0, "-a"

    .line 840
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move p1, v1

    goto :goto_5b

    .line 844
    :cond_34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5b

    .line 845
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 838
    :cond_57
    :goto_57
    invoke-static {p2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 850
    :cond_5b
    :goto_5b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 852
    :try_start_5f
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$EconomyManagerStub;->this$0:Lcom/android/server/tare/InternalResourceService;

    new-instance p3, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {p3, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {p0, p3, p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mdumpInternal(Lcom/android/server/tare/InternalResourceService;Landroid/util/IndentingPrintWriter;Z)V
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_6f

    .line 854
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    throw p0
.end method
