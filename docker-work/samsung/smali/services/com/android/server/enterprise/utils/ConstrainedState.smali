.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field public static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field public static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field public static final CONSTRAINED_DELIMITER:[B

.field public static final CONSTRAINED_MODE_CHANNEL_ID:Ljava/lang/String; = "CONSTRAINED_MODE"

.field public static final CONSTRAINED_MODE_NOTIFICATION_ID:I = 0x11ce

.field public static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field public static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field public static final TAG:Ljava/lang/String; = "ConstrainedState"

.field public static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field public final DEBUG:Z

.field public cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateConstrainedStateData(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNotification(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 50
    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_c
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 67
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 76
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 90
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    iget-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    .line 98
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2

    .line 121
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 125
    :cond_b
    sget-object p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object p0
.end method


# virtual methods
.method public checkConstrainedState()Z
    .registers 2

    .line 137
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 8

    .line 684
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 689
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 690
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 693
    :try_start_f
    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 695
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_18
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_f .. :try_end_18} :catch_82

    :cond_18
    const-string v1, "ConstrainedState"

    if-eqz p1, :cond_7b

    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_7b

    .line 708
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 710
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 713
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 714
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v3

    if-nez v3, :cond_4a

    return p2

    .line 720
    :cond_4a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 721
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 722
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 726
    new-instance p0, Ljava/util/ArrayList;

    iget-object p1, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 727
    invoke-interface {p0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 728
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_75

    const-string/jumbo p0, "signature check success"

    .line 729
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_75
    const-string p0, "Signature is different"

    .line 732
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_7b
    :goto_7b
    const-string/jumbo p0, "something\'s wrong"

    .line 706
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    return p2

    :catch_82
    move-exception p0

    .line 699
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return p2
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 8

    .line 745
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 750
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 751
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 754
    :try_start_f
    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 756
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_18
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_f .. :try_end_18} :catch_88

    :cond_18
    const-string v1, "ConstrainedState"

    if-eqz p1, :cond_81

    .line 766
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    goto :goto_81

    .line 769
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 771
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 774
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 775
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v3

    if-nez v3, :cond_50

    return p2

    .line 781
    :cond_50
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 782
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 783
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 787
    new-instance p0, Ljava/util/ArrayList;

    iget-object p1, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 788
    invoke-interface {p0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 789
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7b

    const-string/jumbo p0, "signature check success"

    .line 790
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_7b
    const-string p0, "Signature is different"

    .line 793
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_81
    :goto_81
    const-string/jumbo p0, "something\'s wrong"

    .line 767
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return p2

    :catch_88
    move-exception p0

    .line 760
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return p2
.end method

.method public cleanUpConstrainedState(I)V
    .registers 6

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_f

    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const-string v2, "Only system or itself can remove an EDM admin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    goto :goto_45

    :cond_3e
    const-string p0, "ConstrainedState"

    const-string p1, "constrained state will go on"

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 618
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 618
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 620
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final disableConstrainedStateInternal(ILjava/lang/String;)Z
    .registers 17

    move-object v7, p0

    const-string v8, "ConstrainedState"

    .line 546
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/16 v1, 0x40

    .line 547
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v9

    .line 548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 550
    :try_start_13
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_78

    .line 551
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 553
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 554
    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnrollData;

    .line 555
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 560
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "ConstrainedStateTable"

    const-string/jumbo v2, "status"

    move v4, p1

    invoke-virtual {v0, p1, v1, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, v0

    .line 565
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v13

    goto :goto_79

    :cond_76
    move v4, p1

    goto :goto_1f

    :cond_78
    move v0, v12

    :goto_79
    if-ne v0, v13, :cond_7e

    .line 574
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7e} :catch_85
    .catchall {:try_start_13 .. :try_end_7e} :catchall_83

    .line 580
    :cond_7e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v13

    goto :goto_8d

    :catchall_83
    move-exception v0

    goto :goto_e6

    :catch_85
    move-exception v0

    .line 577
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    .line 580
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v12

    :goto_8d
    if-eqz v9, :cond_b8

    .line 583
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 584
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 585
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    const-string/jumbo v1, "setScreenCapture enabled due to disableConstrainedState"

    .line 586
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    const/16 v1, 0x8

    .line 588
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v1

    xor-int/2addr v1, v13

    .line 590
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->isBluetoothAllowedOnDB()Z

    move-result v2

    .line 592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 594
    :try_start_c7
    const-class v5, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    invoke-static {v5}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    if-eqz v2, :cond_d4

    if-eqz v1, :cond_d4

    goto :goto_d5

    :cond_d4
    move v13, v12

    :goto_d5
    invoke-interface {v5, v12, v13}, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_d8
    .catchall {:try_start_c7 .. :try_end_d8} :catchall_e1

    .line 597
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "No data"

    .line 600
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_e1
    move-exception v0

    .line 597
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    throw v0

    .line 580
    :goto_e6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    throw v0
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    const-string v3, "/efs/constrained"

    .line 405
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, p1

    .line 405
    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-gtz v2, :cond_23

    return v5

    .line 412
    :cond_23
    iget-object v6, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 416
    :try_start_2f
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3d

    .line 418
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 421
    :cond_3d
    iget-object v9, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v9, :cond_76

    .line 422
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 423
    :cond_49
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    .line 424
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 425
    iget-object v11, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/EnrollData;

    .line 426
    invoke-virtual {v11}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_49

    const-string v9, "ConstrainedState"

    const-string v11, "already existing values // update"

    .line 427
    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_76} :catch_1e7
    .catchall {:try_start_2f .. :try_end_76} :catchall_1e5

    :cond_76
    const/4 v9, 0x0

    .line 438
    :try_start_77
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 439
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    .line 440
    new-instance v11, Ljava/io/File;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_9c
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_ae

    add-int/2addr v10, v13

    .line 443
    new-instance v11, Ljava/io/File;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_ae
    const/4 v3, 0x4

    new-array v3, v3, [B

    shr-int/lit8 v10, v2, 0x18

    int-to-byte v10, v10

    aput-byte v10, v3, v5

    shr-int/lit8 v10, v2, 0x10

    int-to-byte v10, v10

    aput-byte v10, v3, v13

    const/4 v10, 0x2

    shr-int/lit8 v12, v2, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    const/4 v10, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v10

    .line 452
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ca} :catch_1c9
    .catchall {:try_start_77 .. :try_end_ca} :catchall_1c6

    if-eqz p4, :cond_e6

    .line 454
    :try_start_cc
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e6

    const-string/jumbo v10, "normalv3"

    .line 455
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_103

    :catchall_dd
    move-exception v0

    move-object v1, v0

    move-object v9, v2

    goto/16 :goto_1d9

    :catch_e2
    move-exception v0

    move-object v9, v2

    goto/16 :goto_1ca

    :cond_e6
    if-eqz p3, :cond_f9

    .line 456
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f9

    const-string/jumbo v10, "normalv2"

    .line 457
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_103

    :cond_f9
    const-string/jumbo v10, "normal"

    .line 459
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 461
    :goto_103
    sget-object v10, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 462
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 463
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v1, :cond_122

    .line 464
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_122

    .line 465
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_12b

    :cond_122
    const-string v1, "DEFAULT"

    .line 467
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 469
    :goto_12b
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 470
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_1a3

    .line 471
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a3

    .line 472
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_16b

    .line 475
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16b

    if-eqz p5, :cond_16b

    .line 476
    new-instance v1, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>([B)V

    .line 477
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 478
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 479
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 480
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 481
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1a3

    .line 484
    :cond_16b
    iget-object v1, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 485
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    const/16 v3, 0x40

    .line 486
    invoke-virtual {v1, v6, v3, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_18b

    .line 490
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 491
    array-length v3, v1

    move v6, v5

    :goto_17d
    if-ge v6, v3, :cond_18b

    aget-object v10, v1, v6

    if-eqz v10, :cond_188

    .line 493
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18c

    :cond_188
    add-int/lit8 v6, v6, 0x1

    goto :goto_17d

    :cond_18b
    move-object v1, v9

    :goto_18c
    if-eqz v1, :cond_1a3

    .line 500
    new-instance v3, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 501
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 502
    sget-object v3, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 503
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 508
    :cond_1a3
    :goto_1a3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 509
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_1a9} :catch_e2
    .catchall {:try_start_cc .. :try_end_1a9} :catchall_dd

    .line 512
    :try_start_1a9
    iget-object v1, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v2, v3, v4, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1bf

    .line 518
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1bb} :catch_1c9
    .catchall {:try_start_1a9 .. :try_end_1bb} :catchall_1c6

    .line 537
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 521
    :cond_1bf
    :try_start_1bf
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c2} :catch_1c9
    .catchall {:try_start_1bf .. :try_end_1c2} :catchall_1c6

    .line 537
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    :catchall_1c6
    move-exception v0

    move-object v1, v0

    goto :goto_1d9

    :catch_1c9
    move-exception v0

    .line 525
    :goto_1ca
    :try_start_1ca
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1cd
    .catchall {:try_start_1ca .. :try_end_1cd} :catchall_1c6

    if-eqz v9, :cond_1eb

    .line 529
    :try_start_1cf
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d2} :catch_1d3
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_1e5

    goto :goto_1eb

    :catch_1d3
    move-exception v0

    move-object v1, v0

    .line 531
    :try_start_1d5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1d8} :catch_1e7
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1e5

    goto :goto_1eb

    :goto_1d9
    if-eqz v9, :cond_1e4

    .line 529
    :try_start_1db
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1de} :catch_1df
    .catchall {:try_start_1db .. :try_end_1de} :catchall_1e5

    goto :goto_1e4

    :catch_1df
    move-exception v0

    move-object v2, v0

    .line 531
    :try_start_1e1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    :cond_1e4
    :goto_1e4
    throw v1
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e5} :catch_1e7
    .catchall {:try_start_1e1 .. :try_end_1e5} :catchall_1e5

    :catchall_1e5
    move-exception v0

    goto :goto_1ef

    :catch_1e7
    move-exception v0

    .line 535
    :try_start_1e8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1eb
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_1e5

    .line 537
    :cond_1eb
    :goto_1eb
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_1ef
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw v0
.end method

