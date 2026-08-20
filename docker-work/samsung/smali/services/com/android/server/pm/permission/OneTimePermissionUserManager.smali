.class public Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.super Ljava/lang/Object;
.source "OneTimePermissionUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_KILLED_DELAY_MILLIS:J = 0x1388L

.field public static final LOG_TAG:Ljava/lang/String; = "OneTimePermissionUserManager"

.field public static final PROPERTY_KILLED_DELAY_CONFIG_KEY:Ljava/lang/String; = "one_time_permissions_killed_delay_millis"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public final mUninstallListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionControllerManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/permission/PermissionControllerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mUninstallListener:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 86
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 87
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 88
    new-instance v0, Landroid/permission/PermissionControllerManager;

    .line 89
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public registerUninstallListener()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mUninstallListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startPackageOneTimeSession(Ljava/lang/String;JJ)V
    .registers 19

    move-object v0, p0

    move-object v4, p1

    .line 97
    :try_start_2
    iget-object v1, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_d} :catch_3c

    .line 103
    iget-object v11, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 104
    :try_start_10
    iget-object v1, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    if-eqz v1, :cond_22

    move-wide v5, p2

    move-wide/from16 v7, p4

    .line 106
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateSessionParameters(JJ)V

    .line 107
    monitor-exit v11

    return-void

    :cond_22
    move-wide v5, p2

    move-wide/from16 v7, p4

    .line 109
    new-instance v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, p0

    move v3, v10

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJLcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener-IA;)V

    .line 111
    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    monitor-exit v11

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v11
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_39

    throw v0

    :catch_3c
    move-exception v0

    .line 99
    sget-object v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public stopPackageOneTimeSession(Ljava/lang/String;)V
    .registers 5

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_25

    .line 130
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    if-eqz v1, :cond_20

    .line 133
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 136
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw p0

    :catch_25
    move-exception p0

    .line 126
    sget-object v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
