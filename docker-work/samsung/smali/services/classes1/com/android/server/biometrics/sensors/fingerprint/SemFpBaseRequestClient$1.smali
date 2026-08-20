.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$1;
.super Ljava/lang/Object;
.source "SemFpBaseRequestClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    return-void
.end method
