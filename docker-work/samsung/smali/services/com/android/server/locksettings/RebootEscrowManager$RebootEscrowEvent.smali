.class public Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebootEscrowEvent"
.end annotation


# static fields
.field public static final CLEARED_LSKF_REQUEST:I = 0x3

.field public static final FOUND_ESCROW_DATA:I = 0x1

.field public static final REQUESTED_LSKF:I = 0x5

.field public static final RETRIEVED_LSKF_FOR_USER:I = 0x7

.field public static final RETRIEVED_STORED_KEK:I = 0x4

.field public static final SET_ARMED_STATUS:I = 0x2

.field public static final STORED_LSKF_FOR_USER:I = 0x6


# instance fields
.field public final mEventId:I

.field public final mTimestamp:J

.field public final mUserId:Ljava/lang/Integer;

.field public final mWallTime:J


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 786
    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .registers 3

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    .line 791
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    return-void
.end method


# virtual methods
.method public getEventDescription()Ljava/lang/String;
    .registers 3

    .line 797
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    packed-switch v0, :pswitch_data_2e

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    const-string p0, "Retrieved LSKF for user"

    return-object p0

    :pswitch_1c
    const-string p0, "Stored LSKF for user"

    return-object p0

    :pswitch_1f
    const-string p0, "Requested LSKF"

    return-object p0

    :pswitch_22
    const-string p0, "Retrieved stored KEK"

    return-object p0

    :pswitch_25
    const-string p0, "Cleared request for LSKF"

    return-object p0

    :pswitch_28
    const-string p0, "Set armed status"

    return-object p0

    :pswitch_2b
    const-string p0, "Found escrow data"

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method
