.class public final Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SysUiServiceSession"
.end annotation


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public final mId:I

.field public mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

.field public final mToken:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 71
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mBinder:Landroid/os/IBinder;

    .line 73
    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mBinder:Landroid/os/IBinder;

    .line 78
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
