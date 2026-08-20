.class public Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;
.super Ljava/util/TimerTask;
.source "ThreatDefenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$fgetmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    move-result-object v0

    if-nez v0, :cond_12

    .line 179
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    new-instance v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    invoke-direct {v1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$fputmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;)V

    .line 180
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-static {v0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$fgetmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->schedule()V

    .line 183
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-static {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$mresetPackageRules(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    return-void
.end method