.method public final getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .registers 9

    .line 818
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v0}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    const/4 v1, 0x0

    const-string v2, "Could not retrieve permissions & signature for package: "

    const-string v3, "ConstrainedState"

    if-eqz p2, :cond_48

    .line 823
    :try_start_c
    iget-object p0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 824
    iget-object p0, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz p0, :cond_16

    .line 825
    iput-object p0, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 827
    :cond_16
    iget-object p0, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_9a

    .line 828
    array-length p2, p0

    :goto_1d
    if-ge v1, p2, :cond_9a

    aget-object v4, p0, v1

    .line 829
    iget-object v5, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2d

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_2d
    move-exception p0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :cond_48
    if-nez p1, :cond_4d

    const-string p1, ""

    goto :goto_51

    .line 838
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 839
    :goto_51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_9a

    .line 841
    :try_start_57
    iget-object p0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 p2, 0x1040

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_9a

    .line 844
    iput-object p1, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 845
    iget-object p2, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz p2, :cond_6f

    .line 846
    iget-object p2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 848
    :cond_6f
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_9a

    .line 849
    array-length p2, p0

    :goto_74
    if-ge v1, p2, :cond_9a

    aget-object v4, p0, v1

    .line 850
    iget-object v5, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_81} :catch_84

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :catch_84
    move-exception p0

    .line 855
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 856
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    :goto_9a
    return-object v0
