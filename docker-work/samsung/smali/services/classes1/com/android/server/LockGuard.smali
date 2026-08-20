.class public Lcom/android/server/LockGuard;
.super Ljava/lang/Object;
.source "LockGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockGuard$LockInfo;
    }
.end annotation


# static fields
.field public static final INDEX_ACTIVITY:I = 0x7

.field public static final INDEX_APP_OPS:I = 0x0

.field public static final INDEX_DPMS:I = 0x8

.field public static final INDEX_EDMS:I = 0x9

.field public static final INDEX_PACKAGES:I = 0x3

.field public static final INDEX_POWER:I = 0x1

.field public static final INDEX_PROC:I = 0x6

.field public static final INDEX_STORAGE:I = 0x4

.field public static final INDEX_USER:I = 0x2

.field public static final INDEX_WINDOW:I = 0x5

.field public static final TAG:Ljava/lang/String; = "LockGuard"

.field public static sKnown:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LockGuard$LockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sKnownFixed:[Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$f5k-HvMfh78ZfmB_A1qoi_mgrDg(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/LockGuard;->lambda$doLog$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    sput-object v0, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/ArrayMap;-><init>(IZ)V

    sput-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doLog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 173
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/LockGuard$LockInfo;->doWtf:Z

    if-eqz p0, :cond_1d

    .line 178
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/LockGuard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/LockGuard$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 182
    :cond_1d
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "LockGuard"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 p0, 0x0

    move p2, p0

    .line 250
    :goto_2
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_65

    .line 251
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockGuard$LockInfo;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, p0

    .line 254
    :goto_36
    iget-object v2, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_5f

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 257
    :cond_5f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_65
    return-void
.end method

.method public static findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;
    .registers 5

    .line 103
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    if-nez v0, :cond_4d

    .line 105
    new-instance v0, Lcom/android/server/LockGuard$LockInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockGuard$LockInfo;-><init>(Lcom/android/server/LockGuard$LockInfo-IA;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 107
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 108
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    return-object v0
.end method

.method public static guard(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    if-eqz p0, :cond_8b

    .line 120
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8b

    .line 124
    :cond_a
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 125
    :goto_11
    iget-object v4, v0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_60

    .line 126
    iget-object v4, v0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_5d

    .line 129
    :cond_22
    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling thread "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is holding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v4}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while trying to acquire "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {p0, v3}, Lcom/android/server/LockGuard;->doLog(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_60
    if-nez v3, :cond_8b

    .line 140
    :goto_62
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_8b

    .line 141
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_88

    if-ne v0, p0, :cond_75

    goto :goto_88

    .line 144
    :cond_75
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 145
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    iget-object v0, v0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_88
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_8b
    :goto_8b
    return-object p0
.end method

.method public static guard(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_4a

    .line 159
    sget-object v1, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_47

    .line 160
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 164
    sget-object v1, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    aget-object v1, v1, p0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " while trying to acquire "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Lcom/android/server/LockGuard;->doLog(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4a
    return-void
.end method

.method public static installLock(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 198
    invoke-static {p0, p1, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static installLock(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .registers 5

    .line 205
    sget-object v0, Lcom/android/server/LockGuard;->sKnownFixed:[Ljava/lang/Object;

    aput-object p0, v0, p1

    .line 206
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    .line 207
    iput-boolean p2, v0, Lcom/android/server/LockGuard$LockInfo;->doWtf:Z

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/LockGuard;->lockToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static installLock(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 189
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    .line 190
    iput-object p1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static installNewLock(I)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    .line 213
    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static installNewLock(IZ)Ljava/lang/Object;
    .registers 3

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-static {v0, p0, p1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;IZ)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic lambda$doLog$0(Ljava/lang/Throwable;)V
    .registers 2

    const-string v0, "LockGuard"

    .line 179
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static lockToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_26

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "EDMS"

    return-object p0

    :pswitch_b
    const-string p0, "DPMS"

    return-object p0

    :pswitch_e
    const-string p0, "ACTIVITY"

    return-object p0

    :pswitch_11
    const-string p0, "PROCESS"

    return-object p0

    :pswitch_14
    const-string p0, "WINDOW"

    return-object p0

    :pswitch_17
    const-string p0, "STORAGE"

    return-object p0

    :pswitch_1a
    const-string p0, "PACKAGES"

    return-object p0

    :pswitch_1d
    const-string p0, "USER"

    return-object p0

    :pswitch_20
    const-string p0, "POWER"

    return-object p0

    :pswitch_23
    const-string p0, "APP_OPS"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static lockToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 223
    sget-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    if-eqz v0, :cond_15

    .line 224
    iget-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 225
    iget-object p0, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    return-object p0

    .line 227
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
