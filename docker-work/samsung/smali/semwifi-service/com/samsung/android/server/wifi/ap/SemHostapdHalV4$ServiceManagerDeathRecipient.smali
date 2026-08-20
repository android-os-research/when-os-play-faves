.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;
.super Ljava/lang/Object;
.source "SemHostapdHalV4.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceManagerDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;


# direct methods
.method public static synthetic $r8$lambda$CXj_n7Kuj-jGlFFOw1acCdaBjZ4(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->lambda$serviceDied$0(J)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)V

    return-void
.end method

.method private synthetic lambda$serviceDied$0(J)V
    .registers 7

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceManager died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fputmIServiceManager(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;)V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fgetmLocalHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw p0
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV4$ServiceManagerDeathRecipient;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
