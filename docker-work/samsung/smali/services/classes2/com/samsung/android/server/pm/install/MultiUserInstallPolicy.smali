.class public Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;
.super Ljava/lang/Object;
.source "MultiUserInstallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final INSTALL_ALLOWED:I = 0x0

.field public static final INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER:I = 0x1

.field public static final INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST:I = 0x2

.field public static final METADATA_MULTIUSER_DISABLE_SUB_USER:Ljava/lang/String; = "com.samsung.android.multiuser.disable_sub_user"

.field public static final METADATA_MULTIUSER_INSTALL_ONLY_OWNER:Ljava/lang/String; = "com.samsung.android.multiuser.install_only_owner"

.field public static final METADATA_MULTIUSER_UNINSTALL_FOR_GUEST:Ljava/lang/String; = "com.samsung.android.multiuser.disable_for_guest"

.field public static final TAG:Ljava/lang/String; = "MultiUserInstallPolicy"


# instance fields
.field public final mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

.field public final mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public static checkIfInstallAllowed(Landroid/os/Bundle;ILjava/util/function/Function;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_30

    if-nez p1, :cond_7

    goto :goto_30

    :cond_7
    if-nez p0, :cond_a

    return v0

    :cond_a
    const-string v1, "com.samsung.android.multiuser.install_only_owner"

    .line 249
    invoke-static {p0, v1}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p0, 0x1

    return p0

    .line 252
    :cond_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_30

    .line 253
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "com.samsung.android.multiuser.disable_for_guest"

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x2

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method public static checkIfInstallExistingAllowed(Landroid/os/Bundle;I)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-nez p0, :cond_6

    goto :goto_10

    :cond_6
    const-string p1, "com.samsung.android.multiuser.install_only_owner"

    .line 233
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_10
    return v0
.end method

.method public static findCurrentGuestUserId()I
    .registers 1

    .line 275
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 277
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 279
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public static notAllowedReasonToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST"

    return-object p0

    :cond_10
    const-string p0, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    return-object p0

    :cond_13
    const-string p0, "INSTALL_ALLOWD"

    return-object p0
.end method


# virtual methods
.method public applyInstallPolicyLPw()V
    .registers 5

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;I)I

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 72
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public applyInstallPolicyPackageAsUserLPw(Ljava/lang/String;I)V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-nez p1, :cond_f

    return-void

    .line 81
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;I)I

    move-result p2

    .line 83
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    return-void
.end method

.method public applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "MultiUserInstallPolicy"

    if-eqz p1, :cond_122

    if-nez p2, :cond_8

    goto/16 :goto_122

    .line 95
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/pm/MetaDataHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.samsung.android.multiuser.install_only_owner"

    const-string v3, " for userId: "

    const/4 v4, 0x0

    if-eqz v1, :cond_bf

    .line 97
    invoke-static {v1, v2}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "com.samsung.android.multiuser.disable_for_guest"

    .line 99
    invoke-static {v1, v6}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Set package state as uninstalled: "

    if-eqz v5, :cond_59

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v10, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, p1, v4, v9}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->setInstalled(Lcom/android/server/pm/PackageSetting;ZI)V

    goto :goto_27

    :cond_59
    if-eqz v6, :cond_7e

    if-lez p3, :cond_7e

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v7, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    invoke-virtual {v7, p1, v4, p3}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->setInstalled(Lcom/android/server/pm/PackageSetting;ZI)V

    :cond_7e
    const-string v7, "com.samsung.android.multiuser.disable_sub_user"

    .line 116
    invoke-static {v1, v7}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 119
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set package state as disabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v9, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    const/4 v10, 0x2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, p1, v10, v8}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->setEnabled(Lcom/android/server/pm/PackageSetting;II)V

    goto :goto_8a

    :cond_bf
    move v1, v4

    move v5, v1

    move v6, v5

    :cond_c2
    if-nez v5, :cond_c9

    if-nez v6, :cond_c9

    if-nez v1, :cond_c9

    const/4 v4, 0x1

    :cond_c9
    if-eqz v4, :cond_121

    .line 130
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getComponentsHavingEnabledMetaDataLPr(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_121

    .line 133
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 134
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set component state as disabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, p1, v4, v6}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->addDisabledComponent(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;I)V

    goto :goto_e5

    :cond_121
    return-void

    :cond_122
    :goto_122
    const-string p0, "Subuser id is null"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getComponentsHavingEnabledMetaDataLPr(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "MultiUserInstallPolicy"

    if-nez p1, :cond_11

    const-string/jumbo p0, "ps object is null"

    .line 178
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 181
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_35

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not package object"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 187
    :cond_35
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 188
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 189
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/MetaDataHelper;->getComponentMetaData(Lcom/android/server/pm/pkg/component/ParsedComponent;)Landroid/os/Bundle;

    move-result-object v2

    .line 188
    invoke-static {v2, p2}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 190
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 191
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 195
    :cond_67
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6f
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 196
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 197
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/MetaDataHelper;->getComponentMetaData(Lcom/android/server/pm/pkg/component/ParsedComponent;)Landroid/os/Bundle;

    move-result-object v2

    .line 196
    invoke-static {v2, p2}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 198
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 199
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 203
    :cond_99
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a1
    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 204
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mMetaDataHelper:Lcom/samsung/android/server/pm/MetaDataHelper;

    .line 205
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/pm/MetaDataHelper;->getComponentMetaData(Lcom/android/server/pm/pkg/component/ParsedComponent;)Landroid/os/Bundle;

    move-result-object v2

    .line 204
    invoke-static {v2, p2}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 206
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 207
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :cond_cb
    return-object v0
.end method

.method public final getSubUserIdsAndGuestUserId(Ljava/util/List;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_9

    return v0

    .line 158
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 159
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_1f

    goto :goto_e

    :cond_1f
    if-ne p2, v0, :cond_29

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_29
    if-ne v3, p2, :cond_32

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_32
    :goto_32
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 168
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_e

    :cond_3b
    return v1
.end method

.method public final getUsers(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 265
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw p0

    .line 269
    :catch_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0
.end method
