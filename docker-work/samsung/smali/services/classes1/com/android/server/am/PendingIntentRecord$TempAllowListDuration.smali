.class public final Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TempAllowListDuration"
.end annotation


# instance fields
.field public duration:J

.field public reason:Ljava/lang/String;

.field public reasonCode:I

.field public type:I


# direct methods
.method public constructor <init>(JIILjava/lang/String;)V
    .registers 6

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    .line 253
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 254
    iput p4, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 255
    iput-object p5, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    return-void
.end method
