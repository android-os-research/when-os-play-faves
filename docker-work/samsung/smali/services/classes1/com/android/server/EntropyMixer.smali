.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field public static final DEVICE_SPECIFIC_INFO_HEADER:Ljava/lang/String; = "Copyright (C) 2009 The Android Open Source Project\nAll Your Randomness Are Belong To Us\n"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SEED_FILE_SIZE:I = 0x200
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SEED_UPDATE_PERIOD:I = 0xa4cb80

.field public static final START_NANOTIME:J

.field public static final START_TIME:J

.field public static final TAG:Ljava/lang/String; = "EntropyMixer"

.field public static final UPDATE_SEED_MSG:I = 0x1


# instance fields
.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public final randomReadDevice:Ljava/io/File;

.field public final randomWriteDevice:Ljava/io/File;

.field public final seedFile:Landroid/util/AtomicFile;


# direct methods
.method public static bridge synthetic -$$Nest$mscheduleSeedUpdater(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->scheduleSeedUpdater()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSeedFile(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "entropy.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/urandom"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    new-instance v0, Lcom/android/server/EntropyMixer$1;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v1, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v2, Landroid/util/AtomicFile;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-direct {v2, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 116
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    .line 117
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    .line 119
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->scheduleSeedUpdater()V

    .line 122
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 123
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.REBOOT"

    .line 124
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 125
    invoke-virtual {p1, v1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getSystemDir()Ljava/io/File;
    .registers 3

    .line 271
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v1
.end method

.method public static longToBytes(J)[B
    .registers 3

    const/16 v0, 0x8

    .line 232
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDeviceSpecificInformation()[B
    .registers 4

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Copyright (C) 2009 The Android Open Source Project\nAll Your Randomness Are Belong To Us\n"

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    sget-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    sget-wide v1, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.serialno"

    .line 256
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.bootmode"

    .line 257
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.baseband"

    .line 258
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.carrier"

    .line 259
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.bootloader"

    .line 260
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.hardware"

    .line 261
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.revision"

    .line 262
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.build.fingerprint"

    .line 263
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final loadInitialEntropy()V
    .registers 5

    const-string v0, "EntropyMixer"

    .line 139
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->readSeedFile()[B

    move-result-object v1

    .line 140
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 141
    :try_start_d
    array-length v3, v1

    if-eqz v3, :cond_18

    .line 142
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    const-string v1, "Loaded existing seed file"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->getDeviceSpecificInformation()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 146
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    goto :goto_44

    :catchall_23
    move-exception v1

    .line 140
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v2

    :try_start_29
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw v1
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return-void
.end method

.method public final readSeedFile()[B
    .registers 5

    const/4 v0, 0x0

    .line 153
    :try_start_1
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_7} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception v1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "EntropyMixer"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p0, v0, [B

    return-object p0

    :catch_28
    new-array p0, v0, [B

    return-object p0
.end method

.method public final scheduleSeedUpdater()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object p0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final updateSeedFile()V
    .registers 8

    const-string v0, "EntropyMixer"

    .line 177
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->readSeedFile()[B

    move-result-object v1

    const/16 v2, 0x200

    new-array v3, v2, [B

    .line 180
    :try_start_a
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_2e

    .line 181
    :try_start_11
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_24

    if-ne v5, v2, :cond_1b

    .line 184
    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_2e

    goto :goto_4a

    .line 182
    :cond_1b
    :try_start_1b
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "unexpected EOF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v5

    .line 180
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v4

    :try_start_2a
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v5
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v4

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; seed file won\'t be properly updated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    :try_start_4a
    const-string v4, "SHA-256"

    .line 195
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_50
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_50} :catch_a3

    const-string v5, "Android EntropyMixer v1"

    .line 201
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 204
    array-length v5, v1

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 205
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->update([B)V

    int-to-long v5, v2

    .line 206
    invoke-static {v5, v6}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 207
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 208
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 209
    array-length v6, v4

    sub-int/2addr v2, v6

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/server/EntropyMixer;->writeNewSeed([B)V

    .line 212
    array-length p0, v1

    if-nez p0, :cond_9d

    const-string p0, "Created seed file"

    .line 213
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_9d
    const-string p0, "Updated seed file"

    .line 215
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    return-void

    :catch_a3
    move-exception p0

    const-string v1, "SHA-256 algorithm not found; seed file won\'t be updated"

    .line 197
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final writeNewSeed([B)V
    .registers 5

    const/4 v0, 0x0

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 224
    iget-object p1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_32

    :catch_10
    move-exception p1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EntropyMixer"

    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iget-object p0, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_32
    return-void
.end method
