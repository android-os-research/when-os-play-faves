.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->$r8$lambda$wvAdeTBqz6JvRdxsLgJKl4R_HWI(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V

    return-void
.end method
