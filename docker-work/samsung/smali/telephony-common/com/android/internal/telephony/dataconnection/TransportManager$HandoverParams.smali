.class public final Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandoverParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;
    }
.end annotation


# instance fields
.field public final blacklist apnType:I

.field public final blacklist callback:Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;

.field public final blacklist isHandoverEnabled:Z

.field public final blacklist targetTransport:I


# direct methods
.method public constructor blacklist <init>(IILcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->apnType:I

    .line 150
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->targetTransport:I

    .line 151
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->callback:Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;

    .line 153
    iput-boolean p4, p0, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->isHandoverEnabled:Z

    return-void
.end method
