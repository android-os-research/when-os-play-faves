.class Landroid/os/HapticPlayer$1;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/HapticPlayer;->start(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/HapticPlayer;

.field final synthetic blacklist val$amplitude:I

.field final synthetic blacklist val$freq:I

.field final synthetic blacklist val$interval:I


# direct methods
.method constructor blacklist <init>(Landroid/os/HapticPlayer;III)V
    .registers 5
    .param p1, "this$0"    # Landroid/os/HapticPlayer;

    .line 136
    iput-object p1, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    iput p2, p0, Landroid/os/HapticPlayer$1;->val$interval:I

    iput p3, p0, Landroid/os/HapticPlayer$1;->val$amplitude:I

    iput p4, p0, Landroid/os/HapticPlayer$1;->val$freq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 11

    .line 139
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 140
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    .line 141
    .local v0, "attrs":Landroid/os/VibrationAttributes;
    iget-object v1, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v1}, Landroid/os/HapticPlayer;->-$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Landroid/os/HapticPlayer$1;->val$interval:I

    iget v4, p0, Landroid/os/HapticPlayer$1;->val$amplitude:I

    iget v5, p0, Landroid/os/HapticPlayer$1;->val$freq:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/HapticPlayer;->-$$Nest$mcreateStepEffect(Landroid/os/HapticPlayer;Ljava/util/List;III)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 142
    .local v8, "effect":Landroid/os/VibrationEffect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicEffect_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v2}, Landroid/os/HapticPlayer;->-$$Nest$fgetmLoop(Landroid/os/HapticPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "reason":Ljava/lang/String;
    :try_start_38
    invoke-static {}, Landroid/os/HapticPlayer;->-$$Nest$sfgetmService()Landroid/os/IVibratorManagerService;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v8}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v4

    iget-object v5, p0, Landroid/os/HapticPlayer$1;->this$0:Landroid/os/HapticPlayer;

    invoke-static {v5}, Landroid/os/HapticPlayer;->-$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;

    move-result-object v7

    .line 144
    move-object v5, v0

    move-object v6, v9

    invoke-interface/range {v1 .. v7}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_53} :catch_54

    .line 148
    goto :goto_5c

    .line 146
    :catch_54
    move-exception v1

    .line 147
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HapticPlayer"

    const-string v3, "Failed to start vibrate."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5c
    return-void
.end method
