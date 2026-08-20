.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;
.super Ljava/lang/Object;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastAuthArgs"
.end annotation


# instance fields
.field public final deviceId:J

.field public final fingerId:I

.field public final groupId:I

.field public final lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

.field public final token:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationConsumer;JIILjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;",
            "JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 170
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->deviceId:J

    .line 171
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->fingerId:I

    .line 172
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->groupId:I

    if-nez p6, :cond_11

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->token:Ljava/util/ArrayList;

    goto :goto_18

    .line 177
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->token:Ljava/util/ArrayList;

    :goto_18
    return-void
.end method
