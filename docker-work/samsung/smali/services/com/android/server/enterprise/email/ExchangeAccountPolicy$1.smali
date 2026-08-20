.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

.field public final synthetic val$sync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V
    .registers 3

    .line 1193
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo p1, "userid"

    const/4 v0, -0x1

    .line 1196
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 1197
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "deviceid"

    .line 1198
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "com.samsung.android.knox.intent.extra.DEVICE_ID_INTERNAL"

    .line 1200
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    const-string p2, "ExchangeAccountPolicy"

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId() : receive userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , deviceid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-static {}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$sfgetmDeviceId()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    monitor-enter p1

    .line 1206
    :try_start_48
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1207
    monitor-exit p1

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw p0
.end method
