.class public interface abstract Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
.super Ljava/lang/Object;
.source "IPersonaManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IAdapterHandle;


# virtual methods
.method public abstract exists(I)Z
.end method

.method public abstract getAdminComponentName(I)Landroid/content/ComponentName;
.end method

.method public abstract getAttributes(I)I
.end method

.method public abstract getFocusedLauncherId()I
.end method

.method public abstract getFocusedUserWithActivityManager()I
.end method

.method public abstract getKnoxContainerVersionString()Ljava/lang/String;
.end method

.method public abstract getKnoxContainerVersion_3_0_0()I
.end method

.method public abstract getKnoxIds(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKnoxInfo()Landroid/os/Bundle;
.end method

.method public abstract getMinPersonaId()I
.end method

.method public abstract isAppSeparationUserId(I)Z
.end method

.method public abstract isContainerAgent(Ljava/lang/String;)Z
.end method

.method public abstract isContainerCore(Ljava/lang/String;)Z
.end method

.method public abstract isContainerDesktop(Ljava/lang/String;)Z
.end method

.method public abstract isContainerService(I)Z
.end method

.method public abstract isDarDualEncryptionEnabled(I)Z
.end method

.method public abstract isDeviceOrProfileOwnerEnabled()Z
.end method

.method public abstract isDoEnabled(I)Z
.end method

.method public abstract isExternalStorageEnabled(I)Z
.end method

.method public abstract isKnoxActivated()Z
.end method

.method public abstract isKnoxId(I)Z
.end method

.method public abstract isKnoxVersionSupported(I)Z
.end method

.method public abstract isLegacyClId(I)Z
.end method

.method public abstract isLegacyContainer(I)Z
.end method

.method public abstract isManagedProfile(I)Z
.end method

.method public abstract isOrganizationOwnedDeviceWithManagedProfile()Z
.end method

.method public abstract isPersonaEnabled(I)Z
.end method

.method public abstract isPremiumContainer(I)Z
.end method

.method public abstract isSamsungWorkspace(I)Z
.end method

.method public abstract isSecureFolderId(I)Z
.end method

.method public abstract isValidKnoxId(I)Z
.end method

.method public abstract postPwdChangeNotificationForDeviceOwner(I)V
.end method
