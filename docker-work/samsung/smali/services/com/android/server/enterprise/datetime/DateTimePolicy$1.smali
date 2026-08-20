.class public Lcom/android/server/enterprise/datetime/DateTimePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/datetime/DateTimePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "DateTimePolicyService"

    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 600
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 601
    iget-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-$$Nest$fgetmNtpInfoLock(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 604
    :try_start_1c
    iget-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-$$Nest$fgetmNtpInfo(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object p2

    if-eqz p2, :cond_35

    iget-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-$$Nest$fgetmNtpInfo(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 605
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-$$Nest$msendBroadcastToNtpServices(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    .line 607
    :cond_35
    monitor-exit p1

    goto :goto_3a

    :catchall_37
    move-exception p0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method
