.class public final Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;
.super Landroid/media/INativeSpatializerCallback$Stub;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SpatializerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/media/INativeSpatializerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$SpatializerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onLevelChanged(B)V
    .registers 4

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpatializerCallback.onLevelChanged level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smloglogi(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    monitor-enter v0

    .line 432
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smspatializationLevelToSpatializerInt(B)I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fputmSpatLevel(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 433
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_27

    .line 437
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V

    return-void

    :catchall_27
    move-exception p0

    .line 433
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public onOutputChanged(I)V
    .registers 5

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpatializerCallback.onOutputChanged output:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smloglogi(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    monitor-enter v0

    .line 444
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fgetmSpatOutput(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v1

    .line 445
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v2, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$fputmSpatOutput(Lcom/android/server/audio/SpatializerHelper;I)V

    .line 446
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_2b

    if-eq v1, p1, :cond_2a

    .line 448
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0, p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mdispatchOutputUpdate(Lcom/android/server/audio/SpatializerHelper;I)V

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 446
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method
