.class public final Lcom/android/commands/bu/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field static final TAG:Ljava/lang/String; = "bu"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mNextArg:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/app/backup/IBackupManager;)V
    .registers 2
    .param p1, "backupManager"    # Landroid/app/backup/IBackupManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 43
    return-void
.end method

.method private doBackup(II)V
    .registers 29
    .param p1, "socketFd"    # I
    .param p2, "userId"    # I

    .line 84
    const-string v1, "IO error closing output for backup: "

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 85
    .local v2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "saveApks":Z
    const/4 v3, 0x0

    .line 87
    .local v3, "saveObbs":Z
    const/4 v4, 0x0

    .line 88
    .local v4, "saveShared":Z
    const/4 v5, 0x0

    .line 89
    .local v5, "doEverything":Z
    const/4 v6, 0x0

    .line 90
    .local v6, "doWidgets":Z
    const/4 v7, 0x1

    .line 91
    .local v7, "allIncludesSystem":Z
    const/4 v8, 0x1

    .line 92
    .local v8, "doCompress":Z
    const/4 v9, 0x0

    move/from16 v22, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    .line 95
    .end local v0    # "saveApks":Z
    .local v3, "saveApks":Z
    .local v4, "saveObbs":Z
    .local v5, "saveShared":Z
    .local v6, "doEverything":Z
    .local v7, "doWidgets":Z
    .local v8, "allIncludesSystem":Z
    .local v9, "doCompress":Z
    .local v22, "doKeyValue":Z
    :goto_19
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .local v15, "arg":Ljava/lang/String;
    const-string v14, "bu"

    if-eqz v0, :cond_f0

    .line 96
    const-string v0, "-"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 97
    const-string v0, "-apk"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 98
    const/4 v3, 0x1

    goto :goto_19

    .line 99
    :cond_34
    const-string v0, "-noapk"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 100
    const/4 v3, 0x0

    goto :goto_19

    .line 101
    :cond_3e
    const-string v0, "-obb"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 102
    const/4 v4, 0x1

    goto :goto_19

    .line 103
    :cond_48
    const-string v0, "-noobb"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 104
    const/4 v4, 0x0

    goto :goto_19

    .line 105
    :cond_52
    const-string v0, "-shared"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 106
    const/4 v5, 0x1

    goto :goto_19

    .line 107
    :cond_5c
    const-string v0, "-noshared"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 108
    const/4 v5, 0x0

    goto :goto_19

    .line 109
    :cond_66
    const-string v0, "-system"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 110
    const/4 v8, 0x1

    goto :goto_19

    .line 111
    :cond_70
    const-string v0, "-nosystem"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 112
    const/4 v8, 0x0

    goto :goto_19

    .line 113
    :cond_7a
    const-string v0, "-widgets"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 114
    const/4 v7, 0x1

    goto :goto_19

    .line 115
    :cond_84
    const-string v0, "-nowidgets"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 116
    const/4 v7, 0x0

    goto :goto_19

    .line 117
    :cond_8e
    const-string v0, "-all"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 118
    const/4 v6, 0x1

    goto :goto_19

    .line 119
    :cond_98
    const-string v0, "-compress"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 120
    const/4 v9, 0x1

    goto/16 :goto_19

    .line 121
    :cond_a3
    const-string v0, "-nocompress"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 122
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 123
    :cond_ae
    const-string v0, "-keyvalue"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 124
    const/16 v22, 0x1

    goto/16 :goto_19

    .line 125
    :cond_ba
    const-string v0, "-nokeyvalue"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 126
    const/16 v22, 0x0

    goto/16 :goto_19

    .line 127
    :cond_c6
    const-string v0, "-user"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    .line 130
    goto/16 :goto_19

    .line 132
    :cond_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown backup flag "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto/16 :goto_19

    .line 137
    :cond_eb
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 141
    :cond_f0
    if-eqz v6, :cond_fd

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_fd

    .line 142
    const-string v0, "-all passed for backup along with specific package names"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_fd
    if-nez v6, :cond_10d

    if-nez v5, :cond_10d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10d

    .line 146
    const-string v0, "no backup packages supplied and neither -shared nor -all given"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_10d
    const/4 v10, 0x0

    .line 152
    .local v10, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_10e
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_112} :catch_187
    .catchall {:try_start_10e .. :try_end_112} :catchall_17f

    move-object/from16 v23, v0

    .line 153
    .end local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v23, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 154
    .local v0, "packArray":[Ljava/lang/String;
    move-object/from16 v13, p0

    iget-object v10, v13, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 155
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v21, v11

    check-cast v21, [Ljava/lang/String;
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_126} :catch_176
    .catchall {:try_start_114 .. :try_end_126} :catchall_16c

    .line 154
    move/from16 v11, p2

    move-object/from16 v12, v23

    move v13, v3

    move-object/from16 v24, v2

    move-object v2, v14

    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v14, v4

    move-object/from16 v25, v15

    .end local v15    # "arg":Ljava/lang/String;
    .local v25, "arg":Ljava/lang/String;
    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v22

    :try_start_13c
    invoke-interface/range {v10 .. v21}, Landroid/app/backup/IBackupManager;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_13f} :catch_168
    .catchall {:try_start_13c .. :try_end_13f} :catchall_162

    .line 159
    .end local v0    # "packArray":[Ljava/lang/String;
    if-eqz v23, :cond_1b7

    .line 161
    :try_start_141
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_146

    .line 164
    :goto_144
    goto/16 :goto_1b7

    .line 162
    :catch_146
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 163
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_144

    .line 159
    :catchall_162
    move-exception v0

    move-object v11, v0

    move-object/from16 v10, v23

    goto/16 :goto_1ba

    .line 156
    :catch_168
    move-exception v0

    move-object/from16 v10, v23

    goto :goto_18d

    .line 159
    .end local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "arg":Ljava/lang/String;
    .restart local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "arg":Ljava/lang/String;
    :catchall_16c
    move-exception v0

    move-object/from16 v24, v2

    move-object v2, v14

    move-object/from16 v25, v15

    move-object v11, v0

    move-object/from16 v10, v23

    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "arg":Ljava/lang/String;
    .restart local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "arg":Ljava/lang/String;
    goto :goto_1ba

    .line 156
    .end local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "arg":Ljava/lang/String;
    .restart local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "arg":Ljava/lang/String;
    :catch_176
    move-exception v0

    move-object/from16 v24, v2

    move-object v2, v14

    move-object/from16 v25, v15

    move-object/from16 v10, v23

    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "arg":Ljava/lang/String;
    .restart local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "arg":Ljava/lang/String;
    goto :goto_18d

    .line 159
    .end local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "arg":Ljava/lang/String;
    .restart local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "arg":Ljava/lang/String;
    :catchall_17f
    move-exception v0

    move-object/from16 v24, v2

    move-object v2, v14

    move-object/from16 v25, v15

    move-object v11, v0

    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "arg":Ljava/lang/String;
    .restart local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "arg":Ljava/lang/String;
    goto :goto_1ba

    .line 156
    .end local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "arg":Ljava/lang/String;
    .restart local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "arg":Ljava/lang/String;
    :catch_187
    move-exception v0

    move-object/from16 v24, v2

    move-object v2, v14

    move-object/from16 v25, v15

    .line 157
    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "arg":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v24    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "arg":Ljava/lang/String;
    :goto_18d
    :try_start_18d
    const-string v11, "Unable to invoke backup manager for backup"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catchall {:try_start_18d .. :try_end_192} :catchall_1b8

    .line 159
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v10, :cond_1b5

    .line 161
    :try_start_195
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_199

    .line 164
    :goto_198
    goto :goto_1b5

    .line 162
    :catch_199
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 163
    .local v0, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_198

    .line 167
    :cond_1b5
    :goto_1b5
    move-object/from16 v23, v10

    .end local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1b7
    :goto_1b7
    return-void

    .line 159
    .end local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1b8
    move-exception v0

    move-object v11, v0

    :goto_1ba
    if-eqz v10, :cond_1db

    .line 161
    :try_start_1bc
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1c0

    .line 164
    goto :goto_1db

    .line 162
    :catch_1c0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 163
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1db
    :goto_1db
    throw v11
