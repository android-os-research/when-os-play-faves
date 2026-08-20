.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialState"
.end annotation


# instance fields
.field public final mPackageSequence:I

.field public final mStateSequence:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mPackageSequence:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mStateSequence:J

    return-wide v0
.end method

.method public constructor <init>(IJ)V
    .registers 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mPackageSequence:I

    .line 119
    iput-wide p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mStateSequence:J

    return-void
.end method
