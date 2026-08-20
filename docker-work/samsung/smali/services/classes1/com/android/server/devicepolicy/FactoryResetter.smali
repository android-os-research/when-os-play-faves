.class public final Lcom/android/server/devicepolicy/FactoryResetter;
.super Ljava/lang/Object;
.source "FactoryResetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FactoryResetter"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForce:Z

.field public final mReason:Ljava/lang/String;

.field public final mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public final mShutdown:Z

.field public final mWipeAdoptableStorage:Z

.field public final mWipeEuicc:Z

.field public final mWipeFactoryResetProtection:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter;)Landroid/app/admin/DevicePolicySafetyChecker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfactoryResetInternalUnchecked(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V
    .registers 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmContext(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 154
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmReason(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmShutdown(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 156
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmForce(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    .line 157
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmWipeEuicc(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    .line 158
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmWipeAdoptableStorage(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 159
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmWipeFactoryResetProtection(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;Lcom/android/server/devicepolicy/FactoryResetter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter;-><init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .registers 3

    .line 166
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/devicepolicy/FactoryResetter$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public factoryReset()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/FactoryResetter;->setFactoryResetting(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-nez v0, :cond_1f

    .line 71
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    return v1

    .line 75
    :cond_1f
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$1;-><init>(Lcom/android/server/devicepolicy/FactoryResetter;)V

    .line 87
    sget-object v3, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    aput-object v4, v1, v2

    const-string v4, "Delaying factory reset until %s confirms"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-interface {p0, v0}, Landroid/app/admin/DevicePolicySafetyChecker;->onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V

    return v2
.end method

.method public final factoryResetInternalUnchecked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "factoryReset(): reason=%s, shutdown=%b, force=%b, wipeEuicc=%b, wipeAdoptableStorage=%b, wipeFRP=%b"

    .line 122
    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 127
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-nez v2, :cond_5c

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_5c

    .line 128
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Factory reset is not allowed for this user."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_5c
    :goto_5c
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz v1, :cond_7a

    .line 132
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v1, :cond_75

    const-string v2, "Wiping factory reset protection"

    .line 135
    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    goto :goto_7a

    :cond_75
    const-string v1, "No need to wipe factory reset protection"

    .line 138
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_7a
    :goto_7a
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v1, :cond_90

    const-string v1, "Wiping adoptable storage"

    .line 143
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 145
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 148
    :cond_90
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v0, v1, v2, v3, p0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactoryResetter["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string/jumbo v1, "no_reason"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_12
    const-string/jumbo v1, "reason=\'"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_22
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v1, :cond_2b

    const-string v1, ",hasSafetyChecker"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2b
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    if-eqz v1, :cond_34

    const-string v1, ",shutdown"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-eqz v1, :cond_3d

    const-string v1, ",force"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_3d
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    if-eqz v1, :cond_46

    const-string v1, ",wipeEuicc"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_46
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v1, :cond_4f

    const-string v1, ",wipeAdoptableStorage"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_4f
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz p0, :cond_58

    const-string p0, ",ipeFactoryResetProtection"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    const/16 p0, 0x5d

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
