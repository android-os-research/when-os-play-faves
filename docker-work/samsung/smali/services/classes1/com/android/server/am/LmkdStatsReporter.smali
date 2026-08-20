.class public final Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "LmkdStatsReporter.java"


# static fields
.field public static final DIRECT_RECL_AND_THRASHING:I = 0x5

.field public static final KILL_OCCURRED_MSG_SIZE:I = 0x50

.field public static final LOW_FILECACHE_AFTER_THRASHING:I = 0x7

.field public static final LOW_MEM_AND_SWAP:I = 0x3

.field public static final LOW_MEM_AND_SWAP_UTIL:I = 0x6

.field public static final LOW_MEM_AND_THRASHING:I = 0x4

.field public static final LOW_SWAP_AND_THRASHING:I = 0x2

.field public static final NOT_RESPONDING:I = 0x1

.field public static final PRESSURE_AFTER_KILL:I = 0x0

.field public static final STATE_CHANGED_MSG_SIZE:I = 0x8

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logKillOccurred(Ljava/io/DataInputStream;)V
    .registers 24

    .line 55
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 56
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 57
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 59
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 61
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 62
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 63
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 64
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 65
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 66
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 67
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 68
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 69
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    const/16 v19, 0x33

    .line 73
    invoke-static {v0}, Lcom/android/server/am/LmkdStatsReporter;->mapKillReason(I)I

    move-result v22

    move/from16 v0, v19

    move/from16 v19, v22

    .line 71
    invoke-static/range {v0 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIII)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    const-string v0, "ActivityManager"

    const-string v1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logStateChanged(I)V
    .registers 2

    const/16 v0, 0x36

    .line 88
    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public static mapKillReason(I)I
    .registers 1

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_a
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
