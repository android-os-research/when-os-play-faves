.class public Landroid/system/suspend/internal/WakeLockInfo;
.super Ljava/lang/Object;
.source "WakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/suspend/internal/WakeLockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeCount:J

.field public blacklist activeTime:J

.field public blacklist eventCount:J

.field public blacklist expireCount:J

.field public blacklist isActive:Z

.field public blacklist isKernelWakelock:Z

.field public blacklist lastChange:J

.field public blacklist maxTime:J

.field public blacklist name:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist preventSuspendTime:J

.field public blacklist totalTime:J

.field public blacklist wakeupCount:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/system/suspend/internal/WakeLockInfo$1;

    invoke-direct {v0}, Landroid/system/suspend/internal/WakeLockInfo$1;-><init>()V

    sput-object v0, Landroid/system/suspend/internal/WakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 37
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    .line 38
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    .line 39
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 41
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 42
    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 44
    iput v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    .line 46
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    .line 47
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    .line 48
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    .line 49
    iput-wide v0, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 87
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_199

    .line 90
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 118
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 118
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 118
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 118
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 118
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 118
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_bc

    move v2, v5

    goto :goto_bd

    :cond_bc
    move v2, v6

    :goto_bd
    iput-boolean v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d5

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cf

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 118
    :cond_cf
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_d5
    :try_start_d5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f1

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_eb

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 118
    :cond_eb
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_f1
    :try_start_f1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f8

    goto :goto_f9

    :cond_f8
    move v5, v6

    :goto_f9
    iput-boolean v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ff
    .catchall {:try_start_f1 .. :try_end_ff} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_111

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10b

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 118
    :cond_10b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_111
    :try_start_111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11b
    .catchall {:try_start_111 .. :try_end_11b} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12d

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_127

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 118
    :cond_127
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_12d
    :try_start_12d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_137
    .catchall {:try_start_12d .. :try_end_137} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_149

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_143

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 118
    :cond_143
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_149
    :try_start_149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_153
    .catchall {:try_start_149 .. :try_end_153} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_165

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_15f

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 118
    :cond_15f
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_165
    :try_start_165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_16f
    .catchall {:try_start_165 .. :try_end_16f} :catchall_197

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_181

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17b

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 118
    :cond_17b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_181
    :try_start_181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J
    :try_end_187
    .catchall {:try_start_181 .. :try_end_187} :catchall_197

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_191

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    nop

    .line 122
    return-void

    .line 118
    :cond_191
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :catchall_197
    move-exception v2

    goto :goto_1a1

    .line 89
    :cond_199
    :try_start_199
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/suspend/internal/WakeLockInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_1a1
    .catchall {:try_start_199 .. :try_end_1a1} :catchall_197

    .line 117
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/suspend/internal/WakeLockInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_1a1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1aa

    .line 118
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_1aa
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 65
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->maxTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-boolean v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-boolean v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->pid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->eventCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->expireCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->preventSuspendTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-wide v1, p0, Landroid/system/suspend/internal/WakeLockInfo;->wakeupCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 80
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void
.end method
