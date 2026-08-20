.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$Config;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    }
.end annotation


# static fields
.field public static final APPROVAL_BY_COMPONENT:I = 0x1

.field public static final APPROVAL_BY_PACKAGE:I = 0x0

.field public static final ATT_APPROVED_LIST:Ljava/lang/String; = "approved"

.field public static final ATT_DEFAULTS:Ljava/lang/String; = "defaults"

.field public static final ATT_IS_PRIMARY:Ljava/lang/String; = "primary"

.field public static final ATT_USER_CHANGED:Ljava/lang/String; = "user_changed"

.field public static final ATT_USER_ID:Ljava/lang/String; = "user"

.field public static final ATT_USER_SET:Ljava/lang/String; = "user_set_services"

.field public static final ATT_USER_SET_OLD:Ljava/lang/String; = "user_set"

.field public static final ATT_VERSION:Ljava/lang/String; = "version"

.field public static final DB_VERSION:Ljava/lang/String; = "4"

.field public static final DB_VERSION_1:Ljava/lang/String; = "1"

.field public static final DB_VERSION_2:Ljava/lang/String; = "2"

.field public static final DB_VERSION_3:Ljava/lang/String; = "3"

.field public static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"

.field public static final ON_BINDING_DIED_REBIND_DELAY_MS:I = 0x2710

.field public static final TAG_MANAGED_SERVICES:Ljava/lang/String; = "service_listing"


# instance fields
.field public final DEBUG:Z

.field public final TAG:Ljava/lang/String;

.field public mApprovalLevel:I

.field public mApproved:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Boolean;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultsLock:Ljava/lang/Object;

.field public mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledServicesLock:Ljava/lang/Object;

.field public mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mIsUserChanged:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mMutex:Ljava/lang/Object;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mServicesBound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mServicesRebinding:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSnoozingForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUm:Landroid/os/UserManager;

.field public mUseXml:Z

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public mUserSetServices:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mApproved"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnabledServicesForCurrentProfiles(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabledServicesLock(Lcom/android/server/notification/ManagedServices;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServices(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServicesRebinding(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserProfiles(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCaption(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnewServiceInfo(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveServiceImpl(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$munbindService(Lcom/android/server/notification/ManagedServices;Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 7

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 149
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 154
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 168
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 178
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 180
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 181
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    .line 182
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    const/4 p2, 0x1

    .line 183
    iput p2, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const-string/jumbo p2, "user"

    .line 184
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public addApprovedList(Ljava/lang/String;IZ)V
    .registers 4

    .line 753
    invoke-virtual {p0, p1, p2, p3, p1}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 10

    .line 757
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, ""

    :cond_8
    if-nez p4, :cond_b

    move-object p4, p1

    .line 763
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 764
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_2a

    .line 766
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 767
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_2a
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_42

    .line 772
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 773
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    const-string p3, ":"

    .line 776
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 777
    array-length p3, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_4b
    if-ge v3, p3, :cond_5b

    aget-object v4, p1, v3

    .line 778
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 780
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 784
    :cond_5b
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-nez p1, :cond_77

    .line 786
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 787
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    const-string p2, ":"

    .line 789
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 790
    array-length p3, p2

    :goto_7e
    if-ge v1, p3, :cond_8e

    aget-object p4, p2, v1

    .line 791
    invoke-virtual {p0, p4}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_8b

    .line 793
    invoke-virtual {p1, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 796
    :cond_8e
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_e .. :try_end_92} :catchall_90

    throw p0
.end method

.method public addDefaultComponentOrPackage(Ljava/lang/String;)V
    .registers 5

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 210
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_9
    iget v1, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    if-nez v1, :cond_14

    .line 212
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v0

    return-void

    .line 215
    :cond_14
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 216
    iget v1, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 217
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    throw p0

    :cond_34
    :goto_34
    return-void
.end method

.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final bindToServices(Landroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1431
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c4

    .line 1432
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1433
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1434
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1436
    :try_start_21
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0xc0080

    invoke-interface {v4, v3, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_ba

    const-string v5, " service "

    const-string v6, "Not binding "

    if-nez v4, :cond_54

    .line 1442
    :try_start_30
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": service not found"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1446
    :cond_54
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v7, v7, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 1447
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": it does not require the permission "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1451
    :cond_8b
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enabling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1451
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p0, v4, v1}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/pm/ServiceInfo;I)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_b8} :catch_ba

    goto/16 :goto_15

    :catch_ba
    move-exception v3

    .line 1455
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto/16 :goto_15

    :cond_c0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c4
    return-void
.end method

