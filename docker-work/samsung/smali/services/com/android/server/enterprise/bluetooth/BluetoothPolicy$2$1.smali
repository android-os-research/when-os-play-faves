.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

.field public final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;Landroid/os/ConditionVariable;)V
    .registers 3

    .line 373
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->this$1:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 378
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_11

    .line 380
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_11
    return-void
.end method
