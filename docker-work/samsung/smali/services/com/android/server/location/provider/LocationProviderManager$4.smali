.class public Lcom/android/server/location/provider/LocationProviderManager$4;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$newRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .registers 3

    .line 2256
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 4

    .line 2259
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2260
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v1}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fgetmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    if-ne v1, p0, :cond_1a

    .line 2261
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->-$$Nest$fputmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2262
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    .line 2264
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p0
.end method
