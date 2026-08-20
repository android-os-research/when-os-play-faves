.class public Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
.super Lcom/android/internal/app/ISoundTriggerService$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundTriggerServiceStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attachAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .registers 6

    .line 254
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    invoke-static {v0, v1, p2, p1}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 257
    :try_start_a
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p2, p0, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    if-eqz p1, :cond_16

    .line 258
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_16
    return-object p2

    :catchall_17
    move-exception p0

    if-eqz p1, :cond_22

    .line 254
    :try_start_1a
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw p0
.end method

.method public attachAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .registers 4

    .line 244
    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 246
    :try_start_4
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {v0, p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 247
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_10
    return-object v0

    :catchall_11
    move-exception p0

    if-eqz p1, :cond_1c

    .line 244
    :try_start_14
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw p0
.end method
