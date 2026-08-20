.class public Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "UsbSettingsManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingsByProfileGroup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsByProfileGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsByUser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usb/UsbUserSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field public mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

.field public final mUsbService:Lcom/android/server/usb/UsbService;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 60
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbService:Lcom/android/server/usb/UsbService;

    const-string/jumbo p2, "user"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 63
    new-instance p2, Lcom/android/server/usb/UsbHandlerManager;

    invoke-direct {p2, p1}, Lcom/android/server/usb/UsbHandlerManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 13

    .line 144
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 146
    iget-object p4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter p4

    .line 147
    :try_start_7
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_2f

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "user_settings"

    const-wide v6, 0x20b00000001L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbUserSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 153
    :cond_2f
    monitor-exit p4
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_59

    .line 155
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    monitor-enter v0

    .line 156
    :try_start_33
    iget-object p4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p4

    :goto_39
    if-ge v2, p4, :cond_51

    .line 158
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    const-string/jumbo v3, "profile_group_settings"

    const-wide v4, 0x20b00000002L

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 161
    :cond_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_56

    .line 163
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_56
    move-exception p0

    .line 161
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0

    :catchall_59
    move-exception p0

    .line 153
    :try_start_5a
    monitor-exit p4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 96
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 101
    :cond_10
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    monitor-enter v0

    .line 102
    :try_start_13
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 103
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    if-nez v1, :cond_33

    .line 105
    new-instance v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    invoke-direct {v1, v2, p1, p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbHandlerManager;)V

    .line 107
    iget-object p0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    :cond_33
    monitor-exit v0

    return-object v1

    :catchall_35
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUserSettingsManager;

    if-nez v1, :cond_1d

    .line 77
    new-instance v1, Lcom/android/server/usb/UsbUserSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/usb/UsbUserSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    :cond_1d
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public remove(Landroid/os/UserHandle;)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_51

    .line 123
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    monitor-enter v1

    .line 124
    :try_start_10
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_35

    .line 127
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->unregisterReceivers()V

    .line 128
    iget-object p0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4c

    .line 132
    :cond_35
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v0, :cond_4c

    .line 134
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeUser(Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 137
    :cond_4c
    :goto_4c
    monitor-exit v1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_4e

    throw p0

    :catchall_51
    move-exception p0

    .line 121
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method
