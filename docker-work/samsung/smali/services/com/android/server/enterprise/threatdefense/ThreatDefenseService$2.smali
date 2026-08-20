.class public Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 683
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;->this$0:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 686
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 688
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ab

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_ab

    .line 691
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 693
    :try_start_16
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetsAllowedProcRules()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 694
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetsAllowedProcRules()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rules are removed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3f
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetsAllowedProcessProcRules()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 698
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetsAllowedProcessProcRules()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " process rules are removed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_68
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetsAllowedProcRules()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result p1

    if-nez p1, :cond_ab

    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetsAllowedProcessProcRules()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result p1

    if-nez p1, :cond_ab

    const-string/jumbo p1, "sys.mtdl.start"

    const-string p2, "false"

    .line 704
    invoke-static {p1, p2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_84} :catch_85

    goto :goto_ab

    :catch_85
    move-exception p1

    .line 707
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    return-void
.end method
