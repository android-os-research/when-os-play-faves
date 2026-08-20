.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemService$TargetUser;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemService$TargetUser;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->$r8$lambda$NGY_MnfTVzY18kbIOd-p0qOUCt4(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