.end method

.method private doRestore(II)V
    .registers 7
    .param p1, "socketFd"    # I
    .param p2, "userId"    # I

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 174
    iget-object v1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p2, v0}, Landroid/app/backup/IBackupManager;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_15
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    .line 178
    if-eqz v0, :cond_24

    .line 180
    :try_start_d
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 181
    :goto_10
    goto :goto_24

    :catch_11
    move-exception v1

    goto :goto_10

    .line 178
    :catchall_13
    move-exception v1

    goto :goto_25

    .line 175
    :catch_15
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v2, "bu"

    const-string v3, "Unable to invoke backup manager for restore"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 178
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_24

    .line 180
    :try_start_20
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_11

    goto :goto_10

    .line 184
    :cond_24
    :goto_24
    return-void

    .line 178
    :goto_25
    if-eqz v0, :cond_2d

    .line 180
    :try_start_27
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 181
    :goto_2a
    goto :goto_2d

    :catch_2b
    move-exception v2

    goto :goto_2a

    .line 183
    :cond_2d
    :goto_2d
    throw v1
.end method

.method private isBackupActiveForUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 199
    :catch_7
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access BackupManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bu"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 51
    const-string v0, "bu"

    :try_start_2
    new-instance v1, Lcom/android/commands/bu/Backup;

    invoke-direct {v1}, Lcom/android/commands/bu/Backup;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/bu/Backup;->run([Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 54
    goto :goto_11

    .line 52
    :catch_b
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error running backup/restore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_11
    const-string v1, "Finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .line 223
    iget v0, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_9

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_9
    aget-object v1, v1, v0

    .line 227
    .local v1, "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    .line 228
    return-object v1
.end method

.method private parseUserId()I
    .registers 4

    .line 187
    const/4 v0, 0x0

    .local v0, "argNumber":I
    :goto_1
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_20

    .line 188
    aget-object v1, v1, v0

    const-string v2, "-user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 189
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 187
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v0    # "argNumber":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private static showUsage()V
    .registers 3

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " backup [-user USER_ID] [-f FILE] [-apk|-noapk] [-obb|-noobb] [-shared|-noshared]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "        [-all] [-system|-nosystem] [-keyvalue|-nokeyvalue] [PACKAGE...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "     write an archive of the device\'s data to FILE [default=backup.adb]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "     package list optional if -all/-shared are supplied"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "     -user: user ID for which to perform the operation (default - system user)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -apk/-noapk: do/don\'t back up .apk files (default -noapk)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -obb/-noobb: do/don\'t back up .obb files (default -noobb)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -shared|-noshared: do/don\'t back up shared storage (default -noshared)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -all: back up all installed applications"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -system|-nosystem: include system apps in -all (default -system)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -keyvalue|-nokeyvalue: include apps that perform key/value backups."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         (default -nokeyvalue)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " restore [-user USER_ID] FILE       restore device contents from FILE"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v1, "bu"

    if-nez v0, :cond_c

    .line 60
    const-string v0, "Can\'t obtain Backup Manager binder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sput-object p1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->parseUserId()I

    move-result v0

    .line 68
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/commands/bu/Backup;->isBackupActiveForUser(I)Z

    move-result v2

    if-nez v2, :cond_48

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupManager is not available for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_48
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "backup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 75
    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-direct {p0, v2, v0}, Lcom/android/commands/bu/Backup;->doBackup(II)V

    goto :goto_6b

    .line 76
    :cond_5a
    const-string v2, "restore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 77
    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-direct {p0, v2, v0}, Lcom/android/commands/bu/Backup;->doRestore(II)V

    goto :goto_6b

    .line 79
    :cond_68
    invoke-static {}, Lcom/android/commands/bu/Backup;->showUsage()V

    .line 81
    :goto_6b
    return-void
.end method
