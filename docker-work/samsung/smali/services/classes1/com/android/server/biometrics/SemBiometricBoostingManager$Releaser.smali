.class public Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
.super Ljava/lang/Object;
.source "SemBiometricBoostingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricBoostingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Releaser"
.end annotation


# instance fields
.field public final mBiometricType:I

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 42
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method
