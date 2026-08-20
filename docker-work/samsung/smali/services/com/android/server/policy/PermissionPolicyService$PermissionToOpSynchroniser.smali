.class public Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionToOpSynchroniser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    }
.end annotation


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mOpsToAllow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mOpsToForeground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mOpsToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public static bridge synthetic -$$Nest$msyncPackages(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V
    .registers 10

    .line 830
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 810
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 819
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 828
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 831
    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 832
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 833
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 834
    const-class p1, Landroid/app/AppOpsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 836
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    .line 837
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 p2, 0x1

    .line 840
    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 842
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_57
    if-ge v1, p2, :cond_ad

    .line 844
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    .line 845
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_aa

    move v4, v0

    :goto_6b
    if-ge v4, p2, :cond_82

    .line 850
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 851
    iget-object v6, v2, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const/4 v3, 0x0

    goto :goto_82

    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    :cond_82
    :goto_82
    if-eqz v3, :cond_aa

    .line 859
    :try_start_84
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 860
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 861
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_84 .. :try_end_91} :catch_92

    goto :goto_aa

    .line 864
    :catch_92
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown background permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_ad
    return-void
.end method


# virtual methods
.method public final addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V
    .registers 5

    .line 932
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PermissionInfo;

    if-nez p3, :cond_b

    return-void

    .line 936
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 937
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    return-void
.end method

.method public final addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .registers 7

    .line 1031
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1035
    :cond_7
    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1036
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1038
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 1037
    invoke-static {v0, v1, p2, v2, p3}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object p2

    .line 1039
    invoke-virtual {p2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1d

    return-void

    .line 1044
    :cond_1d
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1045
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1046
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 1047
    invoke-virtual {p2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayAllowExtraAppOp()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1048
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1050
    :cond_34
    invoke-virtual {p2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayDenyExtraAppOpIfGranted()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1051
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1053
    :cond_40
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_45
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .registers 7

    .line 1066
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 1067
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1071
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1072
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_36

    if-eqz v1, :cond_36

    if-eqz p1, :cond_36

    .line 1077
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_36

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_21

    goto :goto_36

    .line 1082
    :cond_21
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_36

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_2a

    goto :goto_36

    .line 1089
    :cond_2a
    array-length v0, v2

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v0, :cond_36

    aget-object v4, v2, v3

    .line 1090
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :catch_36
    :cond_36
    :goto_36
    return-void
.end method

.method public final addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .registers 10

    .line 942
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 946
    :cond_7
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 947
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 948
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 949
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 950
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 949
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_26

    move v2, v3

    goto :goto_27

    :cond_26
    move v2, v4

    :goto_27
    if-eqz v2, :cond_2a

    return-void

    .line 958
    :cond_2a
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$smgetSwitchOp(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_32

    return-void

    .line 965
    :cond_32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_55

    .line 967
    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz p3, :cond_56

    .line 968
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimeAndTheirBgPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PermissionInfo;

    if-eqz p3, :cond_4f

    .line 971
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result p2

    if-eqz p2, :cond_4f

    move p2, v3

    goto :goto_50

    :cond_4f
    move p2, v4

    :goto_50
    if-eqz p2, :cond_53

    goto :goto_56

    :cond_53
    move v4, v5

    goto :goto_56

    :cond_55
    move v4, v3

    .line 980
    :cond_56
    :goto_56
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 981
    new-instance p2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    if-eqz v4, :cond_72

    if-eq v4, v3, :cond_6c

    if-eq v4, v5, :cond_66

    goto :goto_77

    .line 987
    :cond_66
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 990
    :cond_6c
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 984
    :cond_72
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_77
    return-void
.end method

.method public final setUidMode(IIILjava/lang/String;)V
    .registers 12

    .line 1122
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eq v0, p3, :cond_35

    .line 1125
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 1127
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eq v0, p3, :cond_35

    .line 1133
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 1134
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v6

    move v2, p1

    move v3, p2

    move-object v4, p4

    .line 1133
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    :cond_35
    return-void
.end method

.method public final setUidModeAllowed(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    return-void
.end method

.method public final setUidModeForeground(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    .line 1099
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    return-void
.end method

.method public final setUidModeIgnored(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 1103
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    return-void
.end method

.method public final setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z
    .registers 6

    .line 1108
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1b

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1a

    .line 1112
    iget-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmAppOpsCallback(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object p0

    invoke-virtual {p3, p1, p2, v0, p0}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    :cond_1a
    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z
    .registers 10

    .line 997
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 998
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 999
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    :goto_11
    if-nez v2, :cond_14

    return v4

    .line 1005
    :cond_14
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 1006
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 1005
    invoke-virtual {v2, v0, v1, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_28

    move v2, v3

    goto :goto_29

    :cond_28
    move v2, v4

    :goto_29
    if-eqz v2, :cond_2c

    return v4

    .line 1013
    :cond_2c
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 p0, 0x4000

    and-int/lit16 p1, v1, 0x4000

    if-ne p1, p0, :cond_39

    move v4, v3

    :cond_39
    xor-int/lit8 p0, v4, 0x1

    return p0

    .line 1018
    :cond_3c
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result p3

    if-eqz p3, :cond_53

    .line 1019
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    .line 1020
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object p0

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result p0

    return p0

    :cond_53
    return v3
.end method

.method public final syncPackages()V
    .registers 11

    .line 881
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 883
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    const-wide/16 v4, 0x1

    if-ge v3, v1, :cond_30

    .line 885
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 887
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 888
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 891
    :cond_30
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_37
    if-ge v3, v1, :cond_67

    .line 893
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 894
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_50

    goto :goto_64

    .line 898
    :cond_50
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 899
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 902
    :cond_67
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_6e
    if-ge v3, v1, :cond_9e

    .line 904
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 905
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_87

    goto :goto_9b

    .line 909
    :cond_87
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 910
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 913
    :cond_9e
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_a4
    if-ge v2, v1, :cond_d7

    .line 915
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 916
    iget v6, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v6

    if-ltz v6, :cond_bd

    goto :goto_d4

    .line 920
    :cond_bd
    iget v6, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 922
    iget v6, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v3, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v3}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :cond_d4
    :goto_d4
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_d7
    return-void
.end method
