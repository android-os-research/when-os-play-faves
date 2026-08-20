.class public final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidObserverRegistration"
.end annotation


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public final mCutpoint:I

.field public final mLastProcStates:Landroid/util/SparseIntArray;

.field public mMaxDispatchTime:I

.field public final mPkg:Ljava/lang/String;

.field public mSlowDispatchCount:I

.field public final mUid:I

.field public final mWhich:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 453
    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    .line 461
    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
        0x40
    .end array-data

    :array_20
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 5

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 472
    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 473
    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 474
    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    if-ltz p4, :cond_13

    .line 476
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .registers 5

    const-string v0, "    "

    .line 480
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " "

    .line 482
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_32

    const-string p2, " IDLE"

    .line 488
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    :cond_32
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3d

    const-string p2, " ACT"

    .line 491
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    :cond_3d
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_48

    const-string p2, " GONE"

    .line 494
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    :cond_48
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_53

    const-string p2, " CAP"

    .line 497
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    :cond_53
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6d

    const-string p2, " STATE"

    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " (cut="

    .line 501
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ")"

    .line 503
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    :cond_6d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 506
    iget-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_9a

    .line 507
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_79
    if-ge v0, p2, :cond_9a

    const-string v1, "      Last "

    .line 509
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, ": "

    .line 511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_9a
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15

    .line 518
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 519
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 520
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 521
    iget v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    sget-object v9, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v10, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v6, 0x20e00000003L

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 523
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 524
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_62

    .line 525
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v0, :cond_62

    const-wide v4, 0x20b00000005L

    .line 527
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 528
    iget-object v6, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 529
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 528
    invoke-virtual {p1, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 530
    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 531
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 530
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 532
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 535
    :cond_62
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
