.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
    .registers 1

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 94
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper-IA;)V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
