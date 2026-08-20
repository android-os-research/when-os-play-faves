.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

.field public final synthetic val$lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/Object;)V
    .registers 3

    .line 2505
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 p1, 0x1

    .line 2508
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "smsBlockHandler"

    const/4 v1, 0x0

    .line 2510
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, p1, :cond_1c

    .line 2512
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 2513
    :try_start_12
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2514
    monitor-exit p1

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method