.method public final checkNotNull(Landroid/os/IInterface;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 1685
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 5

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 1038
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    .line 1042
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call from unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract checkType(Landroid/os/IInterface;)Z
.end method

.method public clearApprovedList(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final clearUserSetFlagLocked(Landroid/content/ComponentName;I)Z
    .registers 3

    .line 321
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1e

    .line 323
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 402
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 403
    :try_start_15
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v4, :cond_99

    .line 405
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 406
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    if-eqz v8, :cond_94

    .line 408
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_39
    if-ge v10, v9, :cond_94

    .line 410
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 411
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 412
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_8d

    const-wide v13, 0x20b00000002L

    .line 413
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 414
    invoke-virtual {v12}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_77

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v6

    const-wide v5, 0x20900000001L

    .line 415
    invoke-virtual {v1, v5, v6, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v6, v16

    goto :goto_5e

    :cond_77
    move/from16 v16, v6

    const-wide v5, 0x10500000002L

    .line 417
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10800000003L

    .line 418
    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 419
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8f

    :cond_8d
    move/from16 v16, v6

    :goto_8f
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    goto :goto_39

    :cond_94
    move/from16 v16, v6

    add-int/lit8 v6, v16, 0x1

    goto :goto_1c

    .line 424
    :cond_99
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_15 .. :try_end_9a} :catchall_10e

    .line 426
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 427
    :try_start_9d
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    if-eqz v2, :cond_b8

    .line 428
    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_b8

    goto :goto_a3

    :cond_b8
    const-wide v6, 0x20b00000003L

    .line 429
    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_a3

    .line 431
    :cond_c1
    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_10b

    .line 433
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 434
    :try_start_c5
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_eb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eqz v2, :cond_e2

    .line 435
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_e2

    goto :goto_cb

    :cond_e2
    const-wide v6, 0x20b00000004L

    .line 436
    invoke-virtual {v5, v1, v6, v7, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V

    goto :goto_cb

    .line 438
    :cond_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_c5 .. :try_end_ec} :catchall_108

    .line 440
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const-wide v3, 0x20b00000005L

    .line 441
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_f2

    :cond_107
    return-void

    :catchall_108
    move-exception v0

    .line 438
    :try_start_109
    monitor-exit v3
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v0

    :catchall_10b
    move-exception v0

    .line 431
    :try_start_10c
    monitor-exit v4
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v0

    :catchall_10e
    move-exception v0

    .line 424
    :try_start_10f
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 16

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 344
    :try_start_21
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_b9

    .line 346
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 347
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 348
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v5, :cond_b5

    .line 350
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v2

    :goto_52
    if-ge v8, v7, :cond_b5

    .line 352
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 353
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 354
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_b2

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-static {v12, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (user: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isPrimary: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v6, :cond_92

    const-string v9, ""

    goto :goto_a3

    .line 358
    :cond_92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " isUserChanged: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_a3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 355
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b2
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_29

    :cond_b9
    const-string v1, "    Has user set:"

    .line 363
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 365
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c8
    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 366
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c8

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 371
    :cond_10b
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_21 .. :try_end_10c} :catchall_25c

    .line 373
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    All "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") enabled for current profiles:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_141
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz p2, :cond_156

    .line 377
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_156

    goto :goto_141

    .line 378
    :cond_156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_141

    .line 380
    :cond_16b
    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_10f .. :try_end_16c} :catchall_259

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Live "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_19b
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eqz p2, :cond_1b8

    .line 385
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1b8

    goto :goto_1a1

    .line 386
    :cond_1b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    iget-boolean v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_1e2

    const-string v4, " SYSTEM"

    goto :goto_1e4

    :cond_1e2
    const-string v4, ""

    :goto_1e4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v2

    if-eqz v2, :cond_1f0

    const-string v2, " GUEST"

    goto :goto_1f2

    :cond_1f0
    const-string v2, ""

    :goto_1f2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a1

    .line 391
    :cond_1fd
    monitor-exit v0
    :try_end_1fe
    .catchall {:try_start_19b .. :try_end_1fe} :catchall_256

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    Snoozed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 394
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_230
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_255

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_230

    :cond_255
    return-void

    :catchall_256
    move-exception p0

    .line 391
    :try_start_257
    monitor-exit v0
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_256

    throw p0

    :catchall_259
    move-exception p0

    .line 380
    :try_start_25a
    monitor-exit v1
    :try_end_25b
    .catchall {:try_start_25a .. :try_end_25b} :catchall_259

    throw p0

    :catchall_25c
    move-exception p0

    .line 371
    :try_start_25d
    monitor-exit v0
    :try_end_25e
    .catchall {:try_start_25d .. :try_end_25e} :catchall_25c

    throw p0
.end method

.method public abstract ensureFilters(Landroid/content/pm/ServiceInfo;I)V
.end method

.method public getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 1268
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 1269
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_50

    .line 1272
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 1273
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1274
    :try_start_14
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-eqz v6, :cond_49

    .line 1276
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v2

    :goto_27
    if-ge v8, v7, :cond_49

    .line 1278
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    if-nez v9, :cond_39

    .line 1280
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 1281
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1284
    :cond_39
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-virtual {p0, v10, v4}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;

    move-result-object v10

    .line 1283
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 1287
    :cond_49
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_4d
    move-exception p0

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_14 .. :try_end_4f} :catchall_4d

    throw p0

    :cond_50
    return-object v1
