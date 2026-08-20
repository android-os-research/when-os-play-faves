.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;Landroid/os/IBinder;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

.field public final synthetic val$pkgName:Ljava/lang/String;

.field public final synthetic val$this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$UBzUSqC7VsTsYFezLG1j9YvyrDY(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->lambda$onError$0(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 481
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->val$this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->val$token:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$0(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 489
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .registers 5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    goto :goto_1e

    .line 488
    :cond_a
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->val$token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->val$pkgName:Ljava/lang/String;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method
