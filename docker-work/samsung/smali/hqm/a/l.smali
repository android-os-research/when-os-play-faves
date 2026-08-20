.class public La/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "com.samsung.context.hqmbigdata.intent"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, La/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/l;->a:Ljava/lang/String;

    new-instance v0, La/k;

    invoke-direct {v0, p0}, La/k;-><init>(La/l;)V

    iput-object v0, p0, La/l;->c:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, La/l;->b:Landroid/content/Context;

    invoke-direct {p0}, La/l;->c()V

    return-void
.end method

.method private c()V
    .registers 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, La/l;->b:Landroid/content/Context;

    iget-object v1, p0, La/l;->c:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 14

    iget-object v0, p0, La/l;->a:Ljava/lang/String;

    const-string v1, "exampleIntent - start"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HWParamParcel;

    invoke-direct {v0}, Landroid/os/HWParamParcel;-><init>()V

    const/4 v3, 0x0

    const-string v4, "Power-Intent"

    const-string v5, "POWE-I"

    const-string v6, "sm"

    const-string v7, "0.0"

    const-string v8, "sec"

    const-string v9, "\"key1\":\"value1\",\"key2\":\"value2\""

    const-string v10, "\"key3\":\"value3\",\"key4\":\"value4\""

    const-string v11, "\"key5\":\"value5\",\"key6\":\"value6\""

    const-string v12, ""

    move-object v2, v0

    invoke-virtual/range {v2 .. v12}, Landroid/os/HWParamParcel;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.context.hqmbigdata.intent"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "hwparam"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, La/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, La/l;->a:Ljava/lang/String;

    const-string v0, "exampleIntent - end"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 12

    iget-object v0, p0, La/l;->a:Ljava/lang/String;

    const-string v1, "examplePublicAPI - start"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/l;->b:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/SemHqmManager;

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    const-string v3, "Power-API"

    const-string v4, "POWE-A"

    const-string v5, "sm"

    const-string v6, "0.0"

    const-string v7, "sec"

    const-string v8, "\"key1\":\"value1\",\"key2\":\"value2\""

    const-string v9, "\"key3\":\"value3\",\"key4\":\"value4\""

    const-string v10, "\"key5\":\"value5\",\"key6\":\"value6\""

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_28
    iget-object p0, p0, La/l;->a:Ljava/lang/String;

    const-string v0, "examplePublicAPI - end"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
