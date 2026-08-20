.class public Lcom/android/server/enterprise/security/SecurityPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field public final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .registers 3

    .line 803
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 807
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 808
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    monitor-enter p1

    .line 810
    :try_start_f
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fputmMediaFormatRet(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V

    .line 811
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$4;->val$lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_f .. :try_end_1a} :catch_1d
    .catchall {:try_start_f .. :try_end_1a} :catchall_1b

    goto :goto_24

    :catchall_1b
    move-exception p0

    goto :goto_26

    :catch_1d
    :try_start_1d
    const-string p0, "SecurityPolicy"

    const-string p2, "formatStorageCard - IllegalMonitorStateException"

    .line 813
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :goto_24
    monitor-exit p1

    goto :goto_28

    :goto_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1b

    throw p0

    :cond_28
    :goto_28
    return-void
.end method
