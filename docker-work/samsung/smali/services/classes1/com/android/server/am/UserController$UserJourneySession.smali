.class public Lcom/android/server/am/UserController$UserJourneySession;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserJourneySession"
.end annotation


# instance fields
.field public final mJourney:I
    .annotation build Lcom/android/server/am/UserController$UserJourney;
    .end annotation
.end field

.field public final mSessionId:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4
    .param p3    # I
        .annotation build Lcom/android/server/am/UserController$UserJourney;
        .end annotation
    .end param

    .line 3608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3609
    iput p3, p0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    .line 3610
    iput-wide p1, p0, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    return-void
.end method
