.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"

# interfaces
.implements Lcom/android/server/pm/pkg/mutate/PackageStateWrite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateWriteWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;
    }
.end annotation


# instance fields
.field public mState:Lcom/android/server/pm/PackageSetting;

.field public final mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;-><init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_7

    .line 183
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_7
    return-void
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;

    :cond_7
    return-object p0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_b

    .line 198
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_b
    return-object p0
.end method

.method public setInstaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_7

    .line 268
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    :cond_7
    return-object p0
.end method

.method public setLastPackageUsageTime(IJ)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_b

    .line 190
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_b
    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_7

    .line 250
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    :cond_7
    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateWrite;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_7

    .line 223
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z

    :cond_7
    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_b

    .line 259
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_b
    return-object p0
.end method

.method public setRequiredForSystemUser(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_10

    .line 208
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x200

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    goto :goto_19

    .line 211
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p1

    and-int/lit16 p1, p1, -0x201

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    :cond_19
    :goto_19
    return-object p0
.end method

.method public setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    :cond_7
    return-object p0
.end method

.method public userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 177
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    .line 176
    :goto_c
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->setStates(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object p0

    return-object p0
.end method
