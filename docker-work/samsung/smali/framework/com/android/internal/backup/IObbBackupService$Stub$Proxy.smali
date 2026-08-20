.class Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IObbBackupService.java"

# interfaces
.implements Lcom/android/internal/backup/IObbBackupService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IObbBackupService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "token"    # I
    .param p4, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.backup.IObbBackupService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 158
    const-string v0, "com.android.internal.backup.IObbBackupService"

    return-object v0
.end method

.method public greylist-max-o restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 29
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 181
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "com.android.internal.backup.IObbBackupService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_64

    .line 184
    move-wide/from16 v4, p3

    :try_start_16
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_60

    .line 185
    move/from16 v6, p5

    :try_start_1b
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_5c

    .line 186
    move-object/from16 v7, p6

    :try_start_20
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_58

    .line 187
    move-wide/from16 v8, p7

    :try_start_25
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_54

    .line 188
    move-wide/from16 v10, p9

    :try_start_2a
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_50

    .line 189
    move/from16 v12, p11

    :try_start_2f
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_4c

    .line 190
    move-object/from16 v13, p12

    :try_start_34
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_48

    .line 191
    move-object/from16 v14, p0

    :try_start_39
    iget-object v0, v14, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_46

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_46
    move-exception v0

    goto :goto_75

    :catchall_48
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_75

    :catchall_4c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_73

    :catchall_50
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_71

    :catchall_54
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6f

    :catchall_58
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6d

    :catchall_5c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6b

    :catchall_60
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_69

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v4, p3

    :goto_69
    move/from16 v6, p5

    :goto_6b
    move-object/from16 v7, p6

    :goto_6d
    move-wide/from16 v8, p7

    :goto_6f
    move-wide/from16 v10, p9

    :goto_71
    move/from16 v12, p11

    :goto_73
    move-object/from16 v13, p12

    :goto_75
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v0
.end method
