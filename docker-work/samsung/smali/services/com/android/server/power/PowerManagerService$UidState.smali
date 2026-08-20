.class public final Lcom/android/server/power/PowerManagerService$UidState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidState"
.end annotation


# instance fields
.field public mActive:Z

.field public mNumWakeLocks:I

.field public mProcState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8803
    iput p1, p0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    return-void
.end method
