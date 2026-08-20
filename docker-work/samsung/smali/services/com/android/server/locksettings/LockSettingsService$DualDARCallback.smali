.class public final Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DualDARCallback"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LockSettingsService.DDAR"


# instance fields
.field public mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public static synthetic $r8$lambda$U4799UTqBxOPdkf-kLFgpjprcsM(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->lambda$binderDied$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvYiuqd_Cy7rY6D046LtoRu1y-M(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->lambda$new$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)V
    .registers 3

    .line 7222
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7223
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    .line 7225
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$binderDied$1(Landroid/os/IBinder;)V
    .registers 4

    const/4 v0, 0x0

    .line 7251
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_10

    :catch_5
    move-exception p1

    const-string v0, "LockSettingsService.DDAR"

    const-string v1, "Failed to unlink death listener"

    .line 7253
    invoke-static {v0, v1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 7254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    const/4 p1, 0x0

    .line 7256
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/IBinder;)V
    .registers 3

    const/4 v0, 0x0

    .line 7227
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_d

    :catch_5
    move-exception p0

    const-string p1, "LockSettingsService.DDAR"

    const-string v0, "Failed to link death listener..."

    .line 7229
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 7240
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public binderDied()V
    .registers 3

    .line 7249
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 7244
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    return-void
.end method

.method public get()Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    .registers 1

    .line 7236
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    return-object p0
.end method
