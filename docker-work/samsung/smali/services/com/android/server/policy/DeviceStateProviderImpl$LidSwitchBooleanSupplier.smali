.class public final Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LidSwitchBooleanSupplier"
.end annotation


# instance fields
.field public final mExpectedOpen:Z

.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V
    .registers 3

    .line 498
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-boolean p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 505
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 515
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    if-ne v1, p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    monitor-exit v0

    return p0

    .line 512
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Have not received lid switch value."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2a
    move-exception p0

    .line 516
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw p0
.end method
