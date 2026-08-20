.class public Lcom/android/internal/telephony/SubscriptionController$WatchedInt;
.super Ljava/lang/Object;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatchedInt"
.end annotation


# instance fields
.field private blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->mValue:I

    return-void
.end method


# virtual methods
.method public blacklist get()I
    .registers 1

    .line 297
    iget p0, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->mValue:I

    return p0
.end method

.method public blacklist set(I)V
    .registers 2

    .line 301
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->mValue:I

    return-void
.end method
