.class public Lcom/android/server/location/settings/LocationSettings;
.super Ljava/lang/Object;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;,
        Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;
    }
.end annotation


# static fields
.field public static final LOCATION_DIRNAME:Ljava/lang/String; = "location"

.field public static final LOCATION_SETTINGS_FILENAME:Ljava/lang/String; = "settings"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserSettings:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserSettings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    .line 64
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    .line 65
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public createUserSettingsStore(ILjava/io/File;)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
    .registers 4

    .line 84
    new-instance v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;-><init>(Lcom/android/server/location/settings/LocationSettings;ILjava/io/File;)V

    return-object v0
.end method

.method public final deleteFiles()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 153
    iget-object v3, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/location/settings/SettingsStore;->deleteFile()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 155
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_57

    .line 120
    iget-object p3, p0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_56

    const-string p3, "ADAS Location Setting: "

    .line 121
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 123
    array-length p3, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_46

    .line 124
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 125
    array-length p3, p1

    :goto_27
    if-ge v0, p3, :cond_53

    aget v1, p1, v0

    const-string v2, "[u"

    .line 126
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, "] "

    .line 128
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 132
    :cond_46
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 134
    :cond_53
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_56
    return-void

    :catch_57
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final fireListeners(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 5

    .line 160
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 161
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final flushFiles()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 143
    iget-object v3, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/location/settings/SettingsStore;->flushFile()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 145
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/settings/SettingsStore;->get()Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/settings/LocationUserSettings;

    return-object p0
.end method

.method public getUserSettingsDir(I)Ljava/io/File;
    .registers 2

    .line 80
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    if-nez v1, :cond_2a

    .line 91
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "location"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "settings"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/settings/LocationSettings;->createUserSettingsStore(ILjava/io/File;)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    move-result-object v1

    .line 94
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_2a
    monitor-exit v0

    return-object v1

    :catchall_2c
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateUserSettings(ILjava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Lcom/android/server/location/settings/LocationUserSettings;",
            "Lcom/android/server/location/settings/LocationUserSettings;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->update(Ljava/util/function/Function;)V

    return-void
.end method