.end method

.method public getAllowedComponents(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 873
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 874
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    move v2, p1

    .line 875
    :goto_1b
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 876
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move v4, p1

    .line 877
    :goto_28
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_40

    .line 878
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 880
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 884
    :cond_43
    monitor-exit v1

    return-object v0

    :catchall_45
    move-exception p0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getAllowedPackages(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 890
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 891
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 892
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    move v3, v2

    .line 893
    :goto_1b
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 894
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move v5, v2

    .line 895
    :goto_28
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_44

    .line 896
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 897
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 898
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 902
    :cond_47
    monitor-exit v1

    return-object v0

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public getAllowedPackages()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1175
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1176
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 1177
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 1178
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    .line 1179
    :goto_1b
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_47

    .line 1180
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    move v7, v2

    .line 1181
    :goto_28
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_44

    .line 1182
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1183
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 1184
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1189
    :cond_4a
    monitor-exit v1

    return-object v0

    :catchall_4c
    move-exception p0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public getApproved(IZ)Ljava/lang/String;
    .registers 5

    .line 862
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 863
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 864
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    .line 865
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    const-string p1, ":"

    .line 866
    invoke-static {p1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 867
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final getApprovedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 851
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 852
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p1

    :cond_c
    const/4 p0, 0x0

    return-object p0

    .line 857
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBindFlags()I
    .registers 1

    const p0, 0x5000001

    return p0
.end method

.method public final getCaption()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method public getDefaultComponents()Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 241
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getDefaultPackages()Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 247
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1246
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1248
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method public getRemovableConnectedServices()Ljava/util/Set;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMutex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1327
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1328
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1329
    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-nez v3, :cond_b

    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1330
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    return-object v0
.end method

.method public abstract getRequiredPermission()Ljava/lang/String;
.end method

.method public final getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1014
    :cond_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1015
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_b
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_29

    .line 1018
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1019
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_26

    monitor-exit v1

    return-object v4

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1021
    :cond_29
    monitor-exit v1

    return-object v0

    :catchall_2b
    move-exception p0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getServices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 205
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final hasMatchingServices(Ljava/lang/String;I)Z
    .registers 5

    .line 1259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public isBound(Landroid/content/ComponentName;I)Z
    .registers 3

    .line 1628
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1629
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z
    .registers 3

    .line 1872
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1873
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1874
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isComponentEnabledForPackage(Ljava/lang/String;)Z
    .registers 3

    .line 800
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 802
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isDefaultComponentOrPackage(Ljava/lang/String;)Z
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_11

    .line 231
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 233
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 235
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public isPackageAllowed(Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 931
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 932
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 933
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    move p2, v0

    .line 934
    :goto_19
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p2, v2, :cond_53

    .line 935
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 936
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 937
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_48

    .line 939
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 940
    monitor-exit v1

    return v5

    .line 943
    :cond_48
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 944
    monitor-exit v1

    return v5

    :cond_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    .line 949
    :cond_53
    monitor-exit v1

    return v0

    :catchall_55
    move-exception p0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public isPackageOrComponentAllowed(Ljava/lang/String;I)Z
    .registers 6

    .line 907
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 908
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 909
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p2, 0x0

    move v1, p2

    .line 910
    :goto_16
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 911
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 912
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 913
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 916
    :cond_2e
    monitor-exit v0

    return p2

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public isPackageOrComponentUserSet(Ljava/lang/String;I)Z
    .registers 4

    .line 921
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_19

    .line 923
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 924
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public isSameUser(Landroid/os/IInterface;I)Z
    .registers 4

    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 1048
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1051
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_12
    const/4 p0, 0x0

    .line 1053
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1054
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isServiceTokenValidLocked(Landroid/os/IInterface;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1029
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    return v0
.end method

.method public isValidEntry(Ljava/lang/String;I)Z
    .registers 3

    .line 1255
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->hasMatchingServices(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3a

    .line 1120
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 1122
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v1, 0x0

    .line 1123
    :goto_13
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1124
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1126
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1128
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1130
    :cond_2f
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_39
    return-object v0

    .line 1121
    :cond_3a
    :goto_3a
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public abstract loadDefaultsFromConfig()V
.end method

.method public final migrateToXml()V
    .registers 7

    .line 582
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 583
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 584
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 587
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 585
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 590
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 593
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 591
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    goto :goto_a

    :cond_59
    return-void
.end method

.method public final newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 18

    .line 335
    new-instance v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)V

    return-object v9
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 1

    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 13

    .line 954
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackagesChanged removingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pkgList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1d

    const/4 v2, 0x0

    goto :goto_21

    .line 955
    :cond_1d
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mEnabledServicesPackageNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz p2, :cond_93

    .line 958
    array-length v0, p2

    if-lez v0, :cond_93

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    if-eqz p3, :cond_58

    .line 962
    array-length p1, p2

    array-length v1, p3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v1, v0

    move v2, v1

    :goto_47
    if-ge v1, p1, :cond_59

    .line 964
    aget-object v2, p2, v1

    .line 965
    aget v3, p3, v1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 966
    invoke-virtual {p0, v3, v2}, Lcom/android/server/notification/ManagedServices;->removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_58
    move v2, v0

    .line 969
    :cond_59
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 970
    :try_start_5c
    array-length v1, p2

    move v3, v0

    :goto_5e
    if-ge v3, v1, :cond_88

    aget-object v4, p2, v3

    .line 971
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6c

    move v2, v6

    :cond_6c
    if-eqz p3, :cond_85

    .line 974
    array-length v5, p3

    if-lez v5, :cond_85

    .line 975
    array-length v5, p3

    move v7, v0

    :goto_73
    if-ge v7, v5, :cond_85

    aget v8, p3, v7

    .line 976
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {p0, v4, v8}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_82

    move v2, v6

    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 982
    :cond_88
    monitor-exit p1
    :try_end_89
    .catchall {:try_start_5c .. :try_end_89} :catchall_90

    if-eqz v2, :cond_93

    const/4 p1, -0x1

    .line 986
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    goto :goto_93

    :catchall_90
    move-exception p0

    .line 982
    :try_start_91
    monitor-exit p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p0

    :cond_93
    :goto_93
    return-void
.end method

.method public abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method public onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    return-void
.end method

.method public onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    .line 446
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    if-nez v0, :cond_a0

    .line 447
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored managed service setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    if-eqz v0, :cond_a0

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    :cond_30
    const/16 v0, 0x1a

    if-ge p3, v0, :cond_62

    .line 454
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object p3, p3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 455
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/notification/ManagedServices;->getApproved(IZ)Ljava/lang/String;

    move-result-object p3

    .line 456
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 457
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_62

    :cond_61
    move-object p2, p3

    .line 464
    :cond_62
    :goto_62
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->shouldReflectToSettings()Z

    move-result p3

    if-eqz p3, :cond_71

    .line 465
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 466
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 465
    invoke-static {p3, p1, p2, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 469
    :cond_71
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 470
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    goto :goto_7b

    .line 472
    :cond_95
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string p2, "Done loading approved values from settings"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 473
    invoke-virtual {p0, p1, p4}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    :cond_a0
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 992
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing approved services for removed user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 994
    :try_start_19
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_28

    const/4 v0, 0x1

    .line 996
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void

    :catchall_28
    move-exception p0

    .line 995
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onUserSwitched(I)V
    .registers 5

    .line 1000
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->unbindOtherUserServices(I)V

    const/4 v0, 0x1

    .line 1002
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 1006
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void
.end method

.method public populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMutex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;",
            "Landroid/util/IntArray;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1297
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1298
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1299
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_58

    .line 1303
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 1304
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-nez v5, :cond_2a

    .line 1306
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_55

    .line 1310
    :cond_2a
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1311
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-interface {v6, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1313
    invoke-virtual {p1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1315
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    move v4, v2

    .line 1317
    :goto_3d
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v4, v6, :cond_55

    .line 1318
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1319
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1322
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 1341
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1342
    iget v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    if-nez p1, :cond_24

    .line 1344
    iget-object v1, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1345
    :cond_24
    iget v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1346
    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1347
    iget-object v1, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1348
    iget p2, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_3c
    return-void
.end method

.method public queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1143
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1144
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1145
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1147
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    or-int/lit16 p1, p2, 0x84

    .line 1149
    invoke-virtual {v1, v2, p1, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 1153
    iget-boolean p2, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz p2, :cond_44

    .line 1154
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " services: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    if-eqz p1, :cond_ab

    const/4 p2, 0x0

    .line 1156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_4b
    if-ge p2, p3, :cond_ab

    .line 1157
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1158
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1160
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 1162
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": it does not require the permission "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 1168
    :cond_a5
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4b

    :cond_ab
    return-object v0
.end method

.method public queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1138
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public readDefaults(Landroid/util/TypedXmlPullParser;)V
    .registers 7

    const-string v0, "defaults"

    .line 600
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ":"

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 604
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 605
    :goto_16
    :try_start_16
    array-length v2, p1

    if-ge v1, v2, :cond_42

    .line 606
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 607
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 609
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 612
    :cond_38
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 616
    :cond_42
    monitor-exit v0

    goto :goto_47

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    :goto_47
    return-void
.end method

.method public readExtraAttributes(Ljava/lang/String;Landroid/util/TypedXmlPullParser;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public readExtraTag(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    return-void
.end method

.method public readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Lcom/android/internal/util/function/TriPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "version"

    .line 628
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ManagedServices;->readDefaults(Landroid/util/TypedXmlPullParser;)V

    const/4 v4, 0x0

    move v5, v4

    .line 631
    :cond_12
    :goto_12
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_110

    .line 632
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    if-ne v6, v9, :cond_2e

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    goto/16 :goto_110

    :cond_2e
    const/4 v9, 0x2

    if-ne v6, v9, :cond_12

    const-string/jumbo v6, "service_listing"

    .line 638
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 639
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v10, v10, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " permissions from xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "approved"

    .line 641
    invoke-static {v1, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz p3, :cond_65

    move/from16 v10, p4

    goto :goto_6c

    :cond_65
    const-string/jumbo v10, "user"

    .line 644
    invoke-interface {v1, v9, v10, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    :goto_6c
    const-string/jumbo v11, "primary"

    .line 646
    invoke-interface {v1, v9, v11, v7}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v11, "user_changed"

    .line 650
    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user_set"

    .line 653
    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "user_set_services"

    .line 656
    invoke-static {v1, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "4"

    .line 661
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, ""

    if-eqz v14, :cond_bf

    if-nez v11, :cond_99

    .line 665
    invoke-static {v13}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_df

    .line 667
    :cond_99
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b2

    move-object v13, v6

    goto :goto_b3

    :cond_b2
    move-object v13, v15

    :goto_b3
    if-eqz p3, :cond_df

    .line 670
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_df

    .line 671
    invoke-virtual {v0, v6}, Lcom/android/server/notification/ManagedServices;->clearApprovedList(Ljava/lang/String;)V

    goto :goto_df

    :cond_bf
    if-nez v13, :cond_de

    if-eqz v12, :cond_db

    .line 679
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 682
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    move-object v13, v6

    goto :goto_df

    :cond_db
    move v5, v7

    move-object v13, v15

    goto :goto_df

    :cond_de
    move v5, v7

    .line 689
    :cond_df
    :goto_df
    invoke-virtual {v0, v8, v1, v10}, Lcom/android/server/notification/ManagedServices;->readExtraAttributes(Ljava/lang/String;Landroid/util/TypedXmlPullParser;I)V

    if-eqz v2, :cond_fc

    .line 691
    invoke-virtual {v0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getRequiredPermission()Ljava/lang/String;

    move-result-object v12

    .line 690
    invoke-interface {v2, v8, v11, v12}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_fc

    .line 692
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 693
    :cond_fc
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    if-eqz v8, :cond_107

    .line 694
    invoke-virtual {v0, v6, v10, v9, v13}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V

    .line 696
    :cond_107
    iput-boolean v7, v0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    goto/16 :goto_12

    .line 699
    :cond_10b
    invoke-virtual {v0, v8, v1}, Lcom/android/server/notification/ManagedServices;->readExtraTag(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)V

    goto/16 :goto_12

    .line 703
    :cond_110
    :goto_110
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_130

    const-string v1, "1"

    .line 704
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    const-string v1, "2"

    .line 705
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    const-string v1, "3"

    .line 706
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    goto :goto_130

    :cond_12f
    move v7, v4

    :cond_130
    :goto_130
    if-eqz v7, :cond_135

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->upgradeDefaultsXmlVersion()V

    :cond_135
    if-eqz v5, :cond_13a

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->upgradeUserSet()V

    :cond_13a
    const/4 v1, -0x1

    .line 714
    invoke-virtual {v0, v4, v1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void
.end method

.method public rebindServices(ZI)V
    .registers 8

    .line 1359
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebindServices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_23
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object p2

    .line 1371
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1372
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1374
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1376
    :try_start_36
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1377
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRemovableConnectedServices()Ljava/util/Set;

    move-result-object v4

    .line 1381
    invoke-virtual {p0, v0, p2, v3}, Lcom/android/server/notification/ManagedServices;->populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V

    .line 1385
    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/android/server/notification/ManagedServices;->populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1387
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4c

    .line 1389
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->unbindFromServices(Landroid/util/SparseArray;)V

    .line 1390
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->bindToServices(Landroid/util/SparseArray;)V

    return-void

    :catchall_4c
    move-exception p0

    .line 1387
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3

    .line 1079
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 1080
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkType(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_16
    return-void

    .line 1081
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public registerService(Landroid/content/ComponentName;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1472
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1473
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    .line 1474
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public registerService(Landroid/content/pm/ServiceInfo;I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1466
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->ensureFilters(Landroid/content/pm/ServiceInfo;I)V

    .line 1467
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;III)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    .line 1691
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 1693
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 5

    .line 1697
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1699
    :try_start_3
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1700
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_16
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 1701
    :try_start_12
    monitor-exit v0

    return-object p1

    :catchall_14
    move-exception p0

    goto :goto_19

    .line 1705
    :catch_16
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_14

    throw p0
.end method

.method public final registerServiceLocked(Landroid/content/ComponentName;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public final registerServiceLocked(Landroid/content/ComponentName;IZ)V
    .registers 15

    const-string v0, " service: "

    const-string v1, "Unable to bind "

    .line 1492
    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1495
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1496
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not registering "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already bound"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1500
    :cond_53
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_60
    if-ltz v3, :cond_ab

    .line 1504
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1505
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    iget v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v6, p2, :cond_a8

    .line 1508
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    disconnecting old "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1510
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v6, :cond_a8

    .line 1511
    iget-object v7, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v5, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    :cond_a8
    add-int/lit8 v3, v3, -0x1

    goto :goto_60

    .line 1516
    :cond_ab
    new-instance v10, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v10, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1519
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget v3, v3, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    const-string v5, "android.intent.extra.client_label"

    invoke-virtual {v10, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1521
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x4000000

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v5, "android.intent.extra.client_intent"

    .line 1523
    invoke-virtual {v10, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 1527
    :try_start_d8
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1528
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1527
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_e6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_e6} :catch_e6

    :catch_e6
    if-eqz v3, :cond_ec

    .line 1533
    iget p1, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v8, p1

    goto :goto_ed

    :cond_ec
    move v8, v4

    :goto_ed
    if-eqz v3, :cond_f2

    .line 1534
    iget p1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_f3

    :cond_f2
    const/4 p1, -0x1

    :goto_f3
    move v9, p1

    .line 1537
    :try_start_f4
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance p1, Lcom/android/server/notification/ManagedServices$1;

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move-object v6, v2

    move v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZII)V

    .line 1612
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getBindFlags()I

    move-result v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1612
    invoke-virtual {p3, v10, p1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_175

    .line 1616
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1617
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Ljava/lang/SecurityException; {:try_start_f4 .. :try_end_150} :catch_151

    return-void

    :catch_151
    move-exception p1

    .line 1622
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1623
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_175
    return-void
.end method

.method public registerSystemService(Landroid/content/ComponentName;I)V
    .registers 5

    .line 1481
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1482
    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 1483
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public registerSystemService(Landroid/os/IInterface;Landroid/content/ComponentName;II)V
    .registers 11

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    const/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 1067
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;III)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_13
    return-void
.end method

.method public final removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 9

    .line 1662
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeServiceImpl service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    .line 1664
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1665
    :try_start_27
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2f
    if-ltz v2, :cond_68

    .line 1667
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1668
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_65

    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_65

    .line 1669
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing active service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    :cond_65
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 1673
    :cond_68
    monitor-exit v1

    return-object v0

    :catchall_6a
    move-exception p0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_27 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public final removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3

    .line 1678
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1679
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-object p1
.end method

.method public final removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z
    .registers 13

    .line 1220
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1221
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 1222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1221
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    .line 1224
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_5f

    .line 1226
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1227
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-ltz v5, :cond_5c

    .line 1229
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1230
    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1231
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1232
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1233
    iget-boolean v7, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v7, :cond_59

    .line 1234
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from approved list; uninstalled"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1241
    :cond_5f
    monitor-exit v0

    return v1

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 263
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 267
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    new-instance v5, Landroid/util/ArraySet;

    .line 271
    invoke-virtual {v0, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 275
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v8, 0x0

    .line 277
    :goto_29
    :try_start_29
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_55

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-lez v9, :cond_55

    .line 278
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 279
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 280
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 281
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 284
    :cond_55
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v8
    :try_end_58
    .catchall {:try_start_29 .. :try_end_58} :catchall_e1

    .line 285
    :try_start_58
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 286
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 285
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    if-eqz v9, :cond_c4

    .line 288
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6c
    if-ge v11, v10, :cond_c5

    .line 290
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    const/4 v14, 0x0

    .line 291
    :goto_75
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-ge v14, v15, :cond_a8

    .line 292
    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 293
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 294
    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 295
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 296
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v0, v15, v2}, Lcom/android/server/notification/ManagedServices;->clearUserSetFlagLocked(Landroid/content/ComponentName;I)Z

    const/4 v7, 0x1

    move v12, v7

    :cond_a5
    add-int/lit8 v14, v14, 0x1

    goto :goto_75

    :cond_a8
    const/4 v7, 0x0

    .line 302
    :goto_a9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_c1

    .line 303
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 304
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_a9

    :cond_c1
    add-int/lit8 v11, v11, 0x1

    goto :goto_6c

    :cond_c4
    const/4 v12, 0x0

    .line 309
    :cond_c5
    monitor-exit v8
    :try_end_c6
    .catchall {:try_start_58 .. :try_end_c6} :catchall_de

    .line 310
    :try_start_c6
    monitor-exit v6
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_e1

    if-eqz v12, :cond_ce

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v0, v2, v1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 313
    :cond_ce
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 314
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_de
    move-exception v0

    .line 309
    :try_start_df
    monitor-exit v8
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v0

    :catchall_e1
    move-exception v0

    .line 310
    monitor-exit v6
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e1

    throw v0
.end method

.method public setComponentState(Landroid/content/ComponentName;IZ)V
    .registers 7

    .line 1089
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_13

    .line 1095
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1097
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1101
    :goto_18
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_24

    const-string v2, "Enabling "

    goto :goto_26

    :cond_24
    const-string v2, "Disabling "

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_71

    .line 1106
    :try_start_41
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_6d

    .line 1107
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_56

    goto :goto_6d

    .line 1110
    :cond_56
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no longer has permission to be bound"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 1108
    :cond_6d
    :goto_6d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_74

    .line 1113
    :cond_71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 1115
    :goto_74
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_41 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 807
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V
    .registers 10

    .line 812
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_c

    const-string v2, " Allowing "

    goto :goto_e

    :cond_c
    const-string v2, "Disallowing "

    .line 813
    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (userSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 816
    :try_start_37
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_53

    .line 818
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 819
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :cond_53
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_6b

    .line 823
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 824
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7a

    if-eqz p4, :cond_77

    .line 830
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 832
    :cond_77
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 835
    :cond_7a
    :goto_7a
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    if-nez p3, :cond_96

    .line 837
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 838
    iget-object p4, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    if-eqz p5, :cond_9c

    .line 841
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 843
    :cond_9c
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 845
    :goto_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_37 .. :try_end_a0} :catchall_a5

    const/4 p1, 0x0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void

    :catchall_a5
    move-exception p0

    .line 845
    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public shouldReflectToSettings()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final trimApprovedListsAccordingToInstalledServices(I)V
    .registers 11

    .line 1194
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1195
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_13

    .line 1197
    monitor-exit v0

    return-void

    :cond_13
    const/4 v2, 0x0

    .line 1199
    :goto_14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 1200
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1201
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_26
    if-ltz v4, :cond_75

    .line 1202
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1203
    invoke-virtual {p0, v5, p1}, Lcom/android/server/notification/ManagedServices;->isValidEntry(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_53

    .line 1204
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1205
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from approved list; no matching services found"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1208
    :cond_53
    iget-boolean v6, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v6, :cond_72

    .line 1209
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keeping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on approved list; matching services found"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1215
    :cond_78
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p0

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public unbindFromServices(Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1418
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1419
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1420
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1421
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1423
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disabling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {p0, v3, v1}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    goto :goto_15

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_52
    return-void
.end method

.method public unbindOtherUserServices(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1398
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagedServices.unbindOtherUserServices_current"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1400
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1402
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1403
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRemovableConnectedServices()Ljava/util/Set;

    move-result-object v3

    .line 1404
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1405
    iget v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v5, p1, :cond_29

    .line 1406
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1407
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 1408
    iget-object v6, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1409
    iget v4, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_29

    .line 1412
    :cond_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_57

    .line 1413
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->unbindFromServices(Landroid/util/SparseArray;)V

    .line 1414
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_57
    move-exception p0

    .line 1412
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .registers 7

    .line 1721
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_29

    :catch_6
    move-exception p1

    .line 1723
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1725
    :goto_29
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter p1

    .line 1726
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1727
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public unregisterService(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1638
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1639
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 1640
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .registers 3

    .line 1058
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 1061
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    return-void
.end method

.method public final unregisterServiceImpl(Landroid/os/IInterface;I)V
    .registers 4

    .line 1713
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1714
    iget-object p2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz p2, :cond_19

    invoke-virtual {p1, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 1715
    iget-object p2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    :cond_19
    return-void
.end method

.method public final unregisterServiceLocked(Landroid/content/ComponentName;I)V
    .registers 7

    .line 1644
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    .line 1646
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1647
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v2, p2, :cond_2c

    .line 1648
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1649
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2c

    .line 1650
    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public upgradeDefaultsXmlVersion()V
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_4a

    .line 722
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    .line 723
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    move v1, v2

    .line 724
    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 725
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 728
    :cond_30
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    if-nez v0, :cond_4a

    .line 729
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages(I)Ljava/util/List;

    move-result-object v0

    .line 730
    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4a

    .line 731
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 736
    :cond_4a
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_5c

    .line 738
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->loadDefaultsFromConfig()V

    :cond_5c
    return-void
.end method

.method public upgradeUserSet()V
    .registers 1

    return-void
.end method

.method public writeDefaults(Landroid/util/TypedXmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 481
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 482
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_29
    const-string p0, ":"

    .line 484
    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "defaults"

    .line 485
    invoke-interface {p1, v1, v2, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public writeExtraAttributes(Landroid/util/TypedXmlSerializer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeExtraXmlTags(Landroid/util/TypedXmlSerializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeXml(Landroid/util/TypedXmlSerializer;ZI)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "version"

    const-string v5, "4"

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v4, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ManagedServices;->writeDefaults(Landroid/util/TypedXmlSerializer;)V

    if-eqz p2, :cond_24

    .line 497
    invoke-virtual {v0, v2}, Lcom/android/server/notification/ManagedServices;->trimApprovedListsAccordingToInstalledServices(I)V

    .line 500
    :cond_24
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 501
    :try_start_27
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v5, :cond_e8

    .line 503
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz p2, :cond_42

    if-eq v8, v2, :cond_42

    goto/16 :goto_e4

    .line 507
    :cond_42
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 508
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v9, :cond_e4

    .line 510
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_5d
    if-ge v12, v11, :cond_e4

    .line 512
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 513
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 514
    iget-object v15, v0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v14, :cond_81

    if-nez v6, :cond_81

    if-eqz v10, :cond_e0

    :cond_81
    if-nez v14, :cond_86

    const-string v14, ""

    goto :goto_8c

    :cond_86
    const-string v15, ":"

    .line 518
    invoke-static {v15, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    :goto_8c
    const-string/jumbo v15, "service_listing"

    .line 519
    invoke-interface {v1, v4, v15}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v15, "approved"

    .line 520
    invoke-interface {v1, v4, v15, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "user"

    .line 521
    invoke-interface {v1, v4, v15, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "primary"

    .line 522
    invoke-interface {v1, v4, v15, v13}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v10, :cond_b0

    const-string/jumbo v6, "user_changed"

    .line 524
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-interface {v1, v4, v6, v15}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_be

    :cond_b0
    if-eqz v6, :cond_be

    const-string v15, ":"

    .line 527
    invoke-static {v15, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v15, "user_set_services"

    .line 528
    invoke-interface {v1, v4, v15, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    :cond_be
    :goto_be
    invoke-virtual {v0, v1, v8}, Lcom/android/server/notification/ManagedServices;->writeExtraAttributes(Landroid/util/TypedXmlSerializer;I)V

    const-string/jumbo v6, "service_listing"

    .line 531
    invoke-interface {v1, v4, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p2, :cond_e0

    if-eqz v13, :cond_e0

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->shouldReflectToSettings()Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 537
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 537
    invoke-static {v6, v13, v14, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_e0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5d

    :cond_e4
    :goto_e4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2e

    .line 547
    :cond_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_27 .. :try_end_e9} :catchall_f6

    .line 549
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ManagedServices;->writeExtraXmlTags(Landroid/util/TypedXmlSerializer;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_f6
    move-exception v0

    .line 547
    :try_start_f7
    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v0
.end method
