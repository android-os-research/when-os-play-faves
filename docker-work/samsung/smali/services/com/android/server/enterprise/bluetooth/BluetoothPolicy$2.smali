.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;
.super Ljava/lang/Thread;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 369
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 370
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 373
    new-instance v3, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;Landroid/os/ConditionVariable;)V

    .line 385
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-wide/16 v3, 0x2710

    .line 386
    invoke-virtual {v0, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    if-eqz v2, :cond_28

    .line 389
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_28
    return-void
.end method
