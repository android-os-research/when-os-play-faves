.class Lcom/android/internal/telephony/ims/ImsServiceController$2;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 315
    monitor-exit v0

    return-void

    .line 317
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$2;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/Set;Landroid/util/SparseIntArray;)Z

    .line 318
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p0
.end method
