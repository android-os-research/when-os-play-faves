.class public Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDisconnectRequestedInfo"
.end annotation


# instance fields
.field public final reason:Ljava/lang/String;

.field public final shouldQuit:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    .line 416
    iput-boolean p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 426
    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 430
    :cond_6
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 431
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    iget-boolean p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    if-ne p0, p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
