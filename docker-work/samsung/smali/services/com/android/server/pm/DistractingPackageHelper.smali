.class public final Lcom/android/server/pm/DistractingPackageHelper;
.super Ljava/lang/Object;
.source "DistractingPackageHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;


# direct methods
.method public static synthetic $r8$lambda$NV5-83d2dpup4Qzr6CmT-5jI6Yg(Ljava/util/List;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DistractingPackageHelper;->lambda$removeDistractingPackageRestrictions$1(Ljava/util/List;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ak2Sc3ewILLlIHEElwNEbq4H7hI(Lcom/android/server/pm/DistractingPackageHelper;Landroid/os/Bundle;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/DistractingPackageHelper;->lambda$sendDistractingPackagesChanged$2(Landroid/os/Bundle;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTlVhtvYDlt6ecQTgt5A5HeLyRs(Landroid/util/ArraySet;IILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/DistractingPackageHelper;->lambda$setDistractingPackageRestrictionsAsUser$0(Landroid/util/ArraySet;IILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 54
    iput-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 55
    iput-object p3, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 56
    iput-object p4, p0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    return-void
.end method

.method public static synthetic lambda$removeDistractingPackageRestrictions$1(Ljava/util/List;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 161
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 162
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 163
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    .line 164
    invoke-interface {v2, v0}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method private synthetic lambda$sendDistractingPackagesChanged$2(Landroid/os/Bundle;I)V
    .registers 14

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 p0, 0x1

    new-array v7, p0, [I

    const/4 p0, 0x0

    aput p2, v7, p0

    const-string v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$setDistractingPackageRestrictionsAsUser$0(Landroid/util/ArraySet;IILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 7

    .line 118
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 120
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 121
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    .line 122
    invoke-interface {v2, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method


# virtual methods
.method public removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V
    .registers 10

    .line 146
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 149
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    new-instance v1, Landroid/util/IntArray;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 151
    :goto_15
    array-length v4, p2

    if-ge v3, v4, :cond_3f

    .line 152
    aget-object v4, p2, v3

    .line 153
    invoke-interface {p1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 154
    invoke-interface {v4, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 156
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-static {p3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 160
    :cond_3f
    iget-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 p2, 0x0

    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p1, p2, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_68

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 169
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 171
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/pm/DistractingPackageHelper;->sendDistractingPackagesChanged([Ljava/lang/String;[III)V

    .line 173
    iget-object p0, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_68
    return-void
.end method

.method public sendDistractingPackagesChanged([Ljava/lang/String;[III)V
    .registers 7

    .line 186
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "android.intent.extra.changed_package_list"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "android.intent.extra.changed_uid_list"

    .line 188
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "android.intent.extra.distraction_restrictions"

    .line 189
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 192
    new-instance p2, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0, p3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/DistractingPackageHelper;Landroid/os/Bundle;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;III)[Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 74
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    return-object v2

    :cond_13
    const-string v6, "PackageManager"

    if-eqz v3, :cond_34

    .line 77
    iget-object v7, v0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 78
    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v7

    if-nez v7, :cond_34

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot restrict packages due to restrictions on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 84
    :cond_34
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    new-instance v8, Landroid/util/IntArray;

    array-length v9, v2

    invoke-direct {v8, v9}, Landroid/util/IntArray;-><init>(I)V

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    if-eqz v3, :cond_54

    .line 90
    iget-object v12, v0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    invoke-virtual {v12, v1, v2, v4, v5}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v12

    goto :goto_55

    :cond_54
    const/4 v12, 0x0

    :goto_55
    const/4 v14, 0x0

    .line 92
    :goto_56
    array-length v15, v2

    if-ge v14, v15, :cond_ad

    .line 93
    aget-object v15, v2, v14

    .line 95
    invoke-interface {v1, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    if-eqz v13, :cond_8e

    .line 97
    invoke-interface {v1, v13, v5, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_68

    goto :goto_8e

    :cond_68
    if-eqz v12, :cond_72

    .line 104
    aget-boolean v16, v12, v14

    if-nez v16, :cond_72

    .line 105
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 108
    :cond_72
    invoke-interface {v13, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 109
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v11

    if-eq v3, v11, :cond_aa

    .line 111
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-static {v4, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/IntArray;->add(I)V

    .line 113
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 98
    :cond_8e
    :goto_8e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find package setting for package: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ". Skipping..."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_aa
    :goto_aa
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 117
    :cond_ad
    iget-object v1, v0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v10, v4, v3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArraySet;II)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 126
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 128
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 127
    invoke-interface {v7, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 129
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/DistractingPackageHelper;->sendDistractingPackagesChanged([Ljava/lang/String;[III)V

    .line 131
    iget-object v0, v0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_d6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
