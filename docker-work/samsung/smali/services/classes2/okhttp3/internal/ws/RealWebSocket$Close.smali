.class public final Lokhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation


# instance fields
.field public final cancelAfterCloseMillis:J

.field public final code:I

.field public final reason:Lokio/ByteString;


# direct methods
.method public constructor <init>(ILokio/ByteString;J)V
    .registers 5

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 593
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;

    .line 594
    iput-wide p3, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method
