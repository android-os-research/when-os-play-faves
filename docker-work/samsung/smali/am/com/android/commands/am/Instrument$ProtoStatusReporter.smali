.class Lcom/android/commands/am/Instrument$ProtoStatusReporter;
.super Ljava/lang/Object;
.source "Instrument.java"

# interfaces
.implements Lcom/android/commands/am/Instrument$StatusReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Instrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProtoStatusReporter"
.end annotation


# instance fields
.field private mLog:Ljava/io/File;

.field private mTestStartMs:J

.field final synthetic this$0:Lcom/android/commands/am/Instrument;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Instrument;)V
    .registers 8

    .line 228
    iput-object p1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iget-boolean v0, p1, Lcom/android/commands/am/Instrument;->protoFile:Z

    if-eqz v0, :cond_96

    .line 230
    iget-object v0, p1, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    const-string v1, "Unable to create log directory: %s\n"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5c

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "instrument-logs"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .local v0, "logDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_38

    .line 234
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 234
    invoke-virtual {v4, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 236
    iput-boolean v3, p1, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 237
    return-void

    .line 239
    :cond_38
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyyMMdd-hhmmss-SSS"

    invoke-direct {p1, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 240
    .local p1, "format":Ljava/text/SimpleDateFormat;
    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 241
    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 240
    const-string v2, "log-%s.instrumentation_data_proto"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    .line 243
    .end local v0    # "logDir":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local p1    # "format":Ljava/text/SimpleDateFormat;
    goto :goto_89

    .line 244
    :cond_5c
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p1, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 246
    .restart local v0    # "logDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_89

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_89

    .line 247
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v2, v2, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 247
    invoke-virtual {v4, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 249
    iput-boolean v3, p1, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 250
    return-void

    .line 253
    .end local v0    # "logDir":Ljava/io/File;
    :cond_89
    :goto_89
    iget-object p1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 255
    :cond_96
    return-void
.end method

.method private outputProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 350
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    .line 351
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    iget-boolean v1, v1, Lcom/android/commands/am/Instrument;->protoStd:Z

    if-eqz v1, :cond_22

    .line 353
    :try_start_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write([B)V

    .line 354
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_15

    .line 358
    goto :goto_22

    .line 355
    :catch_15
    move-exception v1

    .line 356
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error writing finished response: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 360
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    iget-boolean v1, v1, Lcom/android/commands/am/Instrument;->protoFile:Z

    if-eqz v1, :cond_5e

    .line 361
    const/4 v1, 0x1

    :try_start_29
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_48

    .line 362
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_30
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 363
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3e

    .line 364
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_48

    .line 367
    .end local v2    # "os":Ljava/io/OutputStream;
    goto :goto_5e

    .line 361
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_3e
    move-exception v3

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v4

    :try_start_44
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "out":[B
    .end local p0    # "this":Lcom/android/commands/am/Instrument$ProtoStatusReporter;
    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_47
    throw v3
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    .line 364
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v0    # "out":[B
    .restart local p0    # "this":Lcom/android/commands/am/Instrument$ProtoStatusReporter;
    .restart local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_48
    move-exception v2

    .line 365
    .local v2, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "Cannot write to %s:\n"

    invoke-virtual {v3, v4, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 366
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_5e
    :goto_5e
    return-void
.end method

.method private writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 311
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 313
    .local v0, "bundleToken":J
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/am/Instrument;->-$$Nest$smsorted(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    .local v3, "key":Ljava/lang/String;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->startRepeatedObject(J)J

    move-result-wide v4

    .line 317
    .local v4, "entryToken":J
    const-wide v6, 0x10900000001L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 319
    invoke-virtual {p4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 320
    .local v6, "val":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_42

    .line 321
    const-wide v7, 0x10900000002L

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto/16 :goto_d0

    .line 323
    :cond_42
    instance-of v7, v6, Ljava/lang/Byte;

    const-wide v8, 0x11100000003L

    if-eqz v7, :cond_57

    .line 324
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    .line 325
    invoke-virtual {v7}, Ljava/lang/Byte;->intValue()I

    move-result v7

    .line 324
    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto/16 :goto_d0

    .line 326
    :cond_57
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_6b

    .line 327
    const-wide v7, 0x10100000005L

    move-object v9, v6

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    goto :goto_d0

    .line 328
    :cond_6b
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_7f

    .line 329
    const-wide v7, 0x10200000004L

    move-object v9, v6

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    goto :goto_d0

    .line 330
    :cond_7f
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_8e

    .line 331
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d0

    .line 332
    :cond_8e
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_a2

    .line 333
    const-wide v7, 0x11200000006L

    move-object v9, v6

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_d0

    .line 334
    :cond_a2
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_b1

    .line 335
    move-object v7, v6

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d0

    .line 336
    :cond_b1
    instance-of v7, v6, Landroid/os/Bundle;

    if-eqz v7, :cond_c1

    .line 337
    const-wide v7, 0x10b00000007L

    move-object v9, v6

    check-cast v9, Landroid/os/Bundle;

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V

    goto :goto_d0

    .line 339
    :cond_c1
    instance-of v7, v6, [B

    if-eqz v7, :cond_d0

    .line 340
    const-wide v7, 0x10c00000008L

    move-object v9, v6

    check-cast v9, [B

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 343
    :cond_d0
    :goto_d0
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 344
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "entryToken":J
    .end local v6    # "val":Ljava/lang/Object;
    goto/16 :goto_10

    .line 346
    :cond_d5
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 347
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "errorText"    # Ljava/lang/String;
    .param p2, "commandError"    # Z

    .line 299
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 301
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 302
    .local v1, "sessionStatusToken":J
    const-wide v3, 0x10e00000001L

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 304
    const-wide v3, 0x10900000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 307
    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->outputProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 308
    return-void
.end method

.method public onInstrumentationFinishedLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 285
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 287
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 288
    .local v1, "sessionStatusToken":J
    const-wide v3, 0x10e00000001L

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 290
    const-wide v3, 0x11100000003L

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 291
    const-wide v3, 0x10b00000004L

    invoke-direct {p0, v0, v3, v4, p3}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 294
    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->outputProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 295
    return-void
.end method

.method public onInstrumentationStatusLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 260
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 262
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 264
    .local v1, "testStatusToken":J
    const-wide v3, 0x11100000003L

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 265
    const-wide v3, 0x10b00000004L

    invoke-direct {p0, v0, v3, v4, p3}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V

    .line 267
    const/4 v3, 0x1

    if-ne p2, v3, :cond_28

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    goto :goto_3e

    .line 271
    :cond_28
    iget-wide v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3c

    .line 272
    const-wide v7, 0x10900000005L

    invoke-static {v3, v4}, Lcom/android/commands/am/Instrument;->-$$Nest$smreadLogcat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 274
    :cond_3c
    iput-wide v5, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    .line 277
    :goto_3e
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 279
    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->outputProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 280
    return-void
.end method
