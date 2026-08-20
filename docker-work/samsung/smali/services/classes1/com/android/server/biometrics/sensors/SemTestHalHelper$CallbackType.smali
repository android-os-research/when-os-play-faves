.class public final enum Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
.super Ljava/lang/Enum;
.source "SemTestHalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/SemTestHalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ENUMERATE:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum REMOVED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public static final enum TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 45
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v1, "ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v5, "ENROLL_RESULT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v7, "AUTHENTICATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v7, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v9, "REMOVED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->REMOVED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v11, "ENUMERATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENUMERATE:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    new-instance v11, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string v13, "TSP_FOD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 44
    sput-object v13, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .registers 2

    .line 44
    const-class v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->$VALUES:[Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v0}, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-object v0
.end method
