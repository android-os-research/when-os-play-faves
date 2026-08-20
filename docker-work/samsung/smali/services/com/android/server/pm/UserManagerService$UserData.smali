.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserData"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public info:Landroid/content/pm/UserInfo;

.field public mIgnorePrepareStorageErrors:Z

.field public mLastRequestQuietModeEnabledMillis:J

.field public persistSeedData:Z

.field public seedAccountName:Ljava/lang/String;

.field public seedAccountOptions:Landroid/os/PersistableBundle;

.field public seedAccountType:Ljava/lang/String;

.field public startRealtime:J

.field public unlockRealtime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSeedAccountData()V
    .registers 2

    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 452
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 453
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    return-void
.end method

.method public getIgnorePrepareStorageErrors()Z
    .registers 1

    .line 432
    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    return p0
.end method

.method public getLastRequestQuietModeEnabledMillis()J
    .registers 3

    .line 428
    iget-wide v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    return-wide v0
.end method

.method public setIgnorePrepareStorageErrors()V
    .registers 3

    .line 442
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    return-void

    :cond_a
    const-string p0, "UserManagerService"

    const-string v0, "Not setting mIgnorePrepareStorageErrors to true since this is a new device"

    .line 446
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLastRequestQuietModeEnabledMillis(J)V
    .registers 3

    .line 424
    iput-wide p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    return-void
.end method