.end method

.method public getConstrainedState()I
    .registers 3

    .line 667
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    .line 672
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    .line 673
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x2

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0
.end method

.method public final getConstrainedStateAll()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    .line 625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 627
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_39

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 629
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 630
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 631
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 632
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnrollData;

    .line 633
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 635
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_3f
    .catchall {:try_start_4 .. :try_end_33} :catchall_3d

    if-nez p0, :cond_39

    .line 641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_39
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44

    :catchall_3d
    move-exception p0

    goto :goto_46

    :catch_3f
    move-exception p0

    .line 639
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    goto :goto_39

    :goto_44
    const/4 p0, 0x0

    return-object p0

    .line 641
    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    throw p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 132
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final isBluetoothAllowedOnDB()Z
    .registers 3

    .line 605
    iget-object p0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "BLUETOOTH"

    const-string v1, "bluetoothEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 608
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public final isMatch([B[BI)Z
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    .line 236
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_15

    add-int v1, p3, v0

    .line 237
    array-length v2, p2

    if-lt v1, v2, :cond_b

    return p0

    .line 240
    :cond_b
    aget-byte v2, p1, v0

    aget-byte v1, p2, v1

    if-eq v2, v1, :cond_12

    return p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 4

    .line 648
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 652
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 653
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v1

    if-nez v1, :cond_a

    .line 654
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public final showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ConstrainedNoti"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_26

    const-string p0, "ConstrainedState"

    const-string p1, "Failed to get NotificationManager"

    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_26
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "CONSTRAINED_MODE"

    invoke-direct {v2, v4, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/16 v2, 0x11ce

    if-eqz p5, :cond_d1

    .line 205
    new-instance p5, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {p5, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 206
    invoke-virtual {p5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v3, 0x10806be

    .line 207
    invoke-virtual {p5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 208
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v4, 0x10403c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v3, "DEFAULT"

    .line 209
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 210
    iget-object p2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v3, 0x1040425

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 211
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_89

    .line 213
    :cond_7a
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 214
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_89
    const/4 p2, 0x2

    .line 216
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    .line 217
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_c9

    .line 219
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_c9

    .line 220
    new-instance p2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "pkg"

    .line 221
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "url"

    .line 222
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_ba

    .line 223
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_ba

    const-string/jumbo p1, "targetPkgName"

    .line 224
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :cond_ba
    iget-object p0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 p3, 0x4000000

    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 229
    :cond_c9
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_d4

    .line 231
    :cond_d1
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_d4
    return-void
.end method

.method public final split([B[B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 250
    :goto_7
    array-length v3, p2

    if-ge v1, v3, :cond_1d

    .line 251
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 252
    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    array-length v2, p1

    add-int/2addr v1, v2

    move v2, v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 257
    :cond_1d
    array-length p0, p2

    invoke-static {p2, v2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final updateConstrainedStateData(Z)V
    .registers 35

    move-object/from16 v7, p0

    const-string/jumbo v0, "status"

    const-string v8, "adminUid"

    const/4 v9, 0x0

    .line 265
    :try_start_8
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 269
    filled-new-array {v8, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    invoke-virtual {v2, v3, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 274
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_2fd
    .catchall {:try_start_8 .. :try_end_24} :catchall_2fa

    const-string v13, "ConstrainedState"

    if-eqz v12, :cond_2d6

    .line 277
    :try_start_28
    array-length v14, v12
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_29} :catch_2fd
    .catchall {:try_start_28 .. :try_end_29} :catchall_2fa

    const/4 v15, 0x0

    move-object v1, v9

    move v6, v15

    :goto_2c
    if-ge v6, v14, :cond_2d4

    :try_start_2e
    aget-object v5, v12, v6

    .line 278
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 279
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 280
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_2d1
    .catchall {:try_start_2e .. :try_end_42} :catchall_2ce

    .line 281
    :try_start_42
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_2b1
    .catchall {:try_start_42 .. :try_end_46} :catchall_2ac

    if-nez v1, :cond_58

    .line 283
    :try_start_48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_54
    .catchall {:try_start_48 .. :try_end_4b} :catchall_50

    move-object/from16 v31, v0

    move-object v1, v4

    goto/16 :goto_2b7

    :catchall_50
    move-exception v0

    move-object v9, v4

    goto/16 :goto_30e

    :catch_54
    move-exception v0

    move-object v9, v4

    goto/16 :goto_2ff

    .line 288
    :cond_58
    :try_start_58
    sget-object v1, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v7, v1, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v1

    .line 290
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_62} :catch_2b1
    .catchall {:try_start_58 .. :try_end_62} :catchall_2ac

    if-eqz v2, :cond_79

    .line 291
    :try_start_64
    new-instance v2, Ljava/lang/String;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, [B

    array-length v9, v9

    invoke-direct {v2, v3, v15, v9}, Ljava/lang/String;-><init>([BII)V

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    :goto_7a
    if-nez v2, :cond_90

    const-string/jumbo v1, "something\'s wrong // type is null"

    .line 295
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_82} :catch_54
    .catchall {:try_start_64 .. :try_end_82} :catchall_50

    :goto_82
    move-object/from16 v31, v0

    move v15, v6

    move-object/from16 v32, v8

    move-object/from16 v29, v12

    move/from16 v30, v14

    move/from16 v0, p1

    move-object v12, v4

    goto/16 :goto_2a3

    :cond_90
    :try_start_90
    const-string/jumbo v3, "normal"

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_97} :catch_2b1
    .catchall {:try_start_90 .. :try_end_97} :catchall_2ac

    const-string/jumbo v9, "normalv2"

    const-string/jumbo v15, "normalv3"

    if-nez v3, :cond_b3

    :try_start_9f
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b3

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    goto :goto_b3

    :cond_ac
    const-string/jumbo v1, "type is not normal"

    .line 375
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b2} :catch_54
    .catchall {:try_start_9f .. :try_end_b2} :catchall_50

    goto :goto_82

    :cond_b3
    :goto_b3
    const/4 v3, 0x1

    .line 298
    :try_start_b4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_2b1
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_2ac

    if-eqz v17, :cond_f6

    :try_start_ba
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, [B

    array-length v3, v3

    if-lez v3, :cond_f6

    .line 299
    new-instance v3, Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c7} :catch_ef
    .catchall {:try_start_ba .. :try_end_c7} :catchall_e8

    move-object/from16 v17, v4

    const/4 v4, 0x1

    :try_start_ca
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, [B

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, [B

    array-length v4, v4

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e3} :catch_e6
    .catchall {:try_start_ca .. :try_end_e3} :catchall_e4

    goto :goto_fd

    :catchall_e4
    move-exception v0

    goto :goto_eb

    :catch_e6
    move-exception v0

    goto :goto_f2

    :catchall_e8
    move-exception v0

    move-object/from16 v17, v4

    :goto_eb
    move-object/from16 v9, v17

    goto/16 :goto_30e

    :catch_ef
    move-exception v0

    move-object/from16 v17, v4

    :goto_f2
    move-object/from16 v9, v17

    goto/16 :goto_2ff

    :cond_f6
    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    const/4 v3, 0x0

    :goto_fd
    if-eqz v3, :cond_28f

    const/4 v4, 0x2

    .line 304
    :try_start_100
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_273

    .line 305
    new-instance v5, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, [B

    array-length v4, v4

    move-object/from16 v29, v12

    const/4 v12, 0x0

    invoke-direct {v5, v6, v12, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x3

    .line 307
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_124} :catch_28b
    .catchall {:try_start_100 .. :try_end_124} :catchall_287

    if-eqz v6, :cond_147

    .line 310
    :try_start_126
    aget-byte v4, v6, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    move/from16 v30, v14

    const/4 v12, 0x1

    aget-byte v14, v6, v12

    and-int/lit16 v12, v14, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v4, v12

    const/4 v12, 0x2

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v4, v12

    const/4 v12, 0x3

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    move/from16 v24, v4

    goto :goto_14b

    :cond_147
    move/from16 v30, v14

    const/16 v24, 0x0

    :goto_14b
    if-gtz v24, :cond_15f

    const-string/jumbo v1, "something\'s wrong"

    .line 317
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_153} :catch_e6
    .catchall {:try_start_126 .. :try_end_153} :catchall_e4

    move-object/from16 v31, v0

    move-object/from16 v32, v8

    move-object/from16 v12, v17

    move/from16 v15, v20

    move/from16 v0, p1

    goto/16 :goto_2a3

    .line 322
    :cond_15f
    :try_start_15f
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_163} :catch_28b
    .catchall {:try_start_15f .. :try_end_163} :catchall_287

    if-nez v4, :cond_170

    :try_start_165
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_169} :catch_e6
    .catchall {:try_start_165 .. :try_end_169} :catchall_e4

    if-eqz v4, :cond_16c

    goto :goto_170

    :cond_16c
    const/4 v4, 0x0

    const/16 v27, 0x0

    goto :goto_196

    :cond_170
    :goto_170
    const/4 v4, 0x4

    .line 323
    :try_start_171
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_175} :catch_28b
    .catchall {:try_start_171 .. :try_end_175} :catchall_287

    if-eqz v6, :cond_18b

    .line 324
    :try_start_177
    new-instance v6, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    const/4 v12, 0x0

    invoke-direct {v6, v9, v12, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_18a} :catch_e6
    .catchall {:try_start_177 .. :try_end_18a} :catchall_e4

    goto :goto_18c

    :cond_18b
    const/4 v6, 0x0

    :goto_18c
    const/4 v4, 0x5

    .line 327
    :try_start_18d
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v27, v4

    move-object v4, v6

    .line 329
    :goto_196
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_19a} :catch_28b
    .catchall {:try_start_18d .. :try_end_19a} :catchall_287

    if-eqz v2, :cond_1b2

    .line 330
    :try_start_19c
    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    const/4 v12, 0x0

    invoke-direct {v2, v9, v12, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b0} :catch_e6
    .catchall {:try_start_19c .. :try_end_1b0} :catchall_e4

    move-object v6, v2

    goto :goto_1b4

    :cond_1b2
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 332
    :goto_1b4
    :try_start_1b4
    new-instance v9, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v9}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    .line 333
    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c3} :catch_28b
    .catchall {:try_start_1b4 .. :try_end_1c3} :catchall_287

    if-eqz v11, :cond_228

    .line 335
    :try_start_1c5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_228

    .line 337
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 338
    :goto_1cf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_228

    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 340
    invoke-virtual {v14, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 341
    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 342
    iget-object v12, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v31, v0

    .line 343
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v21, v2

    const-string v2, "com.sds.mobile.mdm.client.MDMService"

    move-object/from16 v32, v8

    const-string v8, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    invoke-direct {v0, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e8

    if-ne v15, v2, :cond_212

    if-eqz v1, :cond_212

    .line 345
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_212

    const-string v0, "Constrained mode is off - sds mdm was activated"

    .line 346
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22d

    :cond_212
    if-eqz v12, :cond_220

    .line 350
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    const-string v0, "Constrained mode is off"

    .line 351
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_21f} :catch_e6
    .catchall {:try_start_1c5 .. :try_end_21f} :catchall_e4

    goto :goto_22d

    :cond_220
    move-object/from16 v2, v21

    move-object/from16 v0, v31

    move-object/from16 v8, v32

    const/4 v12, 0x0

    goto :goto_1cf

    :cond_228
    move-object/from16 v31, v0

    move-object/from16 v32, v8

    const/4 v14, 0x0

    :goto_22d
    move-object/from16 v21, v9

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v4

    move/from16 v26, v14

    move-object/from16 v28, v6

    .line 358
    :try_start_239
    invoke-virtual/range {v21 .. v28}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23c} :catch_28b
    .catchall {:try_start_239 .. :try_end_23c} :catchall_287

    move/from16 v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_265

    if-nez v14, :cond_254

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v12, v17

    move-object/from16 v14, v19

    move-object v5, v6

    move/from16 v15, v20

    move v6, v8

    .line 361
    :try_start_250
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_26b

    :cond_254
    move-object/from16 v12, v17

    move-object/from16 v14, v19

    move/from16 v15, v20

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move v6, v8

    .line 363
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_26b

    :cond_265
    move-object/from16 v12, v17

    move-object/from16 v14, v19

    move/from16 v15, v20

    .line 366
    :goto_26b
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a3

    :cond_273
    move-object/from16 v31, v0

    move-object/from16 v32, v8

    move-object/from16 v29, v12

    move/from16 v30, v14

    move-object/from16 v12, v17

    move/from16 v15, v20

    move/from16 v0, p1

    const-string v1, "comment is null"

    .line 369
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a3

    :catchall_287
    move-exception v0

    move-object/from16 v12, v17

    goto :goto_2ae

    :catch_28b
    move-exception v0

    move-object/from16 v12, v17

    goto :goto_2b3

    :cond_28f
    move-object/from16 v31, v0

    move-object/from16 v32, v8

    move-object/from16 v29, v12

    move/from16 v30, v14

    move-object/from16 v12, v17

    move/from16 v15, v20

    move/from16 v0, p1

    const-string/jumbo v1, "package name is null"

    .line 372
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_2a3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_2a6} :catch_2aa
    .catchall {:try_start_250 .. :try_end_2a6} :catchall_2a8

    const/4 v1, 0x0

    goto :goto_2c0

    :catchall_2a8
    move-exception v0

    goto :goto_2ae

    :catch_2aa
    move-exception v0

    goto :goto_2b3

    :catchall_2ac
    move-exception v0

    move-object v12, v4

    :goto_2ae
    move-object v9, v12

    goto/16 :goto_30e

    :catch_2b1
    move-exception v0

    move-object v12, v4

    :goto_2b3
    move-object v9, v12

    goto :goto_2ff

    :cond_2b5
    move-object/from16 v31, v0

    :goto_2b7
    move v15, v6

    move-object/from16 v32, v8

    move-object/from16 v29, v12

    move/from16 v30, v14

    move/from16 v0, p1

    :goto_2c0
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v12, v29

    move/from16 v14, v30

    move-object/from16 v0, v31

    move-object/from16 v8, v32

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2c

    :catchall_2ce
    move-exception v0

    move-object v9, v1

    goto :goto_30e

    :catch_2d1
    move-exception v0

    move-object v9, v1

    goto :goto_2ff

    :cond_2d4
    move-object v9, v1

    goto :goto_2d7

    :cond_2d6
    const/4 v9, 0x0

    .line 384
    :goto_2d7
    :try_start_2d7
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e8

    const-string v0, "Data is null"

    .line 385
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_2f2

    .line 388
    :cond_2e8
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 389
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2f2} :catch_2f8
    .catchall {:try_start_2d7 .. :try_end_2f2} :catchall_30d

    :goto_2f2
    if-eqz v9, :cond_30c

    .line 397
    :goto_2f4
    :try_start_2f4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2f7} :catch_30c

    goto :goto_30c

    :catch_2f8
    move-exception v0

    goto :goto_2ff

    :catchall_2fa
    move-exception v0

    const/4 v9, 0x0

    goto :goto_30e

    :catch_2fd
    move-exception v0

    const/4 v9, 0x0

    .line 392
    :goto_2ff
    :try_start_2ff
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_309

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_309
    .catchall {:try_start_2ff .. :try_end_309} :catchall_30d

    :cond_309
    if-eqz v9, :cond_30c

    goto :goto_2f4

    :catch_30c
    :cond_30c
    :goto_30c
    return-void

    :catchall_30d
    move-exception v0

    :goto_30e
    if-eqz v9, :cond_313

    .line 397
    :try_start_310
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_310 .. :try_end_313} :catch_313

    .line 401
    :catch_313
    :cond_313
    throw v0
.end method

.method public final updateNotification()V
    .registers 10

    .line 152
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    .line 156
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v2

    if-nez v2, :cond_a

    .line 158
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_3e
    return-void
.end method
